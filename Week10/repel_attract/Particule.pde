class Particle {
  PVector pos;
  PVector vel;
  PVector acc;
  float life;
  float maxSpeed;

  Particle(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-1, 1), random(-1, 1));
    acc = new PVector(0, 0);
    life = 300;
    maxSpeed = 70;
  }

  void update() {
    acc.mult(0.5);
    vel.add(acc);
    vel.limit(maxSpeed);
    pos.add(vel);

    life--;
  }

  void display() {
    float s = map(life, 300, 0, 20, 0);
    noFill();
    stroke(255);
    ellipse(pos.x, pos.y, s, s);
    stroke(255,255,255,50);
    line(pos.x,pos.y,mouseX,mouseY);
  }

  void addAttract(float x, float y, float maxForce) {
    float angle = atan2(y - pos.y, x - pos.x);
    float forceStr = maxForce / (1 + dist(pos.x, x, pos.y, y));
    PVector newForce = new PVector(cos(angle), sin(angle));
    newForce = newForce.mult(forceStr);
    acc.add(newForce);
  }
  
  void addRepel(float x, float y, float maxForce) {
     float angle = atan2(pos.y-y, pos.x-x);
    float forceStr = maxForce / (1 + dist(pos.x, x, pos.y, y));
    PVector newForce = new PVector(cos(angle), sin(angle));
    newForce = newForce.mult(forceStr);
    acc.add(newForce);
  }
    
  
  void addRandomWalker(){


 float  a = width/2;
 float b= height/2;

float r = int(random(2));
  
  if (r == 0) {
    a-= 10;
    pos.x+=1;
       
 
  } else if (r == 1) {
    b+= 10;
    pos.y+=2;
   
  } else {
    a += 10;
    b-=10;
    pos.y-=1;
   
  } 
  
  fill(0);
 
  rect(a, b, 10, 10);
}}