color[] coloreArray = {
  #caf0f8,
  #90e0ef,
  #48cae4,
  #0096c7,
  #0077b6,
  #023e8a,
  
};

int i = 0;


void cerchio() {
  background(0);
  noStroke();
  translate(width/2, height/2);

  float scala = 30;
  float max = 400;

  for (float r = 0; r < max; r += scala) {
    float c = 2*PI*r; //ciconfrenza
    float cSegmento = map(r, 0, max, scala*3/4, scala/2);
    float aSegmento = floor(c/cSegmento);
    float cerchioGrandezza = map(r, 0, max, scala*3/4-1, scala/4);

    for (float a = 0; a < 360; a += 360/aSegmento) {
      i++;
      if (i > 5) i = 0;
      fill(coloreArray[i]);
      

      pushMatrix();
      rotate(radians(a));
      ellipse(r, 0, cerchioGrandezza, cerchioGrandezza);
      popMatrix();
    }
  }
}

void cerchioClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800)
    mode = modello;
}
