class Brush {
  float x;
  float y;
  int a ;
  int b ;
  int c ;
  int d ;
  int z;
  int r;

  float e;

  float rate;
  float amplitude;
  float f;


  float i;

  float angle = 0;


  Brush() {

    x=26;
    y=240;
    r=int(random(4));
    a=200;
    b=200;
    c=200;
    d=200;
    z=10;
    i=0;
    e=0;
    f=700;
  }

  void display() {
    rectMode(CORNER);
    fill(0, 255, 0);
    rect(x, y, 30, 20);

    if (r==0) {

      float fillGreyscaleColor = map(mouseX, 0, width, 0, 255);
      fill(fillGreyscaleColor);
      float strokeGreyscaleColor = map(mouseY, 0, height, 255, 0);
      stroke(strokeGreyscaleColor);
      ellipse(a, b, 12, 12);

      if (a > 1300) {
        a = 200;
        b += 20;
      } else {
        a += 20;
      }
    }

    if (r==1) {
      pushMatrix();
      angle += 5;
      c += 5;

      translate(c, d);
      rotate(radians(angle)); 

      float rColor = map(c, 0, width, 0, 255);
      float gColor = map(d, 0, height, 0, 255);
      float bColor = 100;

      fill(rColor, gColor, bColor);
      rect(0, 0, mouseX * 0.5, mouseY * 0.5);

      if (x > width) {
        c = 200;
        d += 50;
      }
      popMatrix();
    }
    if (r==2) {
      if (z<500) {
        pushMatrix();
        noStroke();
        fill(random(200));
        z=z+1;
        rect( 700, 200, z, z);
        popMatrix();
      } else {
        z=10;
      }
    }
  
  if (r==3) {
    if (z<500) {
      pushMatrix();
      noStroke();
      fill(random(200));
      z=z+1;
      ellipse( 300, 400, z, z);
      popMatrix();
    } else {
      z=10;
    }
  }
}

void mouse () {
  if (mouseX>26 && mouseX<26+30 
    && mouseY> 240 && mouseY<240+20 ) {


    noStroke();
    fill(0, 0, 255);
    rect(x, y, 30, 20);
    textSize(15);
    fill(0);
    stroke(0);
    textAlign(CENTER, CENTER);
    text("brush", mouseX+40, mouseY);
  }
}
}