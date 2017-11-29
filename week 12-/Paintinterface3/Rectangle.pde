class Rectangle {
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


  Rectangle() {
    x = 25;
    y = 55;
    
    switchState=false;
    a=random(100, 300);
    w= random(600, 800);
    b=random(300, 500);
    c=random(255);
    c1=random(100, 200);

    r=int(random(5));
    angle=random(360);
  }


  void display() {
    stroke(255);
    rectMode(CORNER);
    noFill();
    rect(x, y, 30, 20);

    if (r==0) {
      rectMode(CORNER);
      stroke(c, c, 60);
      rect(a, a, 100, 100);
    }
    if (r==1) {
      rectMode(CORNER);
      fill(244, c, 9);
      noStroke();
      rect(b, b, 200, 200);
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
      rect(a, w, 500, 100);
    }
    if (r==5) {
      rectMode(CORNER);
      fill(66, c1, 244);
      noStroke();
      rect(b, a, 90, 100);
    }
  }

  void mouse() {
    if (mouseX > 25 && mouseX < 25+30 &&
      mouseY > 55 && mouseY < 55+20) {
      fill(200);
      stroke(100);
      rect(25, 55, 30, 20);
      textSize(15);
      fill(0);
      stroke(0);
      textAlign(CENTER, CENTER);

      text("rectangle", mouseX+50, mouseY);
    }
  }
}