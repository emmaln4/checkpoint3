
int d;

//colori
color Purple     = #EAE4E9;
color Yellow     = #FFF1E6;
color Orange     = #FDE2E4;
color Pink       = #FAD2E1;
color lightBlue  = #DFE7FD;
color darkBlue   = #CDDAFD;
color lightGreen = #F0EFEB;
color darkGreen  = #E2ECE9;

color[] palette = {Purple, Yellow, Orange, Pink, lightBlue, darkBlue, lightGreen, darkGreen};

void modello() {
  background(0);
  //noLoop();
  d = 200;

  int y = 0;
  while (y <= height) {
    int x = 0;
    println(y);
    while (x <= width) {
      println("...", x);
      int randomColor = int(random(palette.length));
      fill(palette[randomColor], 100);
      noStroke();
      circle(x, y, d);
      x = x + 100;
    }
    y = y + 100;
  }
}



void modelloClicks() {
  if (mouseX > 400 && mouseX < 800 && mouseY > 0 && mouseY < 800)  mode++;
  if (mouseX > 0 && mouseX < 400 && mouseY > 0 && mouseY < 800)  mode--;
  if (mode < 0) mode = 2;
  if (mode > 2) mode = 0;
}
