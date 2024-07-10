#
# Software Name: OUDS iOS
# SPDX-FileCopyrightText: Copyright (c) Orange SA
# SPDX-License-Identifier: MIT
#
# This software is distributed under the MIT license,
# the text of which is available at https://opensource.org/license/MIT/
# or see the "LICENSE" file for more details.
#
# Authors: See CONTRIBUTORS.txt
# Software description: A SwiftUI components library with code examples for Orange Unified Design System
#

source "https://rubygems.org"

gem 'cocoapods',  '1.15.2'

gem 'fastlane', '2.221.1'
gem 'fastlane-plugin-changelog', '0.16.0'
gem 'fastlane-plugin-mattermost', '1.3.2'

gem 'xcode-install', '2.8.1'

plugins_path = File.join(File.dirname(__FILE__), 'DemoApp/fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
