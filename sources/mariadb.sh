function mariadb () {
  if [ `systemctl is-enabled mariadb` = "disabled" ]; then
    sudo systemctl enable --now mariadb
  fi
}