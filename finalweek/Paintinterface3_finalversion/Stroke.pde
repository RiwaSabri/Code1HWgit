class Stroke {
  float x;
  float y ; 
  float a;
  float b;
  float r;
  int i;
  PImage img; 
  boolean switchState;

  Stroke(int xInput, int yInput) {
    x=30;
    y=160;
    i=int(random(6));
    r=int(random(5));
    a = xInput;
    b = yInput;
    switchState=true;
    img = loadImage("portrait"+i+".jpg");
  }

  void display () {
    stroke(255);
    ellipseMode(CORNER);
    noStroke();
    fill(0, 255, 0);
    ellipse(x, y, 20, 20);

    if (a<100|| a>1300
      ||b<50 || b>700) {
      switchState=false;
    }


    if (switchState) {
      if (r==0) {
        fill(0, 255, 0);
        ellipse(10+a, 10+b, 50, 50);
      }
      if (r==1) {
        fill(0, 255, 0);
        rect(10+a, 10+b, 50, 50);
      }
      if (r==2) {
        fill(0, 255, 0);
        image(img, 10+a, 10+b, random(100), random(100));
      }
      if (r==3) {
        fill(255, 25, 0);
        rect(10+a, 10+b, 50, 50);
      }
      if (a>500) {
        fill(10, 255, 100);
        rect(10+a, 10+b, 50, 50);
      }
    }
  }

  void mouse() {
    if (mouseX > 30 && mouseX < 50 &&
      mouseY > 160 && mouseY < 180) {

      textSize(12);
      fill(0);
      noStroke();

      textAlign(CENTER, CENTER);

      text("stroke:", mouseX+50, mouseY);
      text("draw on canvas", mouseX+50, mouseY+20);
    }
  }
}