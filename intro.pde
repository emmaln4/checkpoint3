void intro(){
  //gif 
  image(gif[g], 0, 0, width, height);
  g++;
  if (g == f) g = 0;
  
  //text
  textFont(hacked);
  fill(#220d5f, alpha);
  textSize(m);
  text("color game", width/2, height/2);
  if (m > 400) m = 50;
  if (m == 50) alpha = 200;
  m++;
  alpha = alpha - 0.5;
}

void introClicks() {
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    mode = GIOCO;
  }
}
