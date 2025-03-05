class Display {
  float xPos;
  float yPos;
  float zPos;
  int type;
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
  }

  void update() {
    Render();
  }



  void Render() {
    if (displaying) {
      fill(200);
      pushMatrix();     
      translate(xPos, yPos, zPos);
      beginShape();
      Texture();
      vertex(-50, -50, 50, 0, 0);
      vertex( 50, -50, 50, 1, 0);
      vertex( 50, 50, 50, 1, 1);
      vertex(-50, 50, 50, 0, 1);
      endShape();
      popMatrix();
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
