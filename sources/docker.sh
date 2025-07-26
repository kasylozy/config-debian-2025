function docker() {
  if [ `systemctl is-enabled docker.service` = "disabled" ] ; then
    sudo systemctl enable --now docker.service
  fi

  if ! sudo docker ps | grep mail; then
    sudo docker run -d --restart unless-stopped -p 1080:1080 -p 1025:1025 dominikserafin/maildev:latest
  fi
}
