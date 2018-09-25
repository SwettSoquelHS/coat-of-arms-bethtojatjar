void setup() {
  size(1000, 1000);
  background(0);
  noStroke();
}

void draw() {
  smooth();
  
  pacMan(width/2,height /2);
  clydeGhost(width/2,height /2);
  logoPacMan(width/2,height /2);
}

void pacMan(int x, int y) {
  pushMatrix();
  translate(x,y);
  fill(#F7C305);
  rotate(radians(37));
  arc(-300, 200, 200, 200, 0, 5, PIE);
  
  
  popMatrix();
}

void clydeGhost(int x, int y){
  pushMatrix();
  translate(x,y);
  rotate(radians(180));
  fill(#F78F05);
  arc(0, 0, 200, 200, 0, PI, CHORD);
  beginShape();
 
  popMatrix();
}

void logoPacMan(int x, int y){
  pushMatrix();
  translate(x,y);
  beginShape();
  fill(#ED0505);
  rect(-450, -450, 900, 200, 50);
  endShape();
  
  beginShape();
  fill(#FF891A);
  rect(-440, -437, 880, 175, 50);
  endShape();
  
  beginShape();
  
  popMatrix();
}
