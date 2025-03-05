class Dice {
  float xPos;
  float yPos;
  float zPos;
  float rotx = -PI/4;
  float roty = PI/4;

  boolean locked = false;
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

    pushMatrix();

    Prep();
    RAnimation();
    Rotate();
    Render();

    popMatrix();
  }
  void Prep() {
    noStroke();
    translate(xPos, yPos, zPos);
    scale(35);
  }

  void Rotate() {
    if (Roll) {
      rotateX(rotx);
      rotateY(roty);

      roty = roty + random(0.01, 0.06);
      rotx = rotx + random(0.04, 0.15);
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
        Roll = false;
        Display();
        print(zPos);
      }
    }
  }

  void Roll() {
    Roll = true;
    Anframe = 0;
  }
  void Assign() {
    if (sRoll) {
      if (!locked) {
        Zfront = random (0.5, 6.49);
        dZfront = round(Zfront);
        Arrayassign();
      }
    }
  }

void lock(){
  locked = !locked;
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
    Randomcontinue();
    vertex( 1, -1, -1, 0, 0);
    vertex(-1, -1, -1, 1, 0);
    vertex(-1, 1, -1, 1, 1);
    vertex( 1, 1, -1, 0, 1);
    endShape();
    // +Y "bottom" face
    beginShape();
    Randomcontinue();
    vertex(-1, 1, 1, 0, 0);
    vertex( 1, 1, 1, 1, 0);
    vertex( 1, 1, -1, 1, 1);
    vertex(-1, 1, -1, 0, 1);
    endShape();
    // -Y "top" face
    beginShape();
    Randomcontinue();
    vertex(-1, -1, -1, 0, 0);
    vertex( 1, -1, -1, 1, 0);
    vertex( 1, -1, 1, 1, 1);
    vertex(-1, -1, 1, 0, 1);
    endShape();
    // +X "right" face
    beginShape();
    Randomcontinue();
    vertex( 1, -1, 1, 0, 0);
    vertex( 1, -1, -1, 1, 0);
    vertex( 1, 1, -1, 1, 1);
    vertex( 1, 1, 1, 0, 1);
    endShape();
    // -X "left" face
    beginShape();
    Randomcontinue();
    vertex(-1, -1, -1, 0, 0);
    vertex(-1, -1, 1, 1, 0);
    vertex(-1, 1, 1, 1, 1);
    vertex(-1, 1, -1, 0, 1);
    endShape();
  }
  void Arrayassign() {
    switch(type) {
    case 1:
      Dices[0] = dZfront;
      break;
    case 2:
      Dices[1] = dZfront;
      break;
    case 3:
      Dices[2] = dZfront;
      break;
    case 4:
      Dices[3] = dZfront;
      break;
    case 5:
      Dices[4] = dZfront;
      break;
    case 6:
      Dices[5] = dZfront;
      break;
    }
  }

  void Random() {
    switch(type) {  //Kollar vilken tärning det är
    case 1:
      switch(dZfront) { //Switch inom switchen, slumpmässigheten
      case 1:
        texture(axe);
        random = 2;
        break;
      case 2:
        texture(axe);
        random = 3;
        break;
      case 3:
        texture(arrowfavour);
        random = 4;
        break;
      case 4:
        texture(shield);
        random = 5;
        break;
      case 5:
        texture(helmet);
        random = 6;
        break;
      case 6:
        texture(handfavour);
        random = 1;
        break;
      }
      break;
    case 2:
      switch(dZfront) { //Switch inom switchen, slumpmässigheten
      case 1:
        texture(axe);
        random = 2;
        break;
      case 2:
        texture(axe);
        random = 3;
        break;
      case 3:
        texture(arrow);
        random = 4;
        break;
      case 4:
        texture(shieldfavour);
        random = 5;
        break;
      case 5:
        texture(handfavour);
        random = 6;
        break;
      case 6:
        texture(helmet);
        random = 1;
        break;
      }
      break;
    case 3:
      switch(dZfront) { //Switch inom switchen, slumpmässigheten
      case 1:
        texture(axe);
        random = 2;
        break;
      case 2:
        texture(axe);
        random = 3;
        break;
      case 3:
        texture(hand);
        random = 4;
        break;
      case 4:
        texture(arrowfavour);
        random = 5;
        break;
      case 5:
        texture(helmetfavour);
        random = 6;
        break;
      case 6:
        texture(shield);
        random = 1;
        break;
      }
      break;
    case 4:
      switch(dZfront) { //Switch inom switchen, slumpmässigheten
      case 1:
        texture(axe);
        random = 2;
        break;
      case 2:
        texture(arrow);
        random = 3;
        break;
      case 3:
        texture(handfavour);
        random = 4;
        break;
      case 4:
        texture(shield);
        random = 5;
        break;
      case 5:
        texture(helmetfavour);
        random = 6;
        break;
      case 6:
        texture(axe);
        random = 1;
        break;
      }
      break;
    case 5:
      switch(dZfront) { //Switch inom switchen, slumpmässigheten
      case 1:
        texture(axe);
        random = 2;
        break;
      case 2:
        texture(axe);
        random = 3;
        break;
      case 3:
        texture(hand);
        random = 4;
        break;
      case 4:
        texture(shieldfavour);
        random = 5;
        break;
      case 5:
        texture(helmet);
        random = 6;
        break;
      case 6:
        texture(arrowfavour);
        random = 1;
        break;
      }
      break;
    case 6:
      switch(dZfront) { //Switch inom switchen, slumpmässigheten
      case 1:
        texture(axe);
        random = 2;
        break;
      case 2:
        texture(axe);
        random = 3;
        break;
      case 3:
        texture(hand);
        random = 4;
        break;
      case 4:
        texture(shieldfavour);
        random = 5;
        break;
      case 5:
        texture(arrow);
        random = 6;
        break;
      case 6:
        texture(helmetfavour);
        random = 1;
        break;
      }
      break;
    }
  }
  void Randomcontinue() {
    switch(type) {
    case 1:
      switch(random) {
      case 1:
        texture(axe);
        break;
      case 2:
        texture(axe);
        break;
      case 3:
        texture(arrowfavour);
        break;
      case 4:
        texture(shield);
        break;
      case 5:
        texture(helmet);
        break;
      case 6:
        texture(handfavour);
        break;
      }
      Dicecheck();
      break;
    case 2:
      switch(random) {
      case 1:
        texture(axe);
        break;
      case 2:
        texture(axe);
        break;
      case 3:
        texture(arrow);
        break;
      case 4:
        texture(shieldfavour);
        break;
      case 5:
        texture(handfavour);
        break;
      case 6:
        texture(helmet);
        break;
      }
      Dicecheck();
      break;
    case 3:
      switch(random) {
      case 1:
        texture(axe);
        break;
      case 2:
        texture(axe);
        break;
      case 3:
        texture(hand);
        break;
      case 4:
        texture(arrowfavour);
        break;
      case 5:
        texture(helmetfavour);
        break;
      case 6:
        texture(shield);
        break;
      }
      Dicecheck();
      break;
    case 4:
      switch(random) {
      case 1:
        texture(axe);
        break;
      case 2:
        texture(arrow);
        break;
      case 3:
        texture(handfavour);
        break;
      case 4:
        texture(shield);
        break;
      case 5:
        texture(helmetfavour);
        break;
      case 6:
        texture(axe);
        break;
      }
      Dicecheck();
      break;
    case 5:
      switch(random) {
      case 1:
        texture(axe);
        break;
      case 2:
        texture(axe);
        break;
      case 3:
        texture(hand);
        break;
      case 4:
        texture(shieldfavour);
        break;
      case 5:
        texture(helmet);
        break;
      case 6:
        texture(arrowfavour);
        break;
      }
      Dicecheck();
      break;
    case 6:
      switch(random) {
      case 1:
        texture(axe);
        break;
      case 2:
        texture(axe);
        break;
      case 3:
        texture(hand);
        break;
      case 4:
        texture(shieldfavour);
        break;
      case 5:
        texture(arrow);
        break;
      case 6:
        texture(helmetfavour);
        break;
      }
      Dicecheck();
      break;
    }
  }
  void Dicecheck() {
    random = random + 1;
    if (random > 6) {
      random = 1;
    }
  }
}
