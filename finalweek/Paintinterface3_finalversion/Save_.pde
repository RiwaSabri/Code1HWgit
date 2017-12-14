class Save {
  float x;
  float y;


  Save() {
    x=40;
    y=320;
  }

  void display() {
    textSize(28);
    fill(255);


    textAlign(CENTER, CENTER);

    text("S", x, y);
    
       textSize(28);
    fill(0);


    textAlign(CENTER, CENTER);

    text("Saved", 700, 20);
    
    
  }

  void mouse () {
    if (mouseX>26 && mouseX<26+30 
      && mouseY> 300 && mouseY<340 ) {


      textSize(15);
      fill(0);
      stroke(0);
      textAlign(CENTER, CENTER);
      text("save", mouseX+40, mouseY);
    }
  }
}