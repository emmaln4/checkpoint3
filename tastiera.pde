void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == FINE) {
    fineClicks();
  } else if (mode == GIOCO)
    giocoClicks();
}
