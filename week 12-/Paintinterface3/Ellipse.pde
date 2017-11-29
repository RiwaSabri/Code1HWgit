class Ellipse {
  float x;   
  float y;  
  float a;
  float b;
  float c;
  float c1;
  float m;
  float w;
  boolean switchState;
  int r;
  float angle;



  Ellipse() {
    x = 25;
    y = 90;
    switchState=false;
    a=random(100, 650);
    w= random(600, 800);
    b=random(100, 600);
    c=random(255);
    c1=random(100, 200);

    r=int(random(5));
  }


  void display() {
    stroke(255);
    ellipseMode(CORNER);
    noFill();
    ellipse(x, y, 30, 30);


    if (r==0) {
      ellipseMode(CORNER);
      stroke(c, c, 60);
      ellipse(a, b, 100, 100);
    }
    if (r==1) {
      ellipseMode(CORNER);
      fill(244, c, 9);
      noStroke();
      ellipse(a, b, 200, 200);
    }
    if (r==2) {

      ellipseMode(CORNER);
      fill (c, c, 60 );
      noStroke();

      ellipse(w, w, 100, 100);
    }
    if (r==3) {
      ellipseMode(CORNER);
      fill(c, c, 60);
      noStroke();
      ellipse(a, b, 600, 100);
    }
    if (r==4) {
      fill(66, c, 244);
      noStroke();
      ellipse(a, b, 500, 100);
    }
    if (r==5) {
      rectMode(CORNER);
      fill(66, c1, 244);
      noStroke();
      ellipse(a, b, 90, 100);
    }
  }
void mouse() {
if (mouseX > 25 && mouseX < 25+30 &&
      mouseY > 90 && mouseY < 90+30) { 
      fill(200);
      stroke(100);
      ellipse(25, 90, 30, 30);

      textSize(15);
      fill(0);
      stroke(0);
      textAlign(CENTER, CENTER);

      text("ellipse", mouseX+40, mouseY);
    }}
}