#!/usr/bin/env bash
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
# Software description: Shared terminal output for the OUDS iOS shell scripts
#

# Source this file, then call log_init before using the display helpers.
# All display output goes to stderr; stdout remains available for data.
# Compatible with the Bash 3.2 shipped with macOS. No external dependencies.
# Colors are only enabled on a terminal, unless NO_COLOR is set or TERM=dumb.
# This library intentionally installs no traps and changes no shell options.

log_init() {
    OUDS_LOG_STARTED=$SECONDS
    OUDS_LOG_RESET=''
    OUDS_LOG_BOLD=''
    OUDS_LOG_BLUE=''
    OUDS_LOG_CYAN=''
    OUDS_LOG_GREEN=''
    OUDS_LOG_YELLOW=''
    OUDS_LOG_RED=''

    if [[ -t 2 && -z "${NO_COLOR+x}" && "${TERM:-dumb}" != "dumb" ]]; then
        OUDS_LOG_RESET=$'\033[0m'
        OUDS_LOG_BOLD=$'\033[1m'
        OUDS_LOG_BLUE=$'\033[1;34m'
        OUDS_LOG_CYAN=$'\033[1;36m'
        OUDS_LOG_GREEN=$'\033[1;32m'
        OUDS_LOG_YELLOW=$'\033[1;33m'
        OUDS_LOG_RED=$'\033[1;31m'
    fi
}

log_rule() {
    printf '%s\n' '------------------------------------------------------------' >&2
}

log_header() {
    printf '\n%sOUDS iOS | %s%s\n' "$OUDS_LOG_BOLD" "$*" "$OUDS_LOG_RESET" >&2
    log_rule
}

_log_message() {
    local color="$1" label="$2"
    shift 2
    printf '%s[%-5s]%s %s\n' "$color" "$label" "$OUDS_LOG_RESET" "$*" >&2
}

log_info()    { _log_message "$OUDS_LOG_BLUE" INFO "$@"; }
log_success() { _log_message "$OUDS_LOG_GREEN" OK "$@"; }
log_warn()    { _log_message "$OUDS_LOG_YELLOW" WARN "$@"; }
log_error()   { _log_message "$OUDS_LOG_RED" ERROR "$@"; }

log_step() {
    printf '\n' >&2
    _log_message "$OUDS_LOG_CYAN" STEP "$@"
}

log_detail() {
    local label="$1"
    shift
    printf '        %-16s : %s\n' "$label" "$*" >&2
}

log_prompt() {
    printf '%s[INPUT]%s %s ' "$OUDS_LOG_CYAN" "$OUDS_LOG_RESET" "$*" >&2
}

log_finish() {
    local elapsed=$((SECONDS - OUDS_LOG_STARTED))
    printf '\n' >&2
    log_rule
    log_success "$*"
    log_detail 'Elapsed time' "$(printf '%dm%02ds' "$((elapsed / 60))" "$((elapsed % 60))")"
}
