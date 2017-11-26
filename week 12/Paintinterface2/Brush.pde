class Brush {
  float x;
  float y;

  
Brush() {
  x=26;
  y=240;
}

void display() {
  rectMode(CORNER);
  fill(0,255,0);
  rect(x,y,30,20);

}}