int Wakka_Wakka = 0;
int DIRECTION = 15;
int pacManRot = 0;

int MOUTH_STATE  = 1; //1, 2, 3, 4
int MOUTH_COUNT = 0;

void setup() {
  size(1000, 1000);
  background(0);
  frameRate(10);

}

void draw() {
  smooth();
  
  Wakka_Wakka = Wakka_Wakka + DIRECTION;
  
  clydeGhost(width/2,height /2, Wakka_Wakka );
  logoPacMan(width/2,height /2);
  
  MOUTH_COUNT++;
  if(MOUTH_COUNT > 10){
      MOUTH_STATE++;
  } else if (MOUTH_COUNT > 20){
    MOUTH_STATE++;
  } else if (MOUTH_COUNT > 30){
    MOUTH_STATE++;
  }
  
  
  if (MOUTH_COUNT == 1){
    pacMan1(width/2,height /2, Wakka_Wakka);
    clydeGhost(width/2,height /2, Wakka_Wakka );
    inkyGhost(width/2,height /2, Wakka_Wakka );
  logoPacMan(width/2,height /2);
  } else if (MOUTH_COUNT == 2){
     pacMan2(width/2,height /2, Wakka_Wakka);
     clydeGhost(width/2,height /2, Wakka_Wakka );
     inkyGhost(width/2,height /2, Wakka_Wakka );
  logoPacMan(width/2,height /2);
  } else if (MOUTH_COUNT == 3){
    pacMan3(width/2,height /2, Wakka_Wakka);
    clydeGhost(width/2,height /2, Wakka_Wakka );
    inkyGhost(width/2,height /2, Wakka_Wakka );
  logoPacMan(width/2,height /2);
  } else if (MOUTH_COUNT == 4){
    pacMan2(width/2,height /2, Wakka_Wakka);
    clydeGhost(width/2,height /2, Wakka_Wakka );
    inkyGhost(width/2,height /2, Wakka_Wakka );
  logoPacMan(width/2,height /2);
    MOUTH_COUNT = 1;
  } 
  
  if (Wakka_Wakka > 1175){
    Wakka_Wakka = 0;
  }
}


// regular pacman arc(-500 +pacMan_Pos, 0, 200, 200, 0.5, 5.5);//, PIE);
// open mouth pacman arc(-500 +pacMan_Pos, 0, 200, 200, 0.5, 4.5);//, PIE);
// closed mouth pacman ellipse(-500 + pacMan_Pos, 0, 200, 200);
void pacMan2(int x, int y,int pacMan_Pos) {
  pushMatrix();
  translate(x,y);
  clear();
  fill(#F7C305);
  rotate(radians(0));
  arc(-500 +pacMan_Pos, 380, 200, 200, 0.5, 5.5, PIE);
  
  popMatrix();
}

void pacMan1(int x, int y,int pacMan_Pos) {
  pushMatrix();
  translate(x,y);
  clear();
  fill(#F7C305);
  rotate(radians(0));
  arc(-500 +pacMan_Pos, 380, 200, 200, 0.5, 4.5);//, PIE);
  
  popMatrix();
}

void pacMan3(int x, int y,int pacMan_Pos) {
  pushMatrix();
  translate(x,y);
  clear();
  fill(#F7C305);
  rotate(radians(0));
  ellipse(-500 + pacMan_Pos, 380, 200, 200);
  
  popMatrix();
}

void clydeGhost(int x, int y, int clyde_pos){
  pushMatrix();
  noStroke();
  translate(x,y);
  rotate(radians(180));
  fill(#F78F05);
  arc(-500 +clyde_pos, -150, 200, 200, 0, PI);//, CHORD);
  rect(-400 + clyde_pos,-200, -200, 55);
  triangle(-400 + clyde_pos, -150, -525 + clyde_pos, -249, -600 + clyde_pos,-150);
  triangle(-400 + clyde_pos,-150, -400 + clyde_pos, -249, -570 + clyde_pos,-150);
  triangle(-400 + clyde_pos,-150, -480 + clyde_pos, -249, -600 + clyde_pos,-150);
  triangle(-410 + clyde_pos, -150, -600 + clyde_pos,-249, -600 + clyde_pos,-150);
  fill(#E8E5E5);
  ellipse(-450 + clyde_pos, -120, 55, 70);
  ellipse(-520 + clyde_pos, -120, 55, 70);
  fill(#3E7ECE);
  ellipse(-440 + clyde_pos, -120, 30, 45);
  ellipse(-510 + clyde_pos, -120, 30, 45);
  popMatrix();
}

void inkyGhost(int x, int y, int inky_pos){
  pushMatrix();
  noStroke();
  translate(x,y);
  rotate(radians(180));
  fill(#F09494);
  arc(-500 + inky_pos, 100, 200, 200, 0, PI);//, CHORD);
  rect(-400 + inky_pos,55, -200, 55);
  triangle(-400 + inky_pos, 75, -525 + inky_pos, 0, -600 + inky_pos,75);
  triangle(-400 + inky_pos,75, -400 + inky_pos, 0, -570 + inky_pos,75);
  triangle(-400 + inky_pos,75, -480 + inky_pos, 0, -600 + inky_pos,75);
  triangle(-410 + inky_pos,75, -600 + inky_pos,0, -600 + inky_pos,75);
  fill(#E8E5E5);
  ellipse(-450 + inky_pos, 120, 55, 70);
  ellipse(-520 + inky_pos, 120, 55, 70);
  fill(#3E7ECE);
  ellipse(-440 + inky_pos, 120, 30, 45);
  ellipse(-510 + inky_pos, 120, 30, 45);
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
  
  //the start of the white letters in the logo
  beginShape();
  fill(#EDEBEB);
  rect( -415, -415, 50, 120);
  arc(-370,-365, 100, 100, 4.75, 7.80, OPEN);
  triangle(-270,-410, -320, -295, -215, -295);
  arc(-145, -350, 120, 120, 0.5, 5.5, PIE);
  rect(-60, -370, 70, 35);
  triangle(210,-400, 160, -290, 265, -290);
  endShape();
  
  beginShape();
  vertex(50, -400);
  vertex(50, -290);
  vertex(140, -290);
  vertex(140, -400);
  vertex(95, -340);
  endShape(CLOSE);
  
  beginShape();
  vertex(290,-400);
  vertex(290,-290);
  vertex(380,-290);
  vertex(380,-395);
  vertex(340,-395);
  vertex(330,-340);
  endShape(CLOSE);
 // end of the white letters
 
 // beginning of the purple letters
 
  fill(#450267);
  rect(-400, -400, 50, 120);
  arc(-355,-350, 100, 100, 4.75, 7.80, OPEN);
  triangle(-250,-400, -295, -280, -195, -280);
  arc(-120, -335, 120, 120, 0.5, 5.5);//, PIE);
  rect(-40, -350, 70, 35);
  triangle(235,-395, 185, -280, 290, -280);
  
   beginShape();
  vertex(80, -390);
  vertex(80, -280);
  vertex(170, -280);
  vertex(170, -390);
  vertex(125, -330);
  endShape(CLOSE);
  
   beginShape();
  vertex(320,-390);
  vertex(320,-280);
  vertex(410,-280);
  vertex(410,-385);
  vertex(370,-385);
  vertex(360,-330);
  endShape(CLOSE);
  
 // end of the purple letters
 
 // beginning of the yellow letters
 
  fill(#F7C305);
  rect( -409, -409, 50, 120);
  arc(-364 ,-359, 100, 100, 4.76, 7.80, OPEN);
  triangle(-260,-400, -310, -285, -205, -285);
  arc(-130, -345, 120, 120, 0.5, 5.5);//, PIE);
  rect(-50, -360, 70, 35);
  triangle(225,-400, 175, -285, 275, -285);
  
    beginShape();
  vertex(65, -400);
  vertex(65, -285);
  vertex(155, -285);
  vertex(155, -400);
  vertex(110, -340);
  endShape(CLOSE);
  
    beginShape();
  vertex(305,-395);
  vertex(305,-285);
  vertex(395,-285);
  vertex(395,-390);
  vertex(355,-390);
  vertex(345,-335);
  endShape(CLOSE);
  
  popMatrix();
}
