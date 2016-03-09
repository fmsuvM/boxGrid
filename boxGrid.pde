color boxColor = color(0,0,255);
int boxAlph = 150;
int actRandomSeed = 10000;
int max_distance = 500;

void setup(){
  size(600,600, P3D);
}

void draw(){
  background(255);
  smooth();
  noFill();
  
  randomSeed(actRandomSeed);
  stroke(boxColor, boxAlph);
  strokeWeight(5);
  
  for(int gridY = 0; gridY < height; gridY+=25){
    for(int gridX = 0; gridX < width; gridX+=25){
      float diameter = dist(mouseX,mouseY, gridX,gridY);
      diameter = diameter/max_distance * 40;
      pushMatrix();
        translate(gridX,gridY, diameter*5);
        rect(0,0, diameter,diameter);
      popMatrix();
    }
  }
  
}