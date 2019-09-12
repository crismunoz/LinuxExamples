#!/bin/bash

# Reading the options
TEMP=`getopt -o u:p:h:g: --long user:,password:,home:,group: -- "$@"`

eval set -- "$TEMP"

# Extractiong options and their arguments into variables

while true ; do
        case "$1" in
                -u|--user)
                        USERNAME=$2 ; shift 2 ;;
                -p|--password)
                        PASSWORD=$2 ; shift 2 ;;
                -h|--home)
                        HOMEPATH=$2 ; shift 2 ;;
                -g|--group)
                        GROUPNAMES=$2 ; shift 2 ;;
                --) shift ; break ;;
                *) echo "Internal error!" ; exit 1 ;;
        esac
done

echo "USERNAME: $USERNAME"
echo "PASSWORD: $PASSWORD"
echo "HOME: $HOMEPATH"
echo "GROUPNAMES: $GROUPNAMES"

unset USERNAME
unset PASSWORD
unset HOME
unset GROUPNAMES
