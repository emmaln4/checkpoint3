// emma adkins
//feb 4, 2025
int mode;
final int rette   = 0;
final int cerchio = 1;
final int modello = 2;



void setup() {
  size(800, 800);
  background(0);
   //noLoop();
  mode = rette;
  
}


void draw() {
  println(mode);
  if (mode == rette) {
    rette();
  } else if (mode == cerchio) {
    cerchio();
  } else if (mode == modello) {
    modello();
  } else {
    println("error: mode = " + mode);
  }
}




void keyPressed() {
  redraw();
}
