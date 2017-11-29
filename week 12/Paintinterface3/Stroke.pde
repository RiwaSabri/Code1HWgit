class Stroke {
  float x;
  float y ; 
  float a;
  float b;
  float r;
  boolean switchState;

  Stroke(int xInput, int yInput) {
    x=30;
    y=160;
    r=int(random(2));
    a = xInput;
    b = yInput;
    switchState=true;
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
        ellipse(10+a, 10+b, 50, 50);
      }
      if (r==1) {
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
      text("draw on canvas",mouseX+50,mouseY+20);
    }
  }
}