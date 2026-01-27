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

"""Detect unused tokens in the OUDS code base.

This script extracts component, semantic and raw tokens from the Swift sources
located in the repository and checks whether they are referenced elsewhere in
the Swift sources (excluding tests and token providers). It also provides a
naive estimate of memory that could be saved by removing unused tokens.

Warnings:
- memory footprint is estimated
- tokens checks are based on the tokens Swift names, it means some tokens with the same name can be seen as used even if they are not (eg. sizeMinWidth component tokens)
- keep in mind even if some tokens are not used in the package they are public and be used by our users for their own nedds
- you should focus mainly on the component tokens

Exit codes:
    0 - No unused tokens have been found.
    1 - At least one unused token has been detected.
    2 - An error occurred while running the script.
"""

from __future__ import annotations

import datetime
import re
import sys
import time

from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Iterable, Iterator, List, Sequence, Set

# CONFIGURATION
# -------------

# Root path of the project
ROOT = Path(__file__).resolve().parent.parent

# Paths to explore for token declarations (protocols or enums extensions) to extract
TOKEN_DECLARATION_PATHS: List[Path] = [
    ROOT / "OUDS" / "Core" / "Tokens" / "ComponentTokens" / "Sources" / "Values",
    ROOT / "OUDS" / "Core" / "Tokens" / "SemanticTokens" / "Sources" / "Values",
    ROOT / "OUDS" / "Core" / "Tokens" / "RawTokens" / "Sources" / "Values",
]

# Patterns used to extract token names and their types from Swift sources
TOKEN_PATTERNS: List[re.Pattern[str]] = [
    re.compile(r"^\s*var\s+(?P<name>[A-Za-z_][A-Za-z0-9_]*)\s*:\s*(?P<type>[A-Za-z_][A-Za-z0-9_<>]*)"),
    re.compile(r"^\s*(?:public\s+)?static\s+let\s+(?P<name>[A-Za-z_][A-Za-z0-9_]*)\s*:\s*(?P<type>[A-Za-z_][A-Za-z0-9_<>]*)"),
]

# Extensions of files to process for exploration
SOURCE_EXTENSIONS = {".swift"}

# Directory names or path parts to ignore during usage checks
IGNORED_PATH_PARTS = {
    ".build",
    ".git",
    "Tests",
    "TokenProvider",
    "TokensProvider",
}

# Swift types sizes (in bytes) used for the NAIVE estimation (only focused of contained properties and if all tokens are retrieved and not deleted by compilator)
S_INT = 8
S_BOOL = 1
S_CGFLOAT = 8
S_DOUBLE = 8
S_STRING = 24
TYPE_SIZE_MAP: Dict[str, int] = {
    # Primitive types
    "Int": S_INT,
    "Bool": S_BOOL,
    "CGFloat": S_CGFLOAT,
    "Double": S_DOUBLE,
    "String": S_STRING,

    # Raw tokens types
    "ColorRawToken": S_STRING,
    "ColorModeRawToken": S_STRING,
    "BorderRadiusRawToken": S_DOUBLE,
    "BorderStyleRawToken": S_STRING,
    "BorderWidthRawToken": S_DOUBLE,
    "DimensionRawToken": S_DOUBLE,
    "EffectRawToken": S_CGFLOAT,
    "ElevationCompositeRawToken": S_CGFLOAT * 2 + S_STRING,
    "ElevationRawToken": S_CGFLOAT,
    "FontFamilyRawToken": S_STRING,
    "FontLetterSpacingRawToken": S_CGFLOAT,
    "FontLineHeightRawToken": S_CGFLOAT,
    "FontSizeRawToken": S_CGFLOAT,
    "FontWeightRawToken": S_INT,
    "GridRawToken": S_DOUBLE,
    "OpacityRawToken": S_DOUBLE,

    # Semantic tokens types
    "BorderRadiusSemanticToken": S_DOUBLE,
    "BorderStyleSemanticToken": S_STRING,
    "BorderWidthSemanticToken": S_DOUBLE,
    "ColorSemanticToken": S_STRING,
    "ColorModeSemanticToken": S_STRING,
    "DimensionSemanticToken": S_DOUBLE,    
    "EffectSemanticToken": S_CGFLOAT,
    "ElevationColorSemanticToken": S_STRING,
    "ElevationCompositeSemanticToken": S_CGFLOAT + S_STRING * 2,
    "ElevationMultipleColorSemanticToken": S_STRING * 2,
    "ElevationXSemanticToken": S_CGFLOAT,
    "ElevationYSemanticToken": S_CGFLOAT,
    "ElevationBlurSemanticToken": S_CGFLOAT,
    "ElevationX-ColorSemanticToken": S_STRING,
    "FontFamilySemanticToken": S_STRING,
    "FontSizeSemanticToken": S_CGFLOAT,
    "FontLetterSpacingSemanticToken": S_CGFLOAT,
    "FontLineHeightSemanticToken": S_CGFLOAT,
    "FontWeightSemanticToken": S_INT,
    "FontCompositeSemanticToken": S_CGFLOAT * 3 + S_INT,
    "GridSemanticToken": S_DOUBLE,
    "MultipleColorSemanticToken": S_STRING * 2,
    "MultipleColorModeSemanticToken": S_STRING * 3,
    "MultipleFontCompositeSemanticToken": (S_CGFLOAT * 3 + S_INT) * 2,
    "MultipleFontSizeSemanticToken": S_CGFLOAT * 2,
    "MultipleFontLineHeightSemanticToken": S_CGFLOAT * 2,
    "MultipleFontLetterSpacingSemanticToken": S_CGFLOAT * 2,
    "MultipleSizeSemanticToken": S_DOUBLE * 2,
    "MultipleSizeSemanticToken": S_DOUBLE * 2,
    "MultipleSpaceSemanticToken": S_DOUBLE * 2,
    "OpacitySemanticToken": S_DOUBLE,
    "SizeSemanticToken": S_DOUBLE * 2,
    "SpaceSemanticToken": S_DOUBLE * 2,
}
DEFAULT_TOKEN_SIZE = -666

WORD_PATTERN = re.compile(r"[A-Za-z_][A-Za-z0-9_]*")

# EXIT CODES
# ----------

EXIT_OK = 0
EXIT_UNUSED_TOKEN = 1
EXIT_ERROR = 2

# DOMAIN
# ------

@dataclass
class Token:
    """Represents a token extracted from Swift sources."""

    name: str
    type_name: str
    source: Path

@dataclass
class UnusedToken:
    """Represents an unused token along with its origin."""

    token: Token
    estimated_size_bytes: int

@dataclass
class TokenStats:
    """Statistics about all tokens in the codebase."""
    
    total_tokens: int
    used_tokens: int
    unused_tokens: int
    total_size_bytes: int
    used_size_bytes: int
    unused_size_bytes: int
    
    @property
    def usage_percentage(self) -> float:
        """Return the percentage of tokens that are used."""
        return (self.used_tokens / self.total_tokens * 100) if self.total_tokens > 0 else 0.0
    
    @property
    def memory_efficiency_percentage(self) -> float:
        """Return the percentage of memory that is actually used."""
        return (self.used_size_bytes / self.total_size_bytes * 100) if self.total_size_bytes > 0 else 0.0

# SERVICE
# -------

def log(message: str, error: bool = False) -> None:
    """Log a message with a consistent prefix."""
    
    if error:
        print(f"🍊❌ {message}")
    else:
        print(f"🍊 {message}")


def read_lines(path: Path) -> Iterator[str]:
    """Yield lines from a file using UTF-8 encoding."""

    with path.open("r", encoding="utf-8") as handle:
        for line in handle:
            yield line

def is_relative_to(path: Path, parent: Path) -> bool:
    """Check whether ``path`` is within ``parent`` without relying on Python 3.9 APIs."""

    try:
        path.relative_to(parent)
        return True
    except ValueError:
        return False

def calculate_token_stats(tokens: List[Token], used_tokens: Set[str]) -> TokenStats:
    """Calculate comprehensive statistics about token usage and memory footprint."""
    
    total_size = 0
    used_size = 0
    unused_size = 0
    
    for token in tokens:
        token_size = estimate_token_size(token)
        total_size += token_size
        
        if token.name in used_tokens:
            used_size += token_size
        else:
            unused_size += token_size
    
    return TokenStats(
        total_tokens=len(tokens),
        used_tokens=len(used_tokens),
        unused_tokens=len(tokens) - len(used_tokens),
        total_size_bytes=total_size,
        used_size_bytes=used_size,
        unused_size_bytes=unused_size
    )

def normalize_type(type_name: str) -> str:
    """Remove optional markers and generics for comparison purposes."""

    clean = type_name.replace("?", "").replace("!", "")
    if "<" in clean:
        clean = clean.split("<", 1)[0]
    return clean

def estimate_token_size(token: Token) -> int:
    """Return the estimated memory footprint for a token based on its type."""

    resolved_type = normalize_type(token.type_name)
    size = TYPE_SIZE_MAP.get(resolved_type, DEFAULT_TOKEN_SIZE)
    if size == DEFAULT_TOKEN_SIZE:
        raise TypeError(f"Failed to computed type of token '{token}'")
    return size

def extract_tokens(file_path: Path) -> List[Token]:
    """Extract token declarations from a Swift source file."""

    tokens: List[Token] = []
    in_block_comment = False
    for line in read_lines(file_path):
        stripped = line.lstrip()
        if in_block_comment:
            if "*/" in stripped:
                in_block_comment = False
            continue
        if stripped.startswith("/*"):
            in_block_comment = "*/" not in stripped
            continue
        if stripped.startswith("//") or stripped.startswith("///"):
            continue
        for pattern in TOKEN_PATTERNS:
            match = pattern.match(line)
            if match:
                tokens.append(
                    Token(
                        name=match.group("name"),
                        type_name=match.group("type"),
                        source=file_path,
                    )
                )
                break
    return tokens

def collect_tokens(declaration_paths: Sequence[Path]) -> List[Token]:
    """Gather all tokens from the configured declaration paths."""

    tokens: List[Token] = []
    for directory in declaration_paths:
        if not directory.exists():
            log(f"Skipped missing declarations directory: {directory}")
            continue
        for file_path in directory.rglob("*.swift"):
            tokens.extend(extract_tokens(file_path))
    return tokens


def should_ignore_path(path: Path, ignored_parts: Set[str], declaration_paths: Sequence[Path]) -> bool:
    """Check whether a file should be excluded from scanning."""

    if path.suffix not in SOURCE_EXTENSIONS:
        return True

    for part in path.parts:
        if part in ignored_parts:
            return True

    for root in declaration_paths:
        if is_relative_to(path, root):
            return True

    return False


def iter_source_files(root: Path, ignored_parts: Set[str], declaration_paths: Sequence[Path]) -> Iterator[Path]:
    """Yield Swift source files to inspect for usages."""

    for file_path in root.rglob("*.swift"):
        if not file_path.is_file():
            continue
        if should_ignore_path(file_path, ignored_parts, declaration_paths):
            continue
        yield file_path

def find_used_tokens(token_names: Set[str], files: Iterable[Path]) -> Set[str]:
    """Return the set of token names that appear in the provided files, excluding declarations."""

    used: Set[str] = set()
    
    # Pattern to deetcted declaration of tokens
    declaration_patterns = [
        re.compile(r"^\s*(?:@\w+\s+)*(?:\w+\s+)*var\s+(?P<name>[A-Za-z_][A-Za-z0-9_]*)"),
        re.compile(r"^\s*(?:@\w+\s+)*(?:\w+\s+)*let\s+(?P<name>[A-Za-z_][A-Za-z0-9_]*)"),
        re.compile(r"^\s*(?:@\w+\s+)*(?:\w+\s+)*override\s+var\s+(?P<name>[A-Za-z_][A-Za-z0-9_]*)"),
    ]
    
    for file_path in files:
        in_block_comment = False
        for line in read_lines(file_path):
            stripped = line.lstrip()
            if in_block_comment:
                if "*/" in stripped:
                    in_block_comment = False
                continue
            if stripped.startswith("/*"):
                in_block_comment = "*/" not in stripped
                continue
            if stripped.startswith("//") or stripped.startswith("///"):
                continue

            is_declaration = False
            declared_token_name = None
            
            for pattern in declaration_patterns:
                match = pattern.match(line)
                if match:
                    declared_token_name = match.group("name")
                    if declared_token_name in token_names:
                        is_declaration = True
                        break
            
            # If declaration, check the assignment 
            if is_declaration:
                colon_index = line.find(':')
                if colon_index != -1:
                    value_part = line[colon_index + 1:]
                    words_in_value = set(WORD_PATTERN.findall(value_part))

                    # Any token assigned to a declaration is seen as used
                    intersection = words_in_value & token_names
                    if intersection:
                        used.update(intersection)
                
                # Ingore declatred token, only consider its values
                continue
            
            # Line with declaration, check usages
            words = set(WORD_PATTERN.findall(line))
            intersection = words & token_names
            if intersection:
                used.update(intersection)
                if used == token_names:
                    return used
                    
    return used

def summarize_unused_tokens(unused_tokens: List[UnusedToken], output_dir: str = "logs") -> None:
    """Log a summary for unused tokens and their estimated footprint in separate files per group."""
    
    if not unused_tokens:
        log("No unused tokens found across the inspected sources.")
        return

    output_path = Path(output_dir)
    output_path.mkdir(exist_ok=True)
    
    grouped_tokens = defaultdict(list)
    
    # Group tokens for logs
    for unused in unused_tokens:
        relative_path = unused.token.source.relative_to(ROOT)
        path_str = str(relative_path)
        
        if "RawTokens" in path_str:
            group_key = "RawTokens"
        elif "SemanticTokens" in path_str:
            group_key = "SemanticTokens"
        elif "ComponentTokens" in path_str:
            group_key = "ComponentTokens"
        else:
            group_key = "Other"
        
        grouped_tokens[group_key].append(unused)

    # Main log in standard output
    log(f"Identified {len(unused_tokens)} unused tokens across {len(grouped_tokens)} categories")
    log(f"Detailed logs will be written to {output_dir}/ directory")
    log("=" * 70)

    # Create one log file per group of tokens
    for group_name, tokens in grouped_tokens.items():
        filename = f"unused_tokens_{group_name.lower()}.log"
        filepath = output_path / filename
        Path(filepath).unlink(missing_ok=True)

        group_total = sum(token.estimated_size_bytes for token in tokens)
        
        log(f"📁 {group_name}: {len(tokens)} tokens (~{group_total / 1024:.2f} KiB) → {filename}")
        
        # Update file
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(f"UNUSED TOKENS REPORT - {group_name.upper()}\n")
            f.write(f"Generated on: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
            f.write("=" * 70 + "\n\n")
            
            f.write(f"🔍 {group_name.upper()} TOKENS\n")
            f.write(f"Found {len(tokens)} unused tokens (~{group_total / 1024:.2f} KiB)\n")
            f.write("-" * 50 + "\n\n")
            
            for unused in tokens:
                relative_path = unused.token.source.relative_to(ROOT)
                f.write(f"• {unused.token.name}\n")
                f.write(f"  📁 {relative_path}\n")
                f.write(f"  💾 ~{unused.estimated_size_bytes} bytes\n\n")
            
            f.write("=" * 50 + "\n")
            f.write(f"GROUP SUMMARY\n")
            f.write(f"Total tokens: {len(tokens)}\n")
            f.write(f"Total size: {group_total} bytes (~{group_total / 1024:.2f} KiB)\n")

    # Create global summary file
    summary_filename = f"unused_tokens_summary.log"
    summary_filepath = output_path / summary_filename
    
    total_saved = sum(item.estimated_size_bytes for item in unused_tokens)
    
    with open(summary_filepath, 'w', encoding='utf-8') as f:
        f.write("UNUSED TOKENS - GLOBAL SUMMARY\n")
        f.write(f"Generated on: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        f.write("=" * 70 + "\n\n")
        
        f.write("📊 OVERVIEW BY CATEGORY\n")
        f.write("-" * 30 + "\n")
        for group_name, tokens in grouped_tokens.items():
            group_total = sum(token.estimated_size_bytes for token in tokens)
            f.write(f"{group_name:15} | {len(tokens):4} tokens | {group_total:8} bytes | {group_total/1024:6.2f} KiB\n")
        
        f.write("\n" + "=" * 70 + "\n")
        f.write(f"📊 TOTAL MEMORY SAVING ESTIMATE\n")
        f.write(f"{total_saved} bytes (~{total_saved / 1024:.2f} KiB)\n")
        f.write(f"Total unused tokens: {len(unused_tokens)}\n")

    # Final log in standard output
    log("=" * 70)
    log(f"📊 TOTAL MEMORY SAVING ESTIMATE: {total_saved} bytes (~{total_saved / 1024:.2f} KiB)")
    log(f"📁 Summary file: {summary_filename}")

def main() -> int:
    """Entry point for the script."""

    start_time = time.perf_counter()
    exit_code = EXIT_ERROR
    try:
        tokens = collect_tokens(TOKEN_DECLARATION_PATHS)

        if not tokens:
            log("No tokens could be extracted. Check declaration paths.")
            exit_code = EXIT_ERROR
            return exit_code

        log(f"Extracted {len(tokens)} tokens from declaration sources.")

        token_names = {token.name for token in tokens}
        files_to_scan = list(iter_source_files(ROOT, IGNORED_PATH_PARTS, TOKEN_DECLARATION_PATHS))
        log(f"Scanning {len(files_to_scan)} Swift files for token usages...")

        used_tokens = find_used_tokens(token_names, files_to_scan)
        
        # Compute stats
        stats = calculate_token_stats(tokens, used_tokens)
        
        # Display states
        log("=" * 70)
        log("📊 TOKEN STATISTICS")
        log(f"Total tokens: {stats.total_tokens}")
        log(f"Used tokens: {stats.used_tokens} ({stats.usage_percentage:.1f}%)")
        log(f"Unused tokens: {stats.unused_tokens}")
        log("=" * 70)
        log("💾 MEMORY FOOTPRINT")
        log(f"Total memory: {stats.total_size_bytes} bytes ({stats.total_size_bytes / 1024:.2f} KiB)")
        log(f"Used memory: {stats.used_size_bytes} bytes ({stats.used_size_bytes / 1024:.2f} KiB)")
        log(f"Unused memory: {stats.unused_size_bytes} bytes ({stats.unused_size_bytes / 1024:.2f} KiB)")
        log(f"Memory efficiency: {stats.memory_efficiency_percentage:.1f}%")
        log("=" * 70)

        unused_tokens: List[UnusedToken] = []
        for token in tokens:
            if token.name in used_tokens:
                continue
            estimated_size = estimate_token_size(token)
            unused_tokens.append(UnusedToken(token=token, estimated_size_bytes=estimated_size))

        summarize_unused_tokens(unused_tokens)

        if unused_tokens:
            exit_code = EXIT_UNUSED_TOKEN
        else:
            exit_code = EXIT_OK

    except Exception as exc:
        log(f"Unexpected error: {exc}", error=True)
        exit_code = EXIT_ERROR
    finally:
        elapsed = time.perf_counter() - start_time
        log(f"Completed in {elapsed:.2f} seconds.")

    return exit_code


if __name__ == "__main__":
    sys.exit(main())
