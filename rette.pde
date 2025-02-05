void rette() {
  background(0);

  translate(width/2, height/2);

  for (int n=0; n<30; n++) {
    stroke(random(255), random(255), random(255));

    if (frameCount%60==0) {
      background(#eeeeee);
    }



    for (float a=0; a<360; a=a+1) {
      float CharlesMarcHervePercevalLeclerc = random(50, 150);
      float CarlosSainzVázquezDeCastroCenamorRincónRebolloVirtoMorenoDeArandaDonPerUrrielagoiriaPérezDelPulgar = random(150, 350);
      pushMatrix();
      rotate(radians(a));
      strokeCap(CORNER);
      strokeWeight(4);
      line(CharlesMarcHervePercevalLeclerc, 0, CarlosSainzVázquezDeCastroCenamorRincónRebolloVirtoMorenoDeArandaDonPerUrrielagoiriaPérezDelPulgar, 0);
      popMatrix();
    }
  }
}

void retteClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800)
    mode = cerchio;
}
