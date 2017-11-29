ArrayList<Rectangle> r = new ArrayList<Rectangle>();
ArrayList<Ellipse> e= new ArrayList <Ellipse>();
ArrayList<Line> l =new ArrayList <Line>();
ArrayList<Type> ty=new ArrayList<Type>();
ArrayList <Stroke> s =new ArrayList <Stroke>();
ArrayList<Brush> b = new ArrayList <Brush>(); 
ArrayList <Eraser> er=new ArrayList<Eraser>();
boolean switchState=false;
Canvas c;
Toolbar t;

void setup() {
  size(1400, 900);
}

void draw() {
  background(100);
  c = new Canvas();
  c.display();
  t=new Toolbar();
  t.display();

  noFill();
  stroke(255);
  rect(25, 55, 30, 20);
  for (int i = 0; i < r.size(); i++) {
    Rectangle r1 = r.get(i);
    r1.display();
    r1.mouse();
  }

  ellipseMode(CORNER);
  noFill();
  stroke(255);
  ellipse(25, 90, 30, 30);
  for (int i = 0; i < e.size(); i++) {
    Ellipse e1 = e.get(i);
    e1.display();
    e1.mouse();
  }

  stroke(255);
  noFill();
  line(27, 138, 57, 138);
  for (int i = 0; i < l.size(); i++) {
    Line l1 = l.get(i);
    l1.display();
    l1.mouse();
  }

  textSize(28);
  fill(255);
  textAlign(CENTER, CENTER);
  text("T", 40, 210);
  for (int i = 0; i < ty.size(); i++) {
    Type ty1 = ty.get(i);
    ty1.display();
    ty1.mouse();
  }

  ellipseMode(CORNER);
  noStroke();
  fill(0, 255, 0);
  ellipse(30, 160, 20, 20);
  for (int i = 0; i < s.size(); i++) {
    Stroke s1 = s.get(i);
    s1.display();
    s1.mouse();
  }
  if (switchState==true) {
    s.add(new Stroke(mouseX, mouseY));
  }


  rectMode(CORNER);
  noStroke();
  fill(0, 255, 0);
  rect(26, 240, 30, 20);
  for (int i = 0; i < b.size(); i++) {
    Brush b1 = b.get(i);
    b1.display();
    b1.mouse();
  }

  rectMode(CORNER);
  noStroke();
  fill(255);
  rect(26, 275, 30, 20);

  for (int i = 0; i < er.size(); i++) {
    Eraser er1 = er.get(i);
    er1.display();
    er1.mouse();
  }
}

void mousePressed() {
  if (mouseX > 25 && mouseX < 25+30 &&
    mouseY > 55 && mouseY < 55+20) {
    r.add(new Rectangle());
  }
  if (mouseX > 25 && mouseX < 25+30 &&
    mouseY > 90 && mouseY < 90+30) {
    e.add(new Ellipse());
  }
  if (mouseX >27 && mouseX < 57 &&
    mouseY > 130 && mouseY < 140) {
    l.add(new Line());
  }
  if (mouseX > 25 && mouseX < 50 &&
    mouseY > 200 && mouseY < 220) {
    ty.add(new Type());
  }
  if (mouseX > 30 && mouseX < 50 &&
    mouseY > 160 && mouseY < 180) {
    switchState=true;
  } else {
    switchState=false;
  }
  if (mouseX>26 && mouseX<26+30 
    && mouseY> 240 && mouseY<240+20 ) {
    b.add(new Brush());
  }

  if (mouseX>26 && mouseX<26+30 &&
    mouseY>275 && mouseY< 275+20) {
    er.add(new Eraser());
  }
}