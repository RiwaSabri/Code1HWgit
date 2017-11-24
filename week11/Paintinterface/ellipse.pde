class Ellipse {
  float x;   
  float y;  


  
Ellipse() {
    x = 25;
    y = 90;
  }

  
  void display() {
    stroke(255);
    ellipseMode(CORNER);
    noFill();
    ellipse(x, y, 30, 30);
  }}