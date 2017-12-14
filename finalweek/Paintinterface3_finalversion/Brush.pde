class Brush {
  float x;
  float y;
  int a = 200;
  int b = 200;
  int c = 200;
  int d = 200;
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
    r=int(random(3));
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
      pushMatrix();
      angle += rate;

      e=width/2+sin(angle)*amplitude;
      f+=0.08;


   


      angle = -1;
      amplitude = width/2+50;
      rate = 0.009;


      stroke(map(e, 0, width, 255, 0));
      stroke(map(f, 0, height, 255, 0));
      noFill();
      translate(e, f);

      i+=5;
      rotate(radians(i));

      rect(0, 0, 50, 50);
      popMatrix();
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