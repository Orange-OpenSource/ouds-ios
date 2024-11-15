#!/usr/bin/env python3
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

import glob
import json
import os
import sys

def merge_json_files(file_list):
    """
    Merges multiple JSON files into a single JSON object.

    Args:
        file_list (list): List of paths to the JSON files to be merged.

    Returns:
        dict: A dictionary containing the merged data from the JSON files.
    """
    merged_data = {}

    for file_name in file_list:
        file_short_name = os.path.basename(file_name)
        print(f"🍊 🔨 Processing file: '{file_short_name}'")

        with open(file_name, "r") as f:
            data = json.load(f)
            for key, value in data.items():
                if key in merged_data:
                    if isinstance(value, list):
                        merged_data[key].extend(value)
                    elif isinstance(value, dict):
                        merged_data[key] = merge_dicts(merged_data[key], value)
                else:
                    merged_data[key] = value

    return merged_data

def merge_dicts(dict1, dict2):
    """
    Recursively merges two dictionaries.

    Args:
        dict1 (dict): The first dictionary to merge.
        dict2 (dict): The second dictionary to merge.

    Returns:
        dict: The resulting dictionary from merging the two dictionaries.
    """
    for key, value in dict2.items():
        if key in dict1:
            if isinstance(value, dict):
                merge_dicts(dict1[key], value)
            elif isinstance(value, list):
                dict1[key].extend(value)
        else:
            dict1[key] = value
    return dict1

# ------------ Main ------------
if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 script.py <path_to_json_directory>")
        sys.exit(1)

    print("🍊 👉 Processing files")
    json_directory = sys.argv[1]
    file_list = glob.glob(os.path.join(json_directory, '*.json')) # Will process all JSON files (suppsoed to be renamed for example, so no more details)
    merged_result = merge_json_files(file_list)

    output_file_path = os.path.join(json_directory, 'index.json')
    with open(output_file_path, "w") as f: # The index.json file is the only expected one for the Apple documentation
        json.dump(merged_result, f, indent=4)

    print("🍊 👍 Completed!")