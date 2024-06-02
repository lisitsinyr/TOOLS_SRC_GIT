#!/bin/bash
# -------------------------------------------------------------------
# lyrgit_rebase_Branch.bat
# ----------------------------------------------------------------------------
# Отменяет все коммиты с тех пор, как текущая ветвь отклонилась от вышестоящей ветки
# ----------------------------------------------------------------------------
# usage: git rebase [-i] [options] [--exec <cmd>] [--onto <newbase> | --keep-base] [<upstream> [<branch>]]
#    or: git rebase [-i] [options] [--exec <cmd>] [--onto <newbase>] --root [<branch>]
#    or: git rebase --continue | --abort | --skip | --edit-todo
# 
#     --[no-]onto <revision>
#                           rebase onto given branch instead of upstream
#     --[no-]keep-base      use the merge-base of upstream and branch as the current base
#     --no-verify           allow pre-rebase hook to run
#     --verify              opposite of --no-verify
#     -q, --[no-]quiet      be quiet. implies --no-stat
#     -v, --[no-]verbose    display a diffstat of what changed upstream
#     -n, --no-stat         do not show diffstat of what changed upstream
#     --stat                opposite of --no-stat
#     --[no-]signoff        add a Signed-off-by trailer to each commit
#     --[no-]committer-date-is-author-date
#                           make committer date match author date
#     --[no-]reset-author-date
#                           ignore author date and use current date
#     -C <n>                passed to 'git apply'
#     --[no-]ignore-whitespace
#                           ignore changes in whitespace
#     --[no-]whitespace <action>
#                           passed to 'git apply'
#     -f, --[no-]force-rebase
#                           cherry-pick all commits, even if unchanged
#     --no-ff               cherry-pick all commits, even if unchanged
#     --ff                  opposite of --no-ff
#     --continue            continue
#     --skip                skip current patch and continue
#     --abort               abort and check out the original branch
#     --quit                abort but keep HEAD where it is
#     --edit-todo           edit the todo list during an interactive rebase
#     --show-current-patch  show the patch file being applied or merged
#     --apply               use apply strategies to rebase
#     -m, --merge           use merging strategies to rebase
#     -i, --interactive     let the user edit the list of commits to rebase
#     --[no-]rerere-autoupdate
#                           update the index with reused conflict resolution if possible
#     --empty (drop|keep|ask)
#                           how to handle commits that become empty
#     --[no-]autosquash     move commits that begin with squash!/fixup! under -i
#     --[no-]update-refs    update branches that point to commits that are being rebased
#     -S, --[no-]gpg-sign[=<key-id>]
#                           GPG-sign commits
#     --[no-]autostash      automatically stash/stash pop before and after
#     -x, --[no-]exec <exec>
#                           add exec lines after each commit of the editable list
#     -r, --[no-]rebase-merges[=<mode>]
#                           try to rebase merges instead of skipping them
#     --[no-]fork-point     use 'merge-base --fork-point' to refine upstream
#     -s, --[no-]strategy <strategy>
#                           use the given merge strategy
#     -X, --[no-]strategy-option <option>
#                           pass the argument through to the merge strategy
#     --[no-]root           rebase all reachable commits up to the root(s)
#     --[no-]reschedule-failed-exec
#                           automatically re-schedule any `exec` that fails
#     --[no-]reapply-cherry-picks
#                           apply all changes, even those already present upstream
# ----------------------------------------------------------------------------

#:begin
echo '---------------------------------------------'
echo ' git rebase $upstream_branch'
echo ---------------------------------------------
echo 'Check 1 parametr'
if [ -n "$1" ]; then
    upstream_branch="$1"
else
    branch=""
    read -p "upstream_branch: " upstream_branch
fi

if [ ! -z "$upstream_branch" ]; then
    git rebase "$upstream_branch"
else
   echo 'Parametr $upstream_branch not specified'
fi

#:exit
