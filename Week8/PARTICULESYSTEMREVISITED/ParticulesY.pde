class Particle {
  float x; 
  float y;
  float dx;
  float dy;
  color c;
  float s;
  float life;
  float z;

  //constructor
  Particle(float _x, float _y) {
    x = _x;
    y = _y;
    dx = random(-3, 3);
    dy = random(-3, 3);
    c = color(66,random(255),244,random(100,255));
    s = random(40,100);
    life = 100;
    z=0;
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, s, s);
  }

  void update() {
    life--;
    s = map(life, 60, 0, 50, 0);
    
  
    if (x < 0 || x > width) {
      dx *= -0.5;
    }
    
    if (y < 0 || y > height) {
      dy *= -0.5;
    }
    z=z+1;
    y +=dy*z;
  }
  
  void setSize(float siz) {
    s = siz;
  }
}