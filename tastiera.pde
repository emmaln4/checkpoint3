void mouseReleased() {
  if (mode == rette) {
    retteClicks();
  } else if (mode == cerchio) {
    cerchioClicks();
  } else if (mode == modello) {
    modelloClicks();
  }
}
