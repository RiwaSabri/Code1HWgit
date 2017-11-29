class Brush {
  float x;
  float y;


  Brush() {
    x=26;
    y=240;
  }

  void display() {
    rectMode(CORNER);
    fill(0, 255, 0);
    rect(x, y, 30, 20);
  }

  void mouse () {
    if (mouseX>26 && mouseX<26+30 
      && mouseY> 240 && mouseY<240+20 ) {
    
      noStroke();
      fill(0,0,255);
      rect(x, y, 30, 20);
      textSize(15);
      fill(0);
      stroke(0);
      textAlign(CENTER, CENTER);
      text("ellipse", mouseX+40, mouseY);
    }
  }
}