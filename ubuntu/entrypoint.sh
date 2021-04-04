#!/bin/bash
set -e
# Fix permission issue with mount
sudo chown 1000:1000 ${HOME} -R
sudo -HEu ${USER} "$@"
