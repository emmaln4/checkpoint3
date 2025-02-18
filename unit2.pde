//emma adkins
// febbario 11, 2025
int mode;
final int INTRO = 0;
final int GIOCO = 1;
final int FINE  = 2;

//giof
PImage[] gif, gif2;
int f, f2;
int g, g2;

//font
PFont hacked;
int m;
float alpha;


void setup() {
  size(1000, 600);
  mode = FINE;

  f = 23;
  f2 = 92;
  g = 0;
  g2 = 0;
  gif = new PImage[f];
  gif2 = new PImage[f2];

  int a = 0;
  while ( a < f ) {
    gif[a] = loadImage("gif" +a+ ".gif");
    a++;
  }
  int n = 0;
  while ( n < f2 ) {
    gif2[n] = loadImage("frame_" +n+ "_delay-0.05s.gif");
    n++;
  }

  //text
  textAlign(CENTER, CENTER);
  hacked = createFont("hacked.ttf", 100);
  m = 50;
  alpha = 200;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GIOCO) {
    gioco();
  } else if (mode == FINE) {
    fine();
  }
}
