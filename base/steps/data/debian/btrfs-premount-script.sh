#!/bin/sh

set -e

PREREQ=""

prereqs()
{
        echo "${PREREQ}"
}

case "${1}" in
        prereqs)
                prereqs
                exit 0
                ;;
esac

if [ -x /sbin/btrfs ]
then
        modprobe btrfs
        /sbin/btrfs device scan 2> /dev/null
fi
