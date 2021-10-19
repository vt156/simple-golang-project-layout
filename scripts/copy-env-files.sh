#!/usr/bin/env bash

# This script will copy env/.example.docker.env.sh and env/.example.env.sh files
# into the same directory, for convenience.

cd $(dirname $0)
cd ../env
echo "Navigated to $(basename $PWD) dir"

if [ ! -f .docker.env.sh ]; then
    cp .example.docker.env.sh .docker.env.sh
    echo "Copied .example.docker.env.sh to .docker.env.sh"
else
    echo "File .docker.env.sh already exists"
fi

if [ ! -f .env.sh ]; then
    cp .example.env.sh .env.sh
    echo "Copied .example.env.sh to .env.sh"
else
    echo "File .env.sh already exists"
fi
