
class Image {
  PImage img; 
  float x;   
  float y;   
  float dx;  
  float dy;  
  float w;
  float angle;
  boolean SwitchState=true;


 Image() {
    x = width/2;
    y = height/2;
    w=50;
    dx = random(-8, 8);  
    dy = random(-8, 8);
    angle=0;
   
  }

 
  void display() {
    img = loadImage("portrait2.jpg");
    noStroke();
    fill(100);
    rotate(radians(angle));
    image(img,x, y, w, w);
  }

  
  void update() {
    if (x < 0 || x > width-w) {
      dx *=-1;;
      x += dx;
    } else {
      x += dx;
    } 
    
    if (y < 0 || y > height-w) {
      dy *=-1;
      y += dy;
    } else { 
      y += dy;
    }
  }
  void clicked() {
  if (dist(x,y,mouseX,mouseY)<w){
    angle=angle+1;
    w+=10;
    background(random(255));
    x=mouseX;
    SwitchState=!SwitchState;
    
 
  }}}