#!/usr/bin/env bash

ssh-keygen -t rsa -b 4096 -C "$1" -P "" -f ~/.ssh/id_rsa;
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi
echo "Created ssh key"

ssh-add -K ~/.ssh/id_rsa;
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi
echo "Added ssh key to ssh-agent"

pbcopy < ~/.ssh/id_rsa.pub;
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi
echo "Copies the contents of the id_rsa.pub file to your clipboard";

echo "Now go to GitHub and add ssh key"
