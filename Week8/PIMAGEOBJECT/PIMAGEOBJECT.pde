
Image i;

void setup() {
  size(600, 600);
  
  i = new Image();
}

void draw() {
  background(0);

  i.update();
  i.display();
}
void mousePressed(){
i.clicked();}