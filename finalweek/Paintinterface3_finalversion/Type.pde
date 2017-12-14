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
    
    }
    
    
  void keyPressed(){


    if (key=='a') {
      textSize(28);
      fill(255, 0, 0);
      textAlign(CENTER, CENTER);
      text("T", a, w);
    }
    if (key=='b') {
      textSize(100);
      fill(244, c, 9);
      textAlign(CENTER, CENTER);
      text("W", a, b);
    }
    if (key=='c') {
      pushMatrix();
      rectMode(CORNER);
      fill (c, c, 60 );
      noStroke();
      rotate(radians(angle));
      rect(w, w, 100, 100);
      popMatrix();
    }
       if (key=='d') {
      textSize(100);
      fill(0, 0, 255);
      textAlign(CENTER, CENTER);
      text("m", 800, 800);
    }
    if (key=='e') {
      textSize(100);
      fill(0, 0, 255);
      textAlign(CENTER, CENTER);
      text("o", 700, 800);
    }
    if (key=='f') {
      textSize(100);
      fill(0, 200,0);
      textAlign(CENTER, CENTER);
      text("p", 600, 800);
    }
    if (key=='g') {
      textSize(100);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("q", 500, 800);
    }
    if (key=='h') {
      textSize(100);
      fill(255, 0, 255);
      textAlign(CENTER, CENTER);
      text("r", 400, 800);
    }
    if (key=='i') {
      textSize(100);
      fill(0, 0, 255);
      textAlign(CENTER, CENTER);
      text("l", 300, 800);
    }
    if (key=='j') {
      textSize(300);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("m", 200, 500);
    }
    if (key=='k') {
      textSize(300);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("m", 200, 500);
    }
    if (key=='l') {
      textSize(300);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("m", 200, 500);
    }
    if (key=='m') {
      textSize(300);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("m", 200, 500);
    }
    if (key=='n') {
      textSize(300);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("m", 200, 500);
    }
    if (key=='o') {
      textSize(300);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("m", a, 500);
    }
    if (key=='p') {
      textSize(300);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("m", b, 500);
    }
    if (key=='q') {
      textSize(300);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("m", 200, b);
    }
    if (key=='r') {
      textSize(300);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("m", 200, 500);
    }
    if (key=='s') {
      textSize(300);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("m", 100, 400);
    }
    if (key=='t') {
      textSize(300);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("m", 100, 200);
    }
    if (key=='u') {
      textSize(300);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("m", 600, 300);
    }
    if (key=='v') {
      textSize(300);
      fill(0, 255, 255);
      textAlign(CENTER, CENTER);
      text("m", 500, 200);
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
  }}