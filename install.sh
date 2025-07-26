#!/bin/bash

set -x
set -e

source sources/packages.sh
source sources/mariadb.sh
source sources/zsh.sh
source sources/postfix.sh
source sources/docker.sh
source sources/config.sh
source sources/php.sh
source sources/composer.sh

main () {
  packages
  mariadb
  zsh
  postfix
  docker
  config
  php
  composer
}

main
