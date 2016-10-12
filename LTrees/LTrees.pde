float proportion=2; 
int level = 1;
int amount = 50;
boolean loop;
boolean multiple;
boolean center = true;
  int trees = 10;
int [] max, scale, angle, dev;

import processing.pdf.*;

void setup() {
  size(1200, 700);
  max = Generated_Array(trees, 5, 10);
  scale = Generated_Array(trees, 300, 500);
  angle = Generated_Array(trees, 50, 100);
  dev = Generated_Array(trees, -40, 40);
}

void draw() {
    if(!loop){
  noLoop();
  }
  else{
    loop();
  }
  background(255);
  //translate(width/2, height/2 + 100);
  strokeWeight(10);
  //F(100);
  if(!loop){
  for(int i = 0; i<trees; i++){
    float a = width/2;
    float b = height/2+100;
    translate(-a, b);
    //stroke(random(255), random(255), random(255));
    stroke(0);
  tree(level, max[i], scale[i], proportion, angle[i], dev[i]);
    a = random(width/3, width);
    translate(a, -b);
  }
  }
  else{
    stroke(0);
    translate(width/2, height/2+100);
    if(!multiple && !center){
    tree(1, 10, 200, proportion, map(mouseY, 0, height, 0, 90), map(mouseX, 0, width, 45, -45));
    }
    
    if(multiple){
    tree(1, 10, 200, proportion, map(mouseY , 0, height, 0, 90), map(mouseX, 0, width, 45, -45));
    rotate(180);
    tree(1, 10, 300, proportion, map(mouseY, 0, height, 0, 90), map(mouseX, 0, width, 45, -45));
    rotate(60);
    translate(-100, -200);
    tree(1, 10, 500, proportion, map(mouseY , 0, height, 0, 90), map(mouseX , 0, width, 45, -45));
    translate(100, 200);
     tree(1, 10, 300, proportion, map(mouseY, 0, height, 0, 90), map(mouseX, 0, width, 45, -45));
    translate(200, -500);
    rotate(-90);
     tree(1, 10, 300, proportion, map(mouseY, 0, height, 0, 90), map(mouseX, 0, width, 45, -45));
     //rotate(-90);
     //    tree(1, 10, 500, proportion, map(mouseY + 50, 0, height, 0, 90), map(mouseX + 50, 0, width, 45, -45));
     //translate(width/2, 0);
     // tree(1, 10, 500, proportion, map(mouseY + 500, 0, height, 0, 90), map(mouseX + 50, 0, width, 45, -45));
    }
    
    else if(center){
    rotate(90);
     translate(-500, 800);
    stroke(#ff0000);
    tree(1, 10, 500, proportion, map(mouseY, 0, height, 0, 90), map(mouseX, 0, width, 45, -45));
    }
  }
  
}

void mouseDragged(){
    proportion += float(mouseY - pmouseY)*0.1;
}

void keyPressed(){
  switch(key){
  case ' ': 
    loop = false;
    setup();
    redraw();
    break;
  case 'a': 
    loop = true;
    multiple = false;
    setup();
    redraw();
    break;  
   case 'm': 
    loop = true;
    center = false;
    multiple = !multiple;
    setup();
    redraw();
    break;  
  case 'c': 
    loop = true;
    center = true;
    multiple = false;
    setup();
    redraw();
    break; 
  case 'r': 
    beginRecord(PDF, "everything.pdf");
    break;
  }
}
  void mousePressed(){
    endRecord();
  }