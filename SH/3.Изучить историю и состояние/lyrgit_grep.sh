#!/bin/bash
# -------------------------------------------------------------------
# lyrgit_grep.bat
# ----------------------------------------------------------------------------
# Печатать строки, соответствующие шаблону
# ----------------------------------------------------------------------------
# usage: git grep [<options>] [-e] <pattern> [<rev>...] [[--] <path>...]
# 
#     --[no-]cached         search in index instead of in the work tree
#     --no-index            find in contents not managed by git
#     --index               opposite of --no-index
#     --[no-]untracked      search in both tracked and untracked files
#     --[no-]exclude-standard
#                           ignore files specified via '.gitignore'
#     --[no-]recurse-submodules
#                           recursively search in each submodule
# 
#     -v, --[no-]invert-match
#                           show non-matching lines
#     -i, --[no-]ignore-case
#                           case insensitive matching
#     -w, --[no-]word-regexp
#                           match patterns only at word boundaries
#     -a, --[no-]text       process binary files as text
#     -I                    don't match patterns in binary files
#     --[no-]textconv       process binary files with textconv filters
#     -r, --[no-]recursive  search in subdirectories (default)
#     --max-depth <n>       descend at most <n> levels
# 
#     -E, --[no-]extended-regexp
#                           use extended POSIX regular expressions
#     -G, --[no-]basic-regexp
#                           use basic POSIX regular expressions (default)
#     -F, --[no-]fixed-strings
#                           interpret patterns as fixed strings
#     -P, --[no-]perl-regexp
#                           use Perl-compatible regular expressions
# 
#     -n, --[no-]line-number
#                           show line numbers
#     --[no-]column         show column number of first match
#     -h                    don't show filenames
#     -H                    show filenames
#     --[no-]full-name      show filenames relative to top directory
#     -l, --[no-]files-with-matches
#                           show only filenames instead of matching lines
#     --[no-]name-only      synonym for --files-with-matches
#     -L, --[no-]files-without-match
#                           show only the names of files without match
#     -z, --[no-]null       print NUL after filenames
#     -o, --[no-]only-matching
#                           show only matching parts of a line
#     -c, --[no-]count      show the number of matches instead of matching lines
#     --[no-]color[=<when>] highlight matches
#     --[no-]break          print empty line between matches from different files
#     --[no-]heading        show filename only once above matches from same file
# 
#     -C, --[no-]context <n>
#                           show <n> context lines before and after matches
#     -B, --[no-]before-context <n>
#                           show <n> context lines before matches
#     -A, --[no-]after-context <n>
#                           show <n> context lines after matches
#     --[no-]threads <n>    use <n> worker threads
#     -NUM                  shortcut for -C NUM
#     -p, --[no-]show-function
#                           show a line with the function name before matches
#     -W, --[no-]function-context
#                           show the surrounding function
# 
#     -f <file>             read patterns from file
#     -e <pattern>          match <pattern>
#     --and                 combine patterns specified with -e
#     --or
#     --not
#     (
#     )
#     -q, --[no-]quiet      indicate hit with exit status without output
#     --[no-]all-match      show only matches from files that match all patterns
# 
#     -O, --[no-]open-files-in-pager[=<pager>]
#                           show matching files in the pager
#     --[no-]ext-grep       allow calling of grep(1) (ignored by this build)
#     -m, --[no-]max-count <n>
#                           maximum number of results per file
# ----------------------------------------------------------------------------

#:begin
echo '---------------------------------------------'
echo 'git grep'
echo '---------------------------------------------'
git grep

#:exit
