class Dice {
  float xPos;
  float yPos;
  float zPos;
  float rotx = -PI/4;
  float roty = PI/4;
  float rotz = 5;
  PImage axe = loadImage("Orlog.axe.png");
  PImage helmet = loadImage("Orlog.housecarl.png");
  PImage arrow = loadImage("Orlog.arrow.png");
  PImage shield = loadImage("Orlog.shield.png");
  PImage hand = loadImage("Orlog.hand.png");
  float droll;
  int dvalue;
  boolean Roll;
  float Anframe;


  Dice(float _xPos, float _yPos, float _zPos) {
    xPos = _xPos;
    yPos = _yPos;
    zPos = _zPos;
    textureMode(NORMAL);
    Roll = true;
    Anframe = 0;
  }

  void update() {
    fill(255);
    stroke(color(44, 48, 32));
    noStroke();
    pushMatrix();
    translate(xPos, yPos, zPos);
    scale(60);
    RAnimation();
    Rotate();
    Rolling();
    Render();

    popMatrix();
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
      }
      if (180 < Anframe && Anframe < 540) {
        yPos = yPos + 1;
      }

      zPos = zPos - 0.5;
      Anframe = Anframe + 2;
      if (Anframe > 550) {
        Roll = !Roll;
      }
    }
  }


  void Rolling() {
    droll = random(0.5, 5.49);
    dvalue = round(droll);
  }
  void Render() {
    beginShape();
    // +Z "front" face
    texture(axe);
    vertex(-1, -1, 1, 0, 0);
    vertex( 1, -1, 1, 1, 0);
    vertex( 1, 1, 1, 1, 1);
    vertex(-1, 1, 1, 0, 1);
    endShape();
    // -Z "back" face
    beginShape();
    texture(axe);
    vertex( 1, -1, -1, 0, 0);
    vertex(-1, -1, -1, 1, 0);
    vertex(-1, 1, -1, 1, 1);
    vertex( 1, 1, -1, 0, 1);
    endShape();
    // +Y "bottom" face
    beginShape();
    texture(arrow);
    vertex(-1, 1, 1, 0, 0);
    vertex( 1, 1, 1, 1, 0);
    vertex( 1, 1, -1, 1, 1);
    vertex(-1, 1, -1, 0, 1);
    endShape();
    // -Y "top" face
    beginShape();
    texture(hand);
    vertex(-1, -1, -1, 0, 0);
    vertex( 1, -1, -1, 1, 0);
    vertex( 1, -1, 1, 1, 1);
    vertex(-1, -1, 1, 0, 1);
    endShape();
    // +X "right" face
    beginShape();
    texture(shield);
    vertex( 1, -1, 1, 0, 0);
    vertex( 1, -1, -1, 1, 0);
    vertex( 1, 1, -1, 1, 1);
    vertex( 1, 1, 1, 0, 1);
    endShape();
    // -X "left" face
    beginShape();
    texture(helmet);
    vertex(-1, -1, -1, 0, 0);
    vertex(-1, -1, 1, 1, 0);
    vertex(-1, 1, 1, 1, 1);
    vertex(-1, 1, -1, 0, 1);
    endShape();
  }
}
