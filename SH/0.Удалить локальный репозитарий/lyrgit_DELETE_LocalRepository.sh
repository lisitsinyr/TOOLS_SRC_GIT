#!/bin/bash
# -------------------------------------------------------------------
# lyrgit_delete_LocalRepository.sh
# ----------------------------------------------------------------------------
# 0.Удалить локальный репозитарий [***]
# ----------------------------------------------------------------------------
# Удаление локального репозитария в текущей папке
# ----------------------------------------------------------------------------

#begin
    echo '------------------------------------------------------'
    echo ' Удаление локального репозитария в текущей папке'
    echo '------------------------------------------------------'
    RD /s/q .git

    attrib +A -H .gitignore
    del .gitignore

    attrib +A -H .gitmodules
    del .gitmodules

    attrib +A -H .README.md
    del .README.md

    exit 0
#end
