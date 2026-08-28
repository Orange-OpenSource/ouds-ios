//
// Software Name: OUDS iOS
// SPDX-FileCopyrightText: Copyright (c) Orange SA
// SPDX-License-Identifier: MIT
//
// This software is distributed under the MIT license,
// the text of which is available at https://opensource.org/license/MIT/
// or see the "LICENSE" file for more details.
//
// Authors: See CONTRIBUTORS.txt
// Software description: A SwiftUI components library with code examples for Orange Unified Design System
//

import Foundation
import OUDSFoundations
import SwiftUI

/// Defines a cache, in memory and on disk, to store `AsyncImage` content.
/// Backs the ``OUDSAsyncImage`` View.
///
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public final class OUDSAsyncImageCache: @unchecked Sendable {

    // MARK: - Settings

    enum Settings {
        static let maxMemoryCost = 100 * 1_024 * 1_024 // 100 MB
        static let maxMemoryCount = 100
        static let maxDiskSize = 500 * 1_024 * 1_024 // 500 MB
        static let diskCacheFolderName = "OUDS-Cache-AsyncImage"
    }

    // MARK: - Properties

    private let memoryCache: NSCache<NSURL, NSData>
    private let diskCacheURL: URL
    private let fileManager: FileManager
    private let diskQueue = DispatchQueue(label: "com.orange.ouds.cache.asyncimagec.disk", qos: .utility)

    private init() {
        memoryCache = NSCache<NSURL, NSData>()
        memoryCache.totalCostLimit = Settings.maxMemoryCost
        memoryCache.countLimit = Settings.maxMemoryCount

        fileManager = FileManager.default
        guard let cacheDir = fileManager.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            diskCacheURL = URL(fileURLWithPath: "/tmp/\(Settings.diskCacheFolderName)")
            return
        }
        diskCacheURL = cacheDir.appendingPathComponent(Settings.diskCacheFolderName)

        try? fileManager.createDirectory(at: diskCacheURL, withIntermediateDirectories: true)
    }

    deinit {
        clearCache()
    }

    // MARK: - Singleton

    /// The singleton to to access the shared cache
    public static let shared = OUDSAsyncImageCache()

    // MARK: - Service

    /// For the given `URL` object, returns the cached `Data` or nil if nothing cached/
    /// Looks first in the memoery cached, ptherwise looks in the disk and upd,ates the memory cache the.
    ///
    /// - Parameter url: The URL used in the`AsyncImage` for which something can be cached
    /// - Returns Data?: The cached data or `nil` if nothing cached
    public func data(for url: URL) -> Data? {
        let nsURL = url as NSURL

        if let cachedData = memoryCache.object(forKey: nsURL) {
            return cachedData as Data
        }

        if let diskData = loadFromDisk(url: url) {
            memoryCache.setObject(diskData as NSData, forKey: nsURL, cost: diskData.count)
            return diskData
        }

        return nil
    }

    /// Defines the `Data` to cache for the given `URL`.
    /// Updates the memory layer, then the disk.
    ///
    /// - Parameters:
    ///    - data: The `Data` to cache
    ///    - url: The `URL` associated to the resource to cache
    public func setData(_ data: Data, for url: URL) {
        let nsURL = url as NSURL

        memoryCache.setObject(data as NSData, forKey: nsURL, cost: data.count)

        diskQueue.async { [weak self] in
            self?.saveToDisk(data: data, url: url)
        }
    }

    /// Loads the content of the resource at `URL`, caches the result and returns it.
    ///
    /// - Parameter url: The resource to query and cache
    /// - Returns Data?: The content of the URL or `nil` if HTTP error occurs.
    public func loadData(from url: URL) async -> Data? {
        if let cached = data(for: url) {
            return cached
        }

        do {
            let (data, response) = try await URLSession.shared.data(from: url)

            guard let httpResponse = response as? HTTPURLResponse,
                  (200 ... 299).contains(httpResponse.statusCode)
            else {
                return nil
            }

            setData(data, for: url)
            return data
        } catch {
            return nil
        }
    }

    /// Removes all cached data from disk and memory.
    public func clearCache() {
        clearMemoryCache()
        clearDiskCache()
    }

    /// Clears the memory cache
    public func clearMemoryCache() {
        memoryCache.removeAllObjects()
    }

    /// Clears the disk cache
    public func clearDiskCache() {
        diskQueue.async { [weak self] in
            guard let self else { return }
            try? fileManager.removeItem(at: diskCacheURL)
            try? fileManager.createDirectory(at: diskCacheURL, withIntermediateDirectories: true)
        }
        URLCache.shared.removeAllCachedResponses()
    }

    /// Loads the `Data` from the disk for the resource specified by the given `URL`.
    ///
    /// - Parameter url: The resource to look fork
    /// - Returns Data?: The cached data or `nil` if nothing cached
    private func loadFromDisk(url: URL) -> Data? {
        let fileURL = diskCacheURL.appendingPathComponent(url.absoluteString.hashValue.description)

        guard fileManager.fileExists(atPath: fileURL.path),
              let data = try? Data(contentsOf: fileURL)
        else {
            return nil
        }

        return data
    }

    /// Saves on disk for the given `URL` the `Data`
    ///
    /// - Parameters:
    ///    - data: The `Data` to cache on disk
    ///    - url: The `URL` of the resource to cache
    private func saveToDisk(data: Data, url: URL) {
        let fileURL = diskCacheURL.appendingPathComponent(url.absoluteString.hashValue.description)

        do {
            try data.write(to: fileURL)
            cleanupDiskCacheIfNeeded()
        } catch {
            OL.warning("Failed to save data to disk for \(fileURL): \(error)")
        }
    }

    /// If total used size exceeds the maw disk size allwoed, removes older files from disk
    private func cleanupDiskCacheIfNeeded() {
        guard let files = try? fileManager.contentsOfDirectory(at: diskCacheURL,
                                                               includingPropertiesForKeys: [.fileSizeKey, .contentModificationDateKey])
        else {
            return
        }

        var totalSize = 0
        var fileInfos: [(url: URL, size: Int, date: Date)] = []

        for file in files {
            guard let resourceValues = try? file.resourceValues(forKeys: [.fileSizeKey, .contentModificationDateKey]),
                  let size = resourceValues.fileSize,
                  let date = resourceValues.contentModificationDate
            else {
                continue
            }
            totalSize += size
            fileInfos.append((file, size, date))
        }

        guard totalSize > Settings.maxDiskSize else { return }

        fileInfos.sort { $0.date < $1.date }

        for fileInfo in fileInfos {
            guard totalSize > Settings.maxDiskSize else { break }
            try? fileManager.removeItem(at: fileInfo.url)
            totalSize -= fileInfo.size
        }
    }
}
