#!/bin/bash
# -------------------------------------------------------------------
# lyrgit_bisect.bat
# ----------------------------------------------------------------------------
# Используйте бинарный поиск, чтобы найти фиксацию, которая привела к ошибке
# ----------------------------------------------------------------------------
# usage: git bisect start [--term-(new|bad)=<term> --term-(old|good)=<term>]    [--no-checkout] [--first-parent] [<bad> [<good>...]] [--]    [<pathspec>...]
#    or: git bisect (good|bad) [<rev>...]
#    or: git bisect terms [--term-good | --term-bad]
#    or: git bisect skip [(<rev>|<range>)...]
#    or: git bisect next
#    or: git bisect reset [<commit>]
#    or: git bisect visualize
#    or: git bisect replay <logfile>
#    or: git bisect log
#    or: git bisect run <cmd> [<arg>...]
# ----------------------------------------------------------------------------

#:begin
echo '---------------------------------------------'
echo ' git bisect'
echo '---------------------------------------------'
git bisect

#:exit
