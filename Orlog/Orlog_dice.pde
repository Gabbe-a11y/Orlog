class Dice {
  float xPos;
  float yPos;
  float zPos;
  float rotx = -PI/4;
  float roty = PI/4;
  float rotz = 5;

  boolean Roll;
  float Anframe;

  float Zfront;

  int type;
  int random;
  
  int dZfront;
  
  PImage axe = loadImage("Orlog.axe.png");
  PImage helmet = loadImage("Orlog.housecarl.png");
  PImage arrow = loadImage("Orlog.arrow.png");
  PImage shield = loadImage("Orlog.shield.png");
  PImage hand = loadImage("Orlog.hand.png");
  PImage handfavour = loadImage("Orlog.hand.favour.png");
  PImage shieldfavour = loadImage("Orlog.shield.favour.png");
  PImage arrowfavour = loadImage("Orlog.arrow.favour.png");
  PImage helmetfavour = loadImage("Orlog.housecarl.favour.png");


  Dice(float _xPos, float _yPos, float _zPos, int _type) {
    xPos = _xPos;
    yPos = _yPos;
    zPos = _zPos;
    type = _type;
    textureMode(NORMAL);
    Roll = true;
    Anframe = 0;
  }

  void update() {
    Prep();
    RAnimation();
    Rotate();
    Render();

    popMatrix();
  }
  void Prep() {
    fill(255);
    stroke(color(44, 48, 32));
    noStroke();
    pushMatrix();
    translate(xPos, yPos, zPos);
    scale(35);
  }

  void Rotate() {
    if (Roll) {
      rotateX(rotx);
      rotateY(roty);
      roty = roty + random(0.08, 0.1);
      rotx = rotx + random(0.04, 0.09);
    }
  }

  void RAnimation() {
    if (Roll) {
      if (Anframe < 180) {
        yPos = yPos - 1;
        zPos = zPos + 2;
      }
      if (180 < Anframe && Anframe < 528) {
        yPos = yPos + 1.5;
        zPos = zPos - 1;
      }


      Anframe = Anframe + 2;
      if (Anframe > 528) {
        Roll = !Roll;
      }
    }
  }

  void Assign() {
    if (sRoll) {
      Zfront = random (0.5, 6.49);
      dZfront = round(Zfront);
    }
  }


  void Render() {
    beginShape();
    // +Z "front" face
    Random();
    vertex(-1, -1, 1, 0, 0);
    vertex( 1, -1, 1, 1, 0);
    vertex( 1, 1, 1, 1, 1);
    vertex(-1, 1, 1, 0, 1);
    endShape();
    // -Z "back" face
    beginShape();
    switch(type) {
    case 1:
      texture(axe);
      break;
    case 2:
      texture(hand);
      break;
    case 3:
      texture(axe);
      break;
    case 4:
      texture(helmet);
      break;
    case 5:
      texture(shield);
      break;
    case 6:
      texture(arrow);
      break;
    }
    vertex( 1, -1, -1, 0, 0);
    vertex(-1, -1, -1, 1, 0);
    vertex(-1, 1, -1, 1, 1);
    vertex( 1, 1, -1, 0, 1);
    endShape();
    // +Y "bottom" face
    beginShape();
    switch(type) {
    case 1:
      texture(axe);
      break;
    case 2:
      texture(hand);
      break;
    case 3:
      texture(axe);
      break;
    case 4:
      texture(helmet);
      break;
    case 5:
      texture(shield);
      break;
    case 6:
      texture(arrow);
      break;
    }
    vertex(-1, 1, 1, 0, 0);
    vertex( 1, 1, 1, 1, 0);
    vertex( 1, 1, -1, 1, 1);
    vertex(-1, 1, -1, 0, 1);
    endShape();
    // -Y "top" face
    beginShape();
    switch(type) {
    case 1:
      texture(axe);
      break;
    case 2:
      texture(hand);
      break;
    case 3:
      texture(axe);
      break;
    case 4:
      texture(helmet);
      break;
    case 5:
      texture(shield);
      break;
    case 6:
      texture(arrow);
      break;
    }
    vertex(-1, -1, -1, 0, 0);
    vertex( 1, -1, -1, 1, 0);
    vertex( 1, -1, 1, 1, 1);
    vertex(-1, -1, 1, 0, 1);
    endShape();
    // +X "right" face
    beginShape();
    switch(type) {
    case 1:
      texture(axe);
      break;
    case 2:
      texture(hand);
      break;
    case 3:
      texture(axe);
      break;
    case 4:
      texture(helmet);
      break;
    case 5:
      texture(shield);
      break;
    case 6:
      texture(arrow);
      break;
    }
    vertex( 1, -1, 1, 0, 0);
    vertex( 1, -1, -1, 1, 0);
    vertex( 1, 1, -1, 1, 1);
    vertex( 1, 1, 1, 0, 1);
    endShape();
    // -X "left" face
    beginShape();
    switch(type) {
    case 1:
      texture(axe);
      break;
    case 2:
      texture(hand);
      break;
    case 3:
      texture(axe);
      break;
    case 4:
      texture(helmet);
      break;
    case 5:
      texture(shield);
      break;
    case 6:
      texture(arrow);
      break;
    }
    vertex(-1, -1, -1, 0, 0);
    vertex(-1, -1, 1, 1, 0);
    vertex(-1, 1, 1, 1, 1);
    vertex(-1, 1, -1, 0, 1);
    endShape();
  }
  void Random() {
    switch(type) {  //Kollar vilken tärning det är
    case 1:
      switch(dZfront) { //Switch inom switchen, slumpmässigheten
      case 1:
        texture(axe);
        random = 1;
        break;
      case 2:
        texture(axe);
        random = 2;
        break;
      case 3:
        texture(arrowfavour);
        random = 3;
        break;
      case 4:
        texture(shield);
        random = 4;
        break;
      case 5:
        texture(helmet);
        random = 5;
        break;
      case 6:
        texture(handfavour);
        random = 6;
        break;
      }
      break;
    case 2:
      switch(dZfront) { //Switch inom switchen, slumpmässigheten
      case 1:
        texture(axe);
        random = 1;
        break;
      case 2:
        texture(axe);
        random = 2;
        break;
      case 3:
        texture(arrowfavour);
        random = 3;
        break;
      case 4:
        texture(shield);
        random = 4;
        break;
      case 5:
        texture(helmet);
        random = 5;
        break;
      case 6:
        texture(handfavour);
        random = 6;
        break;
      }
      break;
    case 3:
      switch(dZfront) { //Switch inom switchen, slumpmässigheten
      case 1:
        texture(axe);
        random = 1;
        break;
      case 2:
        texture(axe);
        random = 2;
        break;
      case 3:
        texture(arrowfavour);
        random = 3;
        break;
      case 4:
        texture(shield);
        random = 4;
        break;
      case 5:
        texture(helmet);
        random = 5;
        break;
      case 6:
        texture(handfavour);
        random = 6;
        break;
      }
      break;
    case 4:
      switch(dZfront) { //Switch inom switchen, slumpmässigheten
      case 1:
        texture(axe);
        random = 1;
        break;
      case 2:
        texture(axe);
        random = 2;
        break;
      case 3:
        texture(arrowfavour);
        random = 3;
        break;
      case 4:
        texture(shield);
        random = 4;
        break;
      case 5:
        texture(helmet);
        random = 5;
        break;
      case 6:
        texture(handfavour);
        random = 6;
        break;
      }
      break;
    case 5:
      switch(dZfront) { //Switch inom switchen, slumpmässigheten
      case 1:
        texture(axe);
        random = 1;
        break;
      case 2:
        texture(axe);
        random = 2;
        break;
      case 3:
        texture(arrowfavour);
        random = 3;
        break;
      case 4:
        texture(shield);
        random = 4;
        break;
      case 5:
        texture(helmet);
        random = 5;
        break;
      case 6:
        texture(handfavour);
        random = 6;
        break;
      }
      break;
    case 6:
      switch(dZfront) { //Switch inom switchen, slumpmässigheten
      case 1:
        texture(axe);
        random = 1;
        break;
      case 2:
        texture(axe);
        random = 2;
        break;
      case 3:
        texture(arrowfavour);
        random = 3;
        break;
      case 4:
        texture(shield);
        random = 4;
        break;
      case 5:
        texture(helmet);
        random = 5;
        break;
      case 6:
        texture(handfavour);
        random = 6;
        break;
      }
      break;
    }
  }
}
