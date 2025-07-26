function postfix () {
  if [ `systemctl is-enabled postfix` = "disabled" ]; then
    postfix_file=/etc/postfix/main.cf
    sudo chmod o+w $postfix_file
    sudo sed -i 's/relayhost = /relayhost = 127\.0\.0\.1:1025/' $postfix_file
    sudo chmod o-w $postfix_file
    sudo systemctl enable --now postfix
  fi
}
