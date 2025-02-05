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
  float Zback;
  float Ybot;
  float Ytop;
  float Xleft;
  float Xright;

  int dZfront;
  int dZback;
  int dYbot;
  int dYtop;
  int dXleft;
  int dXright;
  PImage axe = loadImage("Orlog.axe.png");
  PImage helmet = loadImage("Orlog.housecarl.png");
  PImage arrow = loadImage("Orlog.arrow.png");
  PImage shield = loadImage("Orlog.shield.png");
  PImage hand = loadImage("Orlog.hand.png");


  Dice(float _xPos, float _yPos, float _zPos) {
    xPos = _xPos;
    yPos = _yPos;
    zPos = _zPos;
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
      roty = roty + 0.08;
      rotx = rotx + 0.04;
    }
  }

  void RAnimation() {
    if (Roll) {
      if (Anframe < 180) {
        yPos = yPos - 1;
        zPos = zPos + 2;
      }
      if (180 < Anframe && Anframe < 540) {
        yPos = yPos + 1.5;
        zPos = zPos - 1;
      }


      Anframe = Anframe + 2;
      if (Anframe > 550) {
        Roll = !Roll;
      }
    }
  }

  void Assign() {
    if (sRoll) {
      Zfront = random (0.5, 6.49);
      Zback= random (0.5, 6.49);
      Ybot= random (0.5, 6.49);
      Ytop= random (0.5, 6.49);
      Xleft= random (0.5, 6.49);
      Xright = random (0.5, 6.49);
      dZfront = round(Zfront);
      dZback = round(Zback);
      dYbot = round(Ybot);
      dYtop = round(Ytop);
      dXleft = round(Xleft);
      dXright = round(Xright);
      }
    }
  

  void Render() {

    beginShape();
    // +Z "front" face
    switch(dZfront) {
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
    vertex(-1, -1, 1, 0, 0);
    vertex( 1, -1, 1, 1, 0);
    vertex( 1, 1, 1, 1, 1);
    vertex(-1, 1, 1, 0, 1);
    endShape();
    // -Z "back" face
    beginShape();
    switch(dZback) {
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
    switch(dYbot) {
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
    switch(dYtop) {
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
    switch(dXright){
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
    switch(dXleft){
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
}
