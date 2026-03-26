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

# Troubleshooting
# ---------------

# To fix
# "warning: abbrev was loaded from the standard library, but is not part of the default gems starting from Ruby 3.4.0.
# You can add abbrev to your Gemfile or gemspec to silence this warning.""
gem 'abbrev', '0.1.2'

# Vulnerabities fixes for transitive gems
# ---------------------------------------

# Grype run result on 2026-03-26
# json     2.18.1     2.19.2    gem   GHSA-3m6g-2423-7cp3  High      < 0.1% (3rd)  < 0.1
gem 'json', '2.19.2'

# Grype run result on 2026-03-26
# faraday  1.8.0      1.10.5    gem   GHSA-33mh-2634-fwr2  Medium    < 0.1% (4th)  < 0.1
gem 'faraday', '1.10.5'

# Really needed gems
# ------------------

gem 'fastlane', '2.232.2'

# Magic

plugins_path = File.join(File.dirname(__FILE__), 'DesignToolbox/fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
