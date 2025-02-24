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

boolean fineGioco = false;

void gioco() {

  tema.play();

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
  textSize(n);
  fill(colori[randomColor], 255);
  text(parole[randomWord], width/2, height/2);
  if (n >= 250) {
    randomColor = int(random(colori.length));
    randomWord  = int(random(parole.length));
    n = 50;
  }
  n = n + 7;
}

void giocoClicks() {
  boolean stessiColori = randomWord == randomColor;

  println(mouseX < width/2, stessiColori);

  if ((stessiColori && mouseX < width/2) || (!stessiColori && mouseX > width/2)) {

    score++;
    if (score >= highscore) highscore = score;
    cinquantaPercento();
    //randomColor = int(random(colori.length));
    //randomWord  = int(random(parole.length));
    n = 50;
    punti.rewind();
    punti.play();
  } else {
    mode = FINE;
    perdo.rewind();
    perdo.play();
  }
}

void cinquantaPercento() {
  if (random(1) < 0.5) {  
    randomColor = int(random(colori.length));
    randomWord = randomColor;
  } else { 
    randomColor = int(random(colori.length));
    do {
      randomWord = int(random(colori.length));
    } while (randomWord == randomColor);
  }
}
