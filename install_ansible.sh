#!/bin/bash

ANSIBLE_VIRTUALENV="$(pwd)/.venv"

SUDO=''
if ! type "sudo" > /dev/null; then
    SUDO='sudo'
fi


$SUDO apt-get install virtualenv -y

virtualenv $ANSIBLE_VIRTUALENV

$ANSIBLE_VIRTUALENV/bin/python -m pip install ansible==9.1.0

