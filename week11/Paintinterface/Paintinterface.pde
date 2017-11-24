// create a single Ball object
Canvas c;
Toolbar t;
Rectangle r;
Ellipse e;

void setup() {
  size(1000, 900);

  c = new Canvas();
  t=new Toolbar();
  r= new Rectangle();
  e= new Ellipse();
}

void draw() {
  background(0);

  c.display();
  
  t.display();
  r.display();
  e.display();
  r.update();

  
}