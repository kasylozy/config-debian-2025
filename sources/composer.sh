function composer () {
  if [ ! -f /usr/local/bin/composer ]; then
    wget https://getcomposer.org/download/2.8.10/composer.phar
    chmod +x composer.phar
    sudo mv composer.phar /usr/local/bin/composer
  fi
}
