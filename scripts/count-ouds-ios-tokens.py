#!/usr/bin/env python3
# SPDX-FileCopyrightText: Copyright (c) Orange SA
# SPDX-License-Identifier: MIT

import os

def count_pattern_in_file(file_path, pattern):
    """
    Counts the number of instances for each pattern in a file.

    Args:
        file_path (str): Path to the file to process.
        pattern (str): Pattern to look for.

    Returns:
        int: Number of instances of the pattern in the file.
    """
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            content = file.read()
            return content.count(pattern)
    except Exception as e:
        print(f"Error: Error while reading the file '{file_path}': '{e}'")
        return 0

def count_patterns_in_directory(directory, pattern):
    """
    Counts the number of instances of pattern in all files of given directory.

    Args:
        directory (str): Path of directory to process.
        pattern (str): The apttern to look for.

    Returns:
        dict: Dictionnary with paths of files as keys and instances numbers as values.
    """    
    results = {}
    if os.path.isdir(directory):
        for root, _, files in os.walk(directory):
            for file in files:
                if file.endswith('.swift'):
                    file_path = os.path.join(root, file)
                    count = count_pattern_in_file(file_path, pattern)
                    results[file] = count
    else:
        print(f"Error: The directory '{directory}' does not exist")
    return results

# ------------ Main ------------
if __name__ == "__main__":
    # Update references to directories of course
    # Do not forget to `chmod u+x` the file
    # And define the path to the ouds-ios repository
    project_root = "../OUDS/Core/"

    global_tokens_accumulator = 0

    print("Core raw tokens:")
    occurrences = count_patterns_in_directory(project_root + "Tokens/RawTokens/Sources/Values", "public static let")
    accumulator = 0
    for file, counts in occurrences.items():
        print(f"\t {file}: {counts}")
        accumulator += counts
    print(f"Core raw tokens --> {accumulator}")
    global_tokens_accumulator += accumulator

    print("\nOrange raw tokens:")
    occurrences = count_patterns_in_directory(project_root + "Themes/Orange/Sources/Values", "public static let")
    accumulator = 0
    for file, counts in occurrences.items():
        print(f"\t {file}: {counts}")
        accumulator += counts
    print(f"Orange raw tokens --> {accumulator}")
    global_tokens_accumulator += accumulator

    print("\nSosh raw tokens:")
    occurrences = count_patterns_in_directory(project_root + "Themes/Sosh/Sources/Values", "public static let")
    accumulator = 0
    for file, counts in occurrences.items():
        print(f"\t {file}: {counts}")
        accumulator += counts
    print(f"Sosh raw tokens --> {accumulator}")
    global_tokens_accumulator += accumulator

    print("\nWireframe raw tokens:")
    occurrences = count_patterns_in_directory(project_root + "Themes/Wireframe/Sources/Values", "public static let")
    accumulator = 0
    for file, counts in occurrences.items():
        print(f"\t {file}: {counts}")
        accumulator += counts
    print(f"Wireframe raw tokens --> {accumulator}")
    global_tokens_accumulator += accumulator

    print("\nCore semantic tokens:")
    occurrences = count_patterns_in_directory(project_root + "Tokens/SemanticTokens/Sources/Values", "var")
    accumulator = 0
    for file, counts in occurrences.items():
        print(f"\t{file}: {counts}")
        accumulator += counts
    print(f"Core semantic tokens --> {accumulator}")
    global_tokens_accumulator += accumulator

    print("\nCore component tokens:")
    occurrences = count_patterns_in_directory(project_root + "Tokens/ComponentTokens/Sources/Values", "var")
    accumulator = 0
    for file, counts in occurrences.items():
        print(f"\t{file}: {counts}")
        accumulator += counts
    print(f"Core component tokens --> {accumulator}")
    global_tokens_accumulator += accumulator

    print("\nCore components:")
    occurrences = count_patterns_in_directory(project_root + "Components/Sources", "public struct OUDS")
    accumulator = 0
    for file, counts in occurrences.items():
        print(f"\t{file}: {counts}")
        accumulator += counts
    print(f"Core components --> {accumulator}")

    print(f"\nTotal number of tokens --> {global_tokens_accumulator}")
    print(f"Total number of components --> {accumulator}")