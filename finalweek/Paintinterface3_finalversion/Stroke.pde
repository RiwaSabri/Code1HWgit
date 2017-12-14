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
    i=int(random(12));
    r=int(random(5));
    a = xInput;
    b = yInput;
    switchState=true;
    img = loadImage("stroke"+i+".jpg");
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
        fill(random(255));
        ellipse(10+a, 10+b, 50, 50);
      }
      if (r==1) {
        fill(random(255));
        rect(10+a, 10+b, 50, 50);
      }
      if (r==2) {
        fill(255);
        image(img, 10+a, 10+b, 70, 70);
      }
      if (r==3) {
        fill(255);
        rect(10+a, 10+b, 50, 50);
      }
      if (r==4) {
        fill(0, 20, 100);
        rect(10+a, 10+b, 50, 50);
      }
          if (r==5) {
        fill(0, 255, 0);
        image(img, 10+a, 10+b, 70, 70);
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