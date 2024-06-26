#!/bin/bash
# -------------------------------------------------------------------
# lyrgit_status_short.bat
# ----------------------------------------------------------------------------
# Состояние рабочего каталога и раздела проиндексированных файлов (кратко)
# -------------------------------------------------------------------
# usage: git status [<options>] [--] [<pathspec>...]
# 
#     -v, --[no-]verbose    be verbose
#     -s, --[no-]short      show status concisely
#     -b, --[no-]branch     show branch information
#     --[no-]show-stash     show stash information
#     --[no-]ahead-behind   compute full ahead/behind values
#     --[no-]porcelain[=<version>]
#                           machine-readable output
#     --[no-]long           show status in long format (default)
#     -z, --[no-]null       terminate entries with NUL
#     -u, --[no-]untracked-files[=<mode>]
#                           show untracked files, optional modes: all, normal, no. (Default: all)
#     --[no-]ignored[=<mode>]
#                           show ignored files, optional modes: traditional, matching, no. (Default: traditional)
#     --[no-]ignore-submodules[=<when>]
#                           ignore changes to submodules, optional when: all, dirty, untracked. (Default: all)
#     --[no-]column[=<style>]
#                           list untracked files in columns
#     --no-renames          do not detect renames
#     --renames             opposite of --no-renames
#     -M, --find-renames[=<n>]
#                           detect renames, optionally set similarity index
# -------------------------------------------------------------------

#begin
    echo '---------------------------------------------'
    echo 'git status --short'
    echo '---------------------------------------------'
    git status --short

    # показать информацию о branch
    # git status --branch

    exit 0
#end
