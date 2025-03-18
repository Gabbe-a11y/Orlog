class Display {
  float xPos;
  float yPos;
  float zPos;
  float size;
  int type;
  boolean locked;
  boolean animated;
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
      if (locked) {
        
      }
      popMatrix();
    }
    if (locked && gamestate == "disan" && !animated) {
      animation();
    }
  }

  void animation() {
    size = size - (20/150);
    anframe = anframe + 1;
    switch(type) {
    case 1:
      xPos = xPos - (25/150);
      yPos = yPos + (150/150);
      break;
    case 2:
      xPos = xPos - (125/150);
      yPos = yPos + (175/150);
      break;
    case 3:
      xPos = xPos - (225/150);
      yPos = yPos + (200/150);
      break;      
    case 4:
      xPos = xPos - (325/150);
      yPos = yPos + (225/150);
      break;
    case 5:
      xPos = xPos - (425/150);
      yPos = yPos + (250/150);
      break;
    case 6:
      xPos = xPos - (525/150);
      yPos = yPos + (275/150);
      break;
    }
    if (anframe == 150) {
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
