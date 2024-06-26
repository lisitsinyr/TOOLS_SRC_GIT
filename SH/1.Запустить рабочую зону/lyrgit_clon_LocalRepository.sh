# -------------------------------------------------------------------
# lyrgit_clon_LocalRepository.bat
# ----------------------------------------------------------------------------
# 1.Запустить рабочую зону [***]
# ----------------------------------------------------------------------------
# Клонировать GlobalRepository в заданный каталог
# ----------------------------------------------------------------------------
# usage: git clone [<options>] [--] <repo> [<dir>]
# 
#     -v, --[no-]verbose    be more verbose
#     -q, --[no-]quiet      be more quiet
#     --[no-]progress       force progress reporting
#     --[no-]reject-shallow don't clone shallow repository
#     -n, --no-checkout     don't create a checkout
#     --checkout            opposite of --no-checkout
#     --[no-]bare           create a bare repository
#     --[no-]mirror         create a mirror repository (implies bare)
#     -l, --[no-]local      to clone from a local repository
#     --no-hardlinks        don't use local hardlinks, always copy
#     --hardlinks           opposite of --no-hardlinks
#     -s, --[no-]shared     setup as shared repository
#     --[no-]recurse-submodules[=<pathspec>]
#                           initialize submodules in the clone
#     --[no-]recursive[=<pathspec>]
#                           alias of --recurse-submodules
#     -j, --[no-]jobs <n>   number of submodules cloned in parallel
#     --[no-]template <template-directory>
#                           directory from which templates will be used
#     --[no-]reference <repo>
#                           reference repository
#     --[no-]reference-if-able <repo>
#                           reference repository
#     --[no-]dissociate     use --reference only while cloning
#     -o, --[no-]origin <name>
#                           use <name> instead of 'origin' to track upstream
#     -b, --[no-]branch <branch>
#                           checkout <branch> instead of the #ote's HEAD
#     -u, --[no-]upload-pack <path>
#                           path to git-upload-pack on the #ote
#     --[no-]depth <depth>  create a shallow clone of that depth
#     --[no-]shallow-since <time>
#                           create a shallow clone since a specific time
#     --[no-]shallow-exclude <revision>
#                           deepen history of shallow clone, excluding rev
#     --[no-]single-branch  clone only one branch, HEAD or --branch
#     --no-tags             don't clone any tags, and make later fetches not to follow them
#     --tags                opposite of --no-tags
#     --[no-]shallow-submodules
#                           any cloned submodules will be shallow
#     --[no-]separate-git-dir <gitdir>
#                           separate git dir from working tree
#     -c, --[no-]config <key=value>
#                           set config inside the new repository
#     --[no-]server-option <server-specific>
#                           option to transmit
#     -4, --ipv4            use IPv4 addresses only
#     -6, --ipv6            use IPv6 addresses only
#     --[no-]filter <args>  object filtering
#     --[no-]also-filter-submodules
#                           apply partial clone filters to submodules
#     --[no-]#ote-submodules
#                           any cloned submodules will use their #ote-tracking branch
#     --[no-]sparse         initialize sparse-checkout file to include only files at root
#     --[no-]bundle-uri <uri>
#                           a URI for downloading bundles before fetching from origin #ote
# ----------------------------------------------------------------------------

#:begin
    echo '---------------------------------------------'
    echo ' git clone $GlobalRepository'
    echo ' git clone $GlobalRepository $PathName'
    echo '---------------------------------------------'
    echo 'Check 1 parametr'
    if [ -n "$1" ]; then
        GlobalRepository="$1"
    else
        GlobalRepository=""
        read -p "GlobalRepository: " GlobalRepository
    fi
    # -------------------------------------------------------------------
    if [ ! -z "$GlobalRepository" ]; then
        echo 'Check 2 parametr'
        if [ -n "$2" ]; then
            PathName="$2"
        else
            PathName=""
            read -p "PathName: " PathName
        fi

        if [ ! -z "$PathName" ]; then
            if [ -d "$PathName" ]; then
                echo "$PathName" 'does exist'
                pwd
            echo "$GlobalRepository" "$PathName"
                git clone "$GlobalRepository" "$PathName"
            else
                echo "$PathName" 'not exist'
            fi
        else
            pwd
            echo "$GlobalRepository"
            git clone "$GlobalRepository"
        fi
    else
        echo 'Parametr $GlobalRepository not specified'
    fi

    exit 0
#end
