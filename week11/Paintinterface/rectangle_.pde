class Rectangle {
  float x;   
  float y;  
  float a;
  float b;
  float c;
  float m;
  boolean switchState;
  int r;
  float angle;

  
Rectangle() {
    x = 25;
    y = 55;
    switchState=false;
    a=random(100,800);
    b=random(100,800);
    c=random(255);
    m=random(100,300);
    r=int(random(5));
    angle=random(360);
    
  }

  
  void display() {
    stroke(255);
    rectMode(CORNER);
    noFill();
    rect(x, y, 30, 20);
    if (switchState==true){
      if (r==0){
    fill(c,c,60);
  rect(a,b,100,100);}
if (r==1){
  fill(c,c,60);
  ellipse(a,b,200,200);
}
if (r==2){
  fill (c,c,60 );
  rotate(radians(angle));
  rect(a,b,100,100);
 
}
if(r==3) {
  fill(c,c,60);
  rect(m,b,600,100);
}
if (r==4){
  fill(c,c,60);
  rect(m,b,800,100);
}
if (r==5){
}


}
  }
void update () {
  if (mousePressed){
  if (mouseX > 25 && mouseX < 25+30 &&
        mouseY > 55 && mouseY < 55+20) {
          switchState=true;
        }
          
}
}

}