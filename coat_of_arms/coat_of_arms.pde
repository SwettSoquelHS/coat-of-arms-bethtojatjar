int Wakka_Wakka = 0;
int DIRECTION = 1;
int pacManRot = 0;


void setup() {
  size(1000, 1000);
  background(0);

}

void draw() {
  smooth();
  
  Wakka_Wakka = Wakka_Wakka + DIRECTION;
  
  pacMan(width/2,height /2,Wakka_Wakka, pacManRot);
  clydeGhost(width/2,height /2);
  logoPacMan(width/2,height /2);
}

void pacMan(int x, int y,int pacMan_Pos, int deg_Wakka) {
  pushMatrix();
  translate(x,y);
  fill(#F7C305);
  rotate(radians(0 + deg_Wakka));
  arc(-300 +pacMan_Pos, 0, 200, 200, 0.5, 5.5, PIE);
  
  
  popMatrix();
}

void clydeGhost(int x, int y){
  pushMatrix();
  noStroke();
  translate(x,y);
  rotate(radians(180));
  fill(#F78F05);
  arc(0, 0, 200, 200, 0, PI, CHORD);
  beginShape();
 
  popMatrix();
}

void logoPacMan(int x, int y){
  pushMatrix();
  noStroke();
  translate(x,y);
  beginShape();
  fill(#ED0505);
  rect(-450, -450, 900, 200, 50);

  endShape();
  
  beginShape();
  stroke(0);
  strokeWeight(3);
  fill(#FF891A);
  rect(-440, -437, 880, 175, 50);
  endShape();
  
  beginShape();
  fill(#EDEBEB);
  rect( -415, -415, 50, 120);
  rotate(radians(-100));
  arc(422,-292, 100, 100, 0, 3.5, OPEN);
  
  
  endShape();
  
  popMatrix();
}
