class Canvas {
  float x;   
  float y;   

  Canvas() {
    x = width/2-20;
    y = height/2;
  }

  void display() {
    noStroke();
    rectMode(CENTER);
    fill(255);
    rect(x+50, y, 1300, 800);
  }
}