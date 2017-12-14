class Line {
  float x;   
  float y;  
  float a;
  float b;
  float c;
  float c1;
  float m;
  float w;
  boolean switchState;
  int r;
  float angle;



  Line() {
    x = 25;
    y = 138;
    switchState=false;
    a=random(100, 650);
    w= random(600, 800);
    b=random(100, 600);
    c=random(255);
    c1=random(100, 200);

    r=int(random(5));
  }


  void display() {

    stroke(255);
    noFill();

    line(x+2, y, x+30, y);

    if (r==0) {

      fill(0, 0, 255);
      stroke(0, 0, 255);
      line(a, b, b, a);
    }
    if (r==1) {

      fill(255, 0, 0);
      stroke(255, 0, 0);

      line(a, b, b, a);
    }
    if (r==2) {


      fill (0, 255, 0 );
      stroke(0, 255, 0 );


      line(a, b, b, a);
    }
    if (r==3) {

      fill(255, 0, 0);
      stroke(255, 0, 0);

      line(w, b, w, a);
    }
    if (r==4) {
      fill(0);
      stroke(0);

      line(a, b, b, a);
    }
    if (r==5) {

      fill(66, 100, 244);
      stroke(66, 100, 244);
      line(a, b, b, a);
    }
  }
  void mouse() {
    if (mouseX > 27 && mouseX < 57 &&
      mouseY > 130 && mouseY < 140) {
      fill(100);
      stroke(100);
      line(27, 138, 57, 138);
      textSize(15);
      fill(0);
      stroke(0);
      textAlign(CENTER, CENTER);
      text("line", mouseX+40, mouseY);
    }
  }
}