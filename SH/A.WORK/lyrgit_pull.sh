#!/bin/bash
# -------------------------------------------------------------------
# lyrgit_pull.sh
# ----------------------------------------------------------------------------
# ***Получить изменения
# ----------------------------------------------------------------------------
# usage: git pull [<options>] [<repository> [<refspec>...]]
# 
#     -v, --[no-]verbose    be more verbose
#     -q, --[no-]quiet      be more quiet
#     --[no-]progress       force progress reporting
#     --[no-]recurse-submodules[=<on-demand>]
#                           control for recursive fetching of submodules
# 
# Options related to merging
#     -r, --[no-]rebase[=(false|true|merges|interactive)]
#                           incorporate changes by rebasing rather than merging
#     -n                    do not show a diffstat at the end of the merge
#     --[no-]stat           show a diffstat at the end of the merge
#     --[no-]log[=<n>]      add (at most <n>) entries from shortlog to merge commit message
#     --[no-]signoff[=...]  add a Signed-off-by trailer
#     --[no-]squash         create a single commit instead of doing a merge
#     --[no-]commit         perform a commit if the merge succeeds (default)
#     --[no-]edit           edit message before committing
#     --[no-]cleanup <mode> how to strip spaces and #comments from message
#     --[no-]ff             allow fast-forward
#     --ff-only             abort if fast-forward is not possible
#     --[no-]verify         control use of pre-merge-commit and commit-msg hooks
#     --[no-]verify-signatures
#                           verify that the named commit has a valid GPG signature
#     --[no-]autostash      automatically stash/stash pop before and after
#     -s, --[no-]strategy <strategy>
#                           merge strategy to use
#     -X, --[no-]strategy-option <option=value>
#                           option for selected merge strategy
#     -S, --[no-]gpg-sign[=<key-id>]
#                           GPG sign commit
#     --[no-]allow-unrelated-histories
#                           allow merging unrelated histories
# 
# Options related to fetching
#     --[no-]all            fetch from all #otes
#     -a, --[no-]append     append to .git/FETCH_HEAD instead of overwriting
#     --[no-]upload-pack <path>
#                           path to upload pack on #ote end
#     -f, --[no-]force      force overwrite of local branch
#     -t, --[no-]tags       fetch all tags and associated objects
#     -p, --[no-]prune      prune #ote-tracking branches no longer on #ote
#     -j, --[no-]jobs[=<n>] number of submodules pulled in parallel
#     --[no-]dry-run        dry run
#     -k, --[no-]keep       keep downloaded pack
#     --[no-]depth <depth>  deepen history of shallow clone
#     --[no-]shallow-since <time>
#                           deepen history of shallow repository based on time
#     --[no-]shallow-exclude <revision>
#                           deepen history of shallow clone, excluding rev
#     --[no-]deepen <n>     deepen history of shallow clone
#     --unshallow           convert to a complete repository
#     --[no-]update-shallow accept refs that update .git/shallow
#     --refmap <refmap>     specify fetch refmap
#     -o, --[no-]server-option <server-specific>
#                           option to transmit
#     -4, --[no-]ipv4       use IPv4 addresses only
#     -6, --[no-]ipv6       use IPv6 addresses only
#     --[no-]negotiation-tip <revision>
#                           report that we have only objects reachable from this object
#     --[no-]show-forced-updates
#                           check for forced-updates on all updated branches
#     --[no-]set-upstream   set upstream for git pull/fetch
# ----------------------------------------------------------------------------

#begin
    BATNAME=$0
    echo Start $BATNAME ...

    git pull
    
    exit 0
#end
