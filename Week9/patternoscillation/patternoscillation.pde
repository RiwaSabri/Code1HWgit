float x;
float angle;
float rate;
float amplitude;
float y;


float i=0;


void setup() {
  size(700,700);
  noStroke();
  rectMode(CENTER);
 
  
  angle = -1;
  amplitude = width/2+50;
  rate = 0.009;
}

void draw() {
 //background(255);
  
  angle += rate;
  
  x =width/2+sin(angle)*amplitude;
  y+=0.08;
  
 
  

   
    stroke(map(x,0,width,255,0));
    stroke(map(y,0,height,255,0));
    translate(x,y);
  
   i+=5;
  rotate(radians(i));

rect(0, 0, 50, 50);
  
 
}