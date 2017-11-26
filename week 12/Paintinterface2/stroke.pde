class Stroke {
  float x;
  float y ; 
  float a;
  float b;
  float c;
  float c1;
  float m;
  float w;
  boolean switchState;
  int r;
  float angle;



  Stroke() {
    x=30;
    y=160;
    switchState=false;
    a=random(100, 650);
    w= random(600, 800);
    b=random(100, 600);
    c=random(255);
    c1=random(100, 200);

    r=int(random(5));
    angle=random(360);
  }

  void display () {
    stroke(255);
    ellipseMode(CORNER);
    noStroke();
    fill(0, 255, 0);
    ellipse(x, y, 20, 20);
  
    
     if (switchState) {
      if (r==0) {
        rectMode(CORNER);
        stroke(c, c, 60);
        rect(a, b, 100, 100);
      }
      if (r==1) {
        rectMode(CORNER);
        fill(244, c, 9);
        noStroke();
        rect(a, b, 200, 200);
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
      if (r==3) {
        rectMode(CORNER);
        fill(c, c, 60);
        noStroke();
        rect(a, b, 600, 100);
      }
      if (r==4) {
        fill(66, c, 244);
        noStroke();
        rect(a, b, 500, 100);
      }
      if (r==5) {
        rectMode(CORNER);
        fill(66, c1, 244);
        noStroke();
        rect(a, b, 90, 100);
      }
    }
  }

void update () {

    switchState=true;
  }}