int[] x;
int[] y;
int d;
int n;
int tempx, tempy;



void modello() {
  background(255);
  
  d = 200;
  n = 100;
  x = new int[n];
  y = new int[n];
  tempx = 100;
  tempy = 100;
  
  int i = 0;
  while( i < n) {
    x[i] = tempx;
    y[i] = tempy;
    
    tempx =+ 100;
    if (tempx == 800) {
      tempx = 100;
      tempy =+ 100;
    }
    i++;
  }
}

void controllare(int i) {
  noFill();
  strokeWeight(2);
  stroke(0);
  circle(x[i], y[i], d);
}

void modelloClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800)
    mode = rette;
}
