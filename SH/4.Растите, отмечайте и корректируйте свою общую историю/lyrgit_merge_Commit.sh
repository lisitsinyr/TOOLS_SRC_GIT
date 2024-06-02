#!/bin/bash
# -------------------------------------------------------------------
# lyrgit_merge_Commit.bat
# ----------------------------------------------------------------------------
# Объединить изменения из имени коммита в текущую коммит
# ----------------------------------------------------------------------------
# usage: git merge [<options>] [<commit>...]
#    or: git merge --abort
#    or: git merge --continue
# 
#     -n                    do not show a diffstat at the end of the merge
#     --[no-]stat           show a diffstat at the end of the merge
#     --[no-]summary        (synonym to --stat)
#     --[no-]log[=<n>]      add (at most <n>) entries from shortlog to merge commit message
#     --[no-]squash         create a single commit instead of doing a merge
#     --[no-]commit         perform a commit if the merge succeeds (default)
#     -e, --[no-]edit       edit message before committing
#     --[no-]cleanup <mode> how to strip spaces and #comments from message
#     --[no-]ff             allow fast-forward (default)
#     --ff-only             abort if fast-forward is not possible
#     --[no-]rerere-autoupdate
#                           update the index with reused conflict resolution if possible
#     --[no-]verify-signatures
#                           verify that the named commit has a valid GPG signature
#     -s, --[no-]strategy <strategy>
#                           merge strategy to use
#     -X, --[no-]strategy-option <option=value>
#                           option for selected merge strategy
#     -m, --[no-]message <message>
#                           merge commit message (for a non-fast-forward merge)
#     -F, --file <path>     read message from file
#     --[no-]into-name <name>
#                           use <name> instead of the real target
#     -v, --[no-]verbose    be more verbose
#     -q, --[no-]quiet      be more quiet
#     --[no-]abort          abort the current in-progress merge
#     --[no-]quit           --abort but leave index and working tree alone
#     --[no-]continue       continue the current in-progress merge
#     --[no-]allow-unrelated-histories
#                           allow merging unrelated histories
#     --[no-]progress       force progress reporting
#     -S, --[no-]gpg-sign[=<key-id>]
#                           GPG sign commit
#     --[no-]autostash      automatically stash/stash pop before and after
#     --[no-]overwrite-ignore
#                           update ignored files (default)
#     --[no-]signoff        add a Signed-off-by trailer
#     --no-verify           bypass pre-merge-commit and commit-msg hooks
#     --verify              opposite of --no-verify
# ----------------------------------------------------------------------------

#:begin
echo '---------------------------------------------'
echo ' git merge $Commit'
echo '---------------------------------------------'
echo 'Check 1 parametr'
if [ -n "$1" ]; then
    Commit="$1"
else
    Commit=""
    read -p "Commit: " Commit
fi

if [ ! -z "$Commit" ]; then
    git merge "$Commit"
else
   echo 'Parametr $Commit not specified'
fi

#:exit
