void Health_stones(){
  float xPos1 = 50;
  float yPos1 = 450;
  float xPos2 = 700;
  float yPos2 = 450;
  float zPos = 50;
  int size = 25;
  for(int i = 0; i < p1health; i = i + 1){
    pushMatrix();
    translate(xPos1, yPos1, zPos);
    beginShape();
    texture(stone);
    vertex(-size, -size, size, 0, 0);
    vertex( size, -size, size, 1, 0);
    vertex( size, size, size, 1, 1);
    vertex(-size, size, size, 0, 1);
    endShape();
    popMatrix();
    if (i == 4 || i == 9){
      xPos1 = 50;
      yPos1 = yPos1 - 25;
    } else{
      xPos1 = xPos1 + 25;
    }
    
  }
  for(int i = 0; i < p2health; i = i + 1){
    pushMatrix();
    translate(xPos2, yPos2, zPos);
    beginShape();
    texture(stone);
    vertex(-size, -size, size, 0, 0);
    vertex( size, -size, size, 1, 0);
    vertex( size, size, size, 1, 1);
    vertex(-size, size, size, 0, 1);
    endShape();
    popMatrix();
    if (i == 4 || i == 9){
      xPos2 = 700;
      yPos2 = yPos2 - 25;
    } else{
      xPos2 = xPos2 - 25;
    }
  }
}
