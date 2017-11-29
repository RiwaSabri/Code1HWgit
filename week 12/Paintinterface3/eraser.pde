class Eraser {
  float x;
  float y;

  Eraser() {
    x=26;
    y=275;
  }


  void display() {

    rectMode(CORNER);
    fill(255);
    rect(x, y, 30, 20);
  }

  void mouse () {
    if (mouseX>26 && mouseX<26+30 &&
      mouseY>270 && mouseY< 270+20) {
        
      rectMode(CORNER);
      fill(200);
      rect(x, y, 30, 20);
      textSize(15);
      fill(0);
      noStroke();
      textAlign(CENTER, CENTER);
      text("eraser", mouseX+50, mouseY);
    }
  }
}