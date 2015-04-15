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
if [[ ! -r "settings.sh" ]]; then
    echo "Could not open database configuration." >&2
    echo "Copy settings.sh.template to settings.sh and adapt it to your needs." >&2
    exit 2
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
            exit
        fi
        echo -n "[creating ${db}]"
        if ! echo "CREATE DATABASE ${db};" | mysql${OPTS} 2>/dev/null ; then
            echo -e "\nDATABASE ${db} DOES NOT EXIST AND I FAILED TO CREATE IT, ABORTING"
            exit
        fi
    fi
    mysql${OPTS} ${db} <$1
    echo " done"
}

function import_structure ()
{
    # - Import world database structure --------------------------------------
    for x in ./Full_DB/*.sql; do
        import $x ${WORLD_DATABASE}
    done

    # - Import world database updates ----------------------------------------
    for x in ./updates/*.sql; do
        import $x ${WORLD_DATABASE}
    done

    # - Import WowStack updates ----------------------------------------------
    for x in ./_wowstack/*.sql; do
        import $x ${WORLD_DATABASE}
    done

    # - Import WowStack updates ----------------------------------------------
    for x in ./_wowstack_locales/*.sql; do
        import $x ${WORLD_DATABASE}
    done
}

# - Do not edit below! Here be dragon! ---------------------------------------
import_structure
