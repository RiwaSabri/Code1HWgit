
boolean switchState=false;
boolean switchState2=false;
boolean switchState3=false;
boolean switchState4=false;
boolean switchState5=false;
Canvas c;
Toolbar t;
Brush b;


ArrayList<Rectangle> r = new ArrayList<Rectangle>();
ArrayList<Ellipse> e = new ArrayList<Ellipse>();
ArrayList<Line> l = new ArrayList<Line>();
ArrayList<Stroke> s = new ArrayList<Stroke>();
ArrayList<Type> ty = new ArrayList<Type>();



void setup() {
  size(1400, 900);

  c = new Canvas();
  t=new Toolbar();
  b= new Brush();
}

void draw() {
  background(150);
  c.display();
  t.display(); 
  b.display();





  ellipseMode(CORNER);
  noFill();
  stroke(255);
  ellipse(25, 90, 30, 30);

  for (int i=0; i<e.size(); i++) {
    Ellipse e1 = e.get(i);
    e1.display();
    if (mouseX > 25 && mouseX < 25+30 &&
      mouseY > 90 && mouseY < 90+30) { 
      fill(200);
      stroke(100);
      ellipse(25, 90, 30, 30);

      textSize(15);
      fill(0);
      stroke(0);
      textAlign(CENTER, CENTER);

      text("ellipse", mouseX+40, mouseY);
    }
  }
  ellipseMode(CORNER);
  noStroke();
  fill(0, 255, 0);
  ellipse(30, 160, 20, 20);
  for (int i=0; i<s.size(); i++) {
    Stroke s1 = s.get(i);
    s1.display();
    if (mouseX > 30 && mouseX < 50 &&
      mouseY > 160 && mouseY < 180) { 
      fill(255, 0, 0);
      ellipse(30, 160, 20, 20);

      textSize(15);
      fill(0);
      stroke(0);
      textAlign(CENTER, CENTER);

      text("stroke", mouseX+40, mouseY);
    }
  }

  textSize(28);
  fill(255);


  textAlign(CENTER, CENTER);

  text("T", 40, 210);
  for (int i=0; i<ty.size(); i++) {
    Type ty1 = ty.get(i);
    ty1.display();
    if (mouseX > 25 && mouseX < 50 &&
      mouseY > 200 && mouseY < 220) { 
      textSize(28);
      fill(100);


      textAlign(CENTER, CENTER);

      text("T", 40, 210);


      textSize(15);
      fill(0);
      stroke(0);
      textAlign(CENTER, CENTER);

      text("text", mouseX+40, mouseY);
    }
  }

  stroke(255);
  noFill();
  line(27, 138, 57, 138);

  for (int i=0; i<l.size(); i++) {
    Line l1 = l.get(i);
    l1.display();
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


  noFill();
  stroke(255);
  rect(25, 55, 30, 20);
  for (int i=0; i<r.size(); i++) {
    Rectangle r1 = r.get(i);
    r1.display();
    if (mouseX > 25 && mouseX < 25+30 &&
      mouseY > 55 && mouseY < 55+20) {
      fill(200);
      stroke(100);
      rect(25, 55, 30, 20);
      textSize(15);
      fill(0);
      stroke(0);
      textAlign(CENTER, CENTER);

      text("rectangle", mouseX+50, mouseY);
    }
  }
}
void mousePressed() {
  if (mouseX > 25 && mouseX < 25+30 &&
    mouseY > 55 && mouseY < 55+20) {
    Rectangle r2= new Rectangle();
    r.add(r2);
    r2.update();
    switchState=!switchState;
  }
  if (mouseX > 25 && mouseX < 25+30 &&
    mouseY > 90 && mouseY < 90+30) {

    Ellipse e2= new Ellipse();
    e.add(e2);
    e2.update();
    switchState2=!switchState2;
  }
  if (mouseX > 27 && mouseX < 57 &&
    mouseY > 130 && mouseY < 140) {

    Line l2= new Line();
    l.add(l2);
    l2.update();
    switchState3=!switchState3;
  }
  if (mouseX > 30 && mouseX < 50 &&
    mouseY > 160 && mouseY < 180) {

    Stroke s2= new Stroke();
    s.add(s2);
    s2.update();
    switchState4=!switchState4;
  }
  if (mouseX > 25 && mouseX < 50 &&
    mouseY > 200 && mouseY < 220) {
    Type ty2= new Type();
    ty.add(ty2);
    ty2.update();
    switchState5=!switchState5;
  }
}