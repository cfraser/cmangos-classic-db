#!/bin/bash
#
# This script will import the structure for the WowStack databases for
# characters, realm list, world content and scripts.
#
# After importing the structure, it will gradually load databases contents to
# populate your databases with the latest available releases.

# - Prepare required variables -----------------------------------------------
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TMP_FOLDER=${TMPDIR-/tmp}

# - Include settings ---------------------------------------------------------
if [[ ! -r "${DIR}/settings.sh" ]]; then
    echo "Could not open database configuration." >&2
    echo "Copy settings.sh.template to settings.sh and adapt it to your needs." >&2
    exit 1
else
    . "${DIR}/settings.sh"
fi

# ----------------------------------------------------------------------------

function import ()
{
    db=$2
    filename=$(basename "$1")
    echo -n "Importing ${filename} into ${db} ..."
    # Check if database exists
    err=`echo "quit" | mysql${OPTS} ${db} 2>&1`
    if [ $? != 0 ]; then
        if echo "${err}" | grep -q "Access denied"; then
            echo -e "\nDATABASE ${db} EXISTS BUT USER ${USER} DOES NOT HAVE ACCESS TO IT, ABORTING"
            exit 1
        fi
        echo -n "[creating ${db}]"
        if ! echo "CREATE DATABASE ${db};" | mysql${OPTS} 2>/dev/null ; then
            echo -e "\nDATABASE ${db} DOES NOT EXIST AND I FAILED TO CREATE IT, ABORTING"
            exit 1
        fi
    fi

    err=`mysql${OPTS} ${db} <$1`
    if [ $? != 0 ]; then
        echo "${err}"
        exit 1
    fi
    echo " done"
}

function import_structure ()
{
    # - Import world database structure/content -------------------------------
    for x in ${DIR}/Full_DB/*.sql; do
        import $x ${WORLD_DATABASE}
    done

    # - Import world database updates ----------------------------------------
    for x in ${DIR}/updates/*.sql; do
        import $x ${WORLD_DATABASE}
    done

    # - Import world database conversion --------------------------------------
    for x in ${DIR}/_wowstack/*.sql; do
        import $x ${WORLD_DATABASE}
    done

    # - Import world database localization ------------------------------------
    for x in ${DIR}/_wowstack_locales/*.sql; do
        import $x ${WORLD_DATABASE}
    done
}

# - Do not edit below! Here be dragon! ---------------------------------------

import_structure
