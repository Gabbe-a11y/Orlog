class Display {
  float xPos;
  float yPos;
  float zPos;
  float size;
  int type;
  boolean locked;
  boolean animated;
  boolean Render;
  int anframe;
  PImage axe = loadImage("Orlog.axe.png");
  PImage helmet = loadImage("Orlog.housecarl.png");
  PImage arrow = loadImage("Orlog.arrow.png");
  PImage shield = loadImage("Orlog.shield.png");
  PImage hand = loadImage("Orlog.hand.png");
  PImage handfavour = loadImage("Orlog.hand.favour.png");
  PImage shieldfavour = loadImage("Orlog.shield.favour.png");
  PImage arrowfavour = loadImage("Orlog.arrow.favour.png");
  PImage helmetfavour = loadImage("Orlog.housecarl.favour.png");


  Display(float _xPos, float _yPos, float _zPos, int _type) {
    xPos = _xPos;
    yPos = _yPos;
    zPos = _zPos;
    type = _type;
    textureMode(NORMAL);
    locked = false;
    anframe= 0;
    size = 50;
    animated = false;
  }

  void update() {
    Render();
  }

  void lock() {
    locked = !locked;
  }

  void Render() {
    if (displaying) {
      pushMatrix();
      translate(xPos, yPos, zPos);
      beginShape();
      Texture();
      vertex(-size, -size, size, 0, 0);
      vertex( size, -size, size, 1, 0);
      vertex( size, size, size, 1, 1);
      vertex(-size, size, size, 0, 1);
      endShape();
      popMatrix();
    }
    if (locked && gamestate == "disan" && !animated) {
      animation();
    }
  }
void anstart(){
  anframe = frameCount;
}
  void animation() {
    size = size - 0.2;
    switch(type) {
    case 1:
      xPos = xPos - 1.5;
      yPos = yPos + 0.5;
      break;
    case 2:
      xPos = xPos - 2.51;
      yPos = yPos + 1;
      break;
    case 3:
      xPos = xPos - 3.51;
      yPos = yPos + 1.5;
      break;
    case 4:
      xPos = xPos - 4.51;
      yPos = yPos + 2;
      break;
    case 5:
      xPos = xPos - 5.51;
      yPos = yPos + 2.5;
      break;
    case 6:
      xPos = xPos - 6.51;
      yPos = yPos + 3;
      break;
    }
    if (frameCount == anframe + 100) {
      animated = true;
      gamestate = "reroll?";
      anframe = 0;
    }
  }

  void Texture() {
    switch(type) {
    case 1:
      switch(Diceres[0]) {
      case "Axe":
        texture(axe);
        break;
      case "Arrow+":
        texture(arrowfavour);
        break;
      case "Shield":
        texture(shield);
        break;
      case "Helmet":
        texture(helmet);
        break;
      case "Hand+":
        texture(handfavour);
        break;
      }
      break;
    case 2:
      switch(Diceres[1]) {
      case "Axe":
        texture(axe);
        break;
      case "Arrow":
        texture(arrow);
        break;
      case "Shield+":
        texture(shieldfavour);
        break;
      case "Helmet":
        texture(helmet);
        break;
      case "Hand+":
        texture(handfavour);
        break;
      }
      break;
    case 3:
      switch(Diceres[2]) {
      case "Axe":
        texture(axe);
        break;
      case "Arrow+":
        texture(arrowfavour);
        break;
      case "Shield":
        texture(shield);
        break;
      case "Helmet+":
        texture(helmetfavour);
        break;
      case "Hand":
        texture(hand);
        break;
      }
      break;
    case 4:
      switch(Diceres[3]) {
      case "Axe":
        texture(axe);
        break;
      case "Arrow":
        texture(arrow);
        break;
      case "Shield":
        texture(shield);
        break;
      case "Helmet+":
        texture(helmetfavour);
        break;
      case "Hand+":
        texture(handfavour);
        break;
      }
      break;
    case 5:
      switch(Diceres[4]) {
      case "Axe":
        texture(axe);
        break;
      case "Arrow+":
        texture(arrowfavour);
        break;
      case "Shield+":
        texture(shieldfavour);
        break;
      case "Helmet":
        texture(helmet);
        break;
      case "Hand":
        texture(hand);
        break;
      }
      break;
    case 6:
      switch(Diceres[5]) {
      case "Axe":
        texture(axe);
        break;
      case "Arrow":
        texture(arrow);
        break;
      case "Shield+":
        texture(shieldfavour);
        break;
      case "Helmet+":
        texture(helmetfavour);
        break;
      case "Hand":
        texture(hand);
        break;
      }
      break;
    }
  }
}
