#!/bin/bash
# -------------------------------------------------------------------
# lyrgit_restore.bat
# ----------------------------------------------------------------------------
# Восстановить файлы рабочего дерева
# ----------------------------------------------------------------------------
# usage: git restore [<options>] [--source=<branch>] <file>...
# 
#     -s, --[no-]source <tree-ish>
#                           which tree-ish to checkout from
#     -S, --[no-]staged     restore the index
#     -W, --[no-]worktree   restore the working tree (default)
#     --[no-]ignore-unmerged
#                           ignore unmerged entries
#     --[no-]overlay        use overlay mode
#     -q, --[no-]quiet      suppress progress reporting
#     --[no-]recurse-submodules[=<checkout>]
#                           control recursive updating of submodules
#     --[no-]progress       force progress reporting
#     -m, --[no-]merge      perform a 3-way merge with the new branch
#     --[no-]conflict <style>
#                           conflict style (merge, diff3, or zdiff3)
#     -2, --ours            checkout our version for unmerged files
#     -3, --theirs          checkout their version for unmerged files
#     -p, --[no-]patch      select hunks interactively
#     --[no-]ignore-skip-worktree-bits
#                           do not limit pathspecs to sparse entries only
#     --[no-]pathspec-from-file <file>
#                           read pathspec from file
#     --[no-]pathspec-file-nul
#                           with --pathspec-from-file, pathspec elements are separated with NUL character
# ----------------------------------------------------------------------------

#:begin
echo '---------------------------------------------'
echo ' git restore'
echo '---------------------------------------------'
git restore

#:exit
