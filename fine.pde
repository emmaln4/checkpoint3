void fine() {

  tema.play();

  //gif
  image(gif[g], 0, 0, width, height);
  g++;
  if (g == f) g = 0;

  textFont(hacked);
  fill(#220d5f, alpha);
  textSize(m);
  text("game over", width/2, height/2);
  if (m > 400) m = 50;
  if (m == 50) alpha = 200;
  m++;
  alpha = alpha - 0.5;

  textSize(50);
  fill(#fe08e1);
  text("score: " + score, 150, 50);
  text("highscore: " + highscore, 800, 50);
}

void fineClicks() {
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    resetGioco();
  }
}
