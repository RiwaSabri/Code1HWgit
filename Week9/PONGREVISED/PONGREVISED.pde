int p1Score;
int p2Score;
int p3Score;
int p4Score;

boolean p1Up = false;
boolean p1Down = false;
boolean p2Up = false;
boolean p2Down = false;
boolean p3Left=false;
boolean p3Right =false;
boolean p4Left=false;
boolean p4Right=false;

Ball b1;
Ball b2;
Paddle p1;
Paddle p2;
Paddle p3;
Paddle p4;

void setup() {
  size(1000, 700);
  b1 = new Ball();
  b2=new Ball();
  p1 = new Paddle(0);
  p2 = new Paddle(1);
  p3 = new Paddle(2);
  p4= new Paddle(3);
  
}

void draw() {
  background(234, 133, 18);

  b1.checkCollisionWithPaddle(p1);

  b1.checkCollisionWithPaddle(p2);
   b1.checkCollisionWithPaddle2(p3);
    b1.checkCollisionWithPaddle2(p4);
  b2.checkCollisionWithPaddle(p1);
  b2.checkCollisionWithPaddle(p2);
   b2.checkCollisionWithPaddle2(p3);
    b2.checkCollisionWithPaddle2(p4);
 
  


  b1.update();
  b1.display();
  b2.display();
   b2.update();
  p1.update();
  p1.display();
  p2.update();
  p2.display();
  p3.display();
  p3.update();
  p4.display();
  p4.update();

  textSize(36);
  fill(255);
  textAlign(CENTER, CENTER);

  text(p3Score, width/2 - 100, 75);
  text(p4Score, width/2 + 100, 75);
  text(p1Score,75,height/2+100);
  text(p2Score,75,height/2-100);
}

void keyPressed() {
  if (key == 'o') {
      p2Up = true;
    }
    else if (key == 'p') {
      p2Down = true;
    
  } else if (key == 'w') {
      p1Up = true;
    }
    else if (key == 's') {
      p1Down = true;
    }else if (key=='l'){
    p3Left=true;}
    else if (key=='r'){
    p3Right=true;}
    else if (key=='i'){
  p4Left=true;
}else if (key=='f'){
p4Right=true;}
  }


void keyReleased() {
  if   (key == 'o') {
      p2Up = false;
    }
   else if (key == 'p') {
      p2Down = false;
    }
  else if (key == 'w') {
      p1Up = false;
    }
    else if (key == 's') {
      p1Down = false;
    } else if (key =='l'){
    p3Left=false;}
    else if ( key=='r'){
    p3Right=false;
  } else if (key=='i'){
  p4Left=false;
}else if (key=='f'){
p4Right=false;}
  }


class Paddle {
  float x;
  float y;
  float w;
  float h;
  int playerNum;

  Paddle(int whichPlayer) {
    playerNum = whichPlayer;
    if (whichPlayer == 0) {
      x = 30;
      y = height/2;
      w = 20;
      h = 150;
    } else if (whichPlayer == 1) {
      y = height/2;
      w = 20;
      h = 150;
      x = width-30-w;
    }else if (whichPlayer ==2){
      y=30;
      x=width/2-75;
      w=150;
      h=20;
    } else if (whichPlayer==3){
      y=height-30;
      x=width/2-75;
      w=150;
      h=20;
    
    
    }
  }

  void update() {

    if (playerNum == 0) {
      if (p1Up) {
        y-=10;
      } 
      if (p1Down) {
        y+=10;
      }
    }
    if (playerNum == 1) {
      if (p2Up) {
        y-=10;
      } 
      if (p2Down) {
        y+=10;
      }
    }
    if (playerNum == 2) {
      if (p3Left) {
        x-=10;
      } 
      if (p3Right) {
        x+=10;
      }
    }
    if (playerNum ==3){
    if(p4Left){
    x-=10;
  }
  if (p4Right) {
  x+=10;}
  
}
    
  }


  void display() {
    rectMode(CORNER);
    fill(255);
    rect(x, y, w, h);
  }
}


class Ball {
  float x;   //x position
  float y;   //y position
  float dx;  //x velocity
  float dy;  //y velocity
  float z;

 
  Ball() {
    x = width/2;
    y = height/2;
    dx = random(-5,5);  //set a random velocity
    dy = random(-5, 5);
    z=20;
  }

  // call this method to display the ball
  void display() {
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect(x, y, 10, 10);
  }

  // call this method to update the ball's position
  void update() {
    //c = color(map(dist(mouseX,mouseY,x,y),0,100,255,0));
    x += dx;

    if (x < 0 || x > width) {

      if (x < 0) {
        p2Score++;
        background(255,0,0);
      }

      if (x > width) {
        p1Score++;
        background(0,0,255);
        
        
    
      }

      x = width/2;
      y = height/2;
      dx = -dx;  //set a random velocity
      dy = random(-5, 5);
      
      
    } 

    if (y < 0 || y > height) {
     if (y< 0) {
        p3Score++;
             background(0,255,0);
            
     
        
      }

      if (y> height) {
        p4Score++;
              background(25,100,0);
      }

      x = width/2;
      y = height/2;
      dx = random(-3,3);  //set a random velocity
      dy = -dy;
    } 
     else { 
      y += dy;
    }
  }

  void checkCollisionWithPaddle(Paddle p) {
    if (x > p.x && x < p.x + p.w) {
      if (y > p.y && y < p.y + p.h) {
        dx = -dx;
        dy = random(-10,10);
        stroke(0,0,255);
       noFill();
        ellipseMode(CORNER);
      ellipse(x,y,100,100);
      
        
      }
  }
  }
  void checkCollisionWithPaddle2(Paddle p) {
    if (x > p.x && x < p.x + p.w) {
      if (y > p.y && y < p.y + p.h) {
        dx = random(-10,10);
        dy = -dy;
        stroke(0,255,0);
        ellipseMode(CORNER);
        noFill();
        ellipse(x,y,100,100);
      }
    }
  }
}