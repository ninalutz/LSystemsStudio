float proportion=2; 

void setup() {
  size(1200, 700);
}

void draw() {
  background(255);
  translate(width/2, height/2 + 100);
  strokeWeight(10);

    tree(1, 10, 200, proportion, map(mouseY , 0, height, 0, 90), map(mouseX, 0, width, 45, -45));
    rotate(180);
    tree(1, 10, 300, proportion, map(mouseY, 0, height, 0, 90), map(mouseX, 0, width, 45, -45));
    rotate(60);
    //translate(-100, -200);
    tree(1, 10, 500, proportion, map(mouseY , 0, height, 0, 90), map(mouseX , 0, width, 45, -45));
    //translate(100, 200);
     tree(1, 10, 300, proportion, map(mouseY, 0, height, 0, 90), map(mouseX, 0, width, 45, -45));
    //translate(200, -500);
    rotate(-90);
     tree(1, 10, 300, proportion, map(mouseY, 0, height, 0, 90), map(mouseX, 0, width, 45, -45));
     //rotate(-90);
     tree(1, 10, 500, proportion, map(mouseY + 50, 0, height, 0, 90), map(mouseX + 50, 0, width, 45, -45));
     //translate(width/2, 0);
     // tree(1, 10, 500, proportion, map(mouseY + 500, 0, height, 0, 90), map(mouseX + 50, 0, width, 45, -45));
    }

void mouseDragged(){
    proportion += float(mouseY - pmouseY)*0.1;
}