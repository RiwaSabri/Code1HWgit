class Toolbar {
  float x;   //x position
  float y;   //y position


  
Toolbar() {
    x = 20;
    y = 50;
}

  
  void display() {
    noStroke();
    rectMode(CORNER);
    fill(200);
    rect(x, y, 40, 600);
  }}