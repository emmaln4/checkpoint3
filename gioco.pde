int randomWord  = (int) random(0, 5);
int randomColor = (int) random(0, 5);
int img;
int score;
int highscore = 0;

color rosa      = #d45097;
color viola     = #650897;
color blu       = #232e9e;
color arancione = #fe5e55;
color bianco    = #ffffff;
color giallo    = #fccc47;

color coloreGiusto;


String[] parole = {"pink", "purple", "blue", "orange", "white", "yellow"};
color[] colori  = {rosa, viola, blu, arancione, bianco, giallo};
//String[] numeri = {0, 1, 2, 3, 4, 5};

void gioco() {
  
  score = 0;
  if (score >= highscore) highscore = score;
  coloreGiusto = colori[int(random(colori.length))];

  //gifs
  image(gif2[g2], 0, 0, width, height);
  g2++;
  if (g2 == f2) g2 = 0;
  
  background(0);

  if (gif2[g2] != null) {
    PImage frame = gif2[g2].copy();  // coppia del frame

    // grescale per solo la destra
    frame.loadPixels();
    for (int x = frame.width / 2; x < frame.width; x++) {
      for (int y = 0; y < frame.height; y++) {
        int index = x + y * frame.width;
        color c = frame.pixels[index];
        float gray = (red(c) + green(c) + blue(c)) / 3;
        frame.pixels[index] = color(gray);
      }
    }
    frame.updatePixels();


    image(frame, 0, 0, width, height);
  }

  //text
  textFont(hacked);
  textSize(m);
  fill(colori[randomColor], 255);
  text(parole[randomWord], width/2, height/2);
  if (m >= 250) {
    randomColor = int(random(colori.length));
    randomWord  = int(random(parole.length));
    m = 50;
  }
  m = m + 7;
}

void mousePressed() {
  boolean stessiColori = colori[randomColor] == coloreGiusto;

  if ((stessiColori && mouseX < width/2) || (!stessiColori && mouseX > width/2)) {
    score++;
    randomColor = int(random(colori.length));
    randomWord  = int(random(parole.length));
    coloreGiusto = colori[int (random(parole.length))];
    m = 50;
  }
}
