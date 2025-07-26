function config () {
  rsync -avPh ./Pictures/ ~/Pictures/
  rsync -avPh ./Config/* ~/.config/
}
