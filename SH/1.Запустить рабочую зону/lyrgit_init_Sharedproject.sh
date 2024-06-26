#!/bin/bash
# -------------------------------------------------------------------
# lyrgit_init_Sharedproject.bat
# ----------------------------------------------------------------------------
# Инициализация репозитария [git init -bare -share sharedproject.git]
# ----------------------------------------------------------------------------
# usage: git init [-q | --quiet] [--bare] [--template=<template-directory>]
#                 [--separate-git-dir <git-dir>] [--object-format=<format>]
#                 [-b <branch-name> | --initial-branch=<branch-name>]
#                 [--shared[=<permissions>]] [<directory>]
# 
#     --[no-]template <template-directory>
#                           directory from which templates will be used
#     --[no-]bare           create a bare repository
#     --shared[=<permissions>]
#                           specify that the git repository is to be shared amongst several users
#     -q, --[no-]quiet      be quiet
#     --[no-]separate-git-dir <gitdir>
#                           separate git dir from working tree
#     -b, --[no-]initial-branch <name>
#                           override the name of the initial branch
#     --[no-]object-format <hash>
#                           specify the hash algorithm to use
# ----------------------------------------------------------------------------

#begin
    echo '---------------------------------------------'
    echo ' git init -bare -share sharedproject.git'
    echo '---------------------------------------------'
    git init -bare -share sharedproject.git

    exit 0
#end
