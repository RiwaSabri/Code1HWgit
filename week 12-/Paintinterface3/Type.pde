class Type {
  float x;
  float y ;
  int r;
  float a;
  float b;
  float c;
  float c1;
  float m;
  float w;
  float angle;


  boolean switchState;


  Type () {
    x= 40;
    y=210;
    r=int(random(2));
    switchState=false;
    a=random(200, 650);
    w= random(600, 800);
    b=random(200, 600);
    c=random(255);
    c1=random(100, 200);
    angle=random(360);
  }

  void display () {
    textSize(28);
    fill(255);


    textAlign(CENTER, CENTER);

    text("T", x, y);

    if (r==0) {
      textSize(28);
      fill(255, 0, 0);
      textAlign(CENTER, CENTER);
      text("T", a, w);
    }
    if (r==1) {
      textSize(100);
      fill(244, c, 9);
      textAlign(CENTER, CENTER);
      text("W", a, b);
    }
    if (r==2) {
      pushMatrix();
      rectMode(CORNER);
      fill (c, c, 60 );
      noStroke();
      rotate(radians(angle));
      rect(w, w, 100, 100);
      popMatrix();
    }
  }
  void mouse() {
    if (mouseX > 25 && mouseX < 50 &&
      mouseY > 200 && mouseY < 220) { 
      textSize(28);
      fill(100);
      textAlign(CENTER, CENTER);
      text("T", 40, 210);
      textSize(15);
      fill(0);
      stroke(0);
      textAlign(CENTER, CENTER);
      text("text", mouseX+40, mouseY);
    }
  }
}