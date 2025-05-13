class Display {
  float xPos;
  float yPos;
  float zPos;
  float size;
  int type;
  boolean locked;
  boolean animated;
  boolean Rendering;
  boolean read = false;
  String result;
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
    size = 50;
    animated = false;
    Rendering =false;
  }

  void update() {
    Render();
  }

  void lock() {
    locked = !locked;
  }
  void lockdown() {
    if (!locked) {
      locked = true;
    }
  }

  void Render() {
    if (Rendering) {
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
      animation();
    }
  }
  void animation() {
    if (locked == true && gamestate == "disan" && !animated) {
      size = size - 0.2;
      switch(type) {
      case 1:
        xPos = xPos - 2.51;
        yPos = yPos + 2;
        break;
      case 2:
        xPos = xPos - 3.51;
        yPos = yPos + 2.5;
        break;
      case 3:
        xPos = xPos - 4.51;
        yPos = yPos + 3;
        break;
      case 4:
        xPos = xPos - 5.51;
        yPos = yPos + 3.5;
        break;
      case 5:
        xPos = xPos - 6.51;
        yPos = yPos + 4;
        break;
      case 6:
        xPos = xPos - 7.51;
        yPos = yPos + 4.5;
        break;
      case 12:
        xPos = xPos + 2.51;
        yPos = yPos + 2;
        break;
      case 11:
        xPos = xPos + 3.51;
        yPos = yPos + 2.5;
        break;
      case 10:
        xPos = xPos + 4.51;
        yPos = yPos + 3;
        break;
      case 9:
        xPos = xPos + 5.51;
        yPos = yPos + 3.5;
        break;
      case 8:
        xPos = xPos + 6.51;
        yPos = yPos + 4;
        break;
      case 7:
        xPos = xPos + 7.51;
        yPos = yPos + 4.5;
        break;
      }

      if (frameCount == disAnframes + 100) {
        animated = true;
      }
    }
  }
  void Hide() {
    if (!locked) {
      Rendering = false;
    }
  }
  void display() {
    if (!locked) {
      Rendering = true;
    }
  }

  void CombatAxeHelm() {
    if (result == "Axe" || result == "Helmet" || result == "Helmet+") {
      if (type == 1 || type == 2|| type == 3|| type == 4|| type == 5 || type == 6) {
        for (int i = 0; i < 10; i = i + 1) {
          xPos = xPos + 5;
          delay (10);
          read = true;
        }
      } else {
        for (int i = 0; i < 10; i = i + 1) {
          xPos = xPos - 5;
          delay (10);
          read = true;
        }
      }
    }
  }




  void Texture() {
    switch(type) {
    case 1:
      switch(Diceres[0]) {
      case "Axe":
        texture(axe);
        result = "Axe";
        break;
      case "Arrow+":
        texture(arrowfavour);
        result = "Arrow+";
        break;
      case "Shield":
        texture(shield);
        result = "Shield";
        break;
      case "Helmet":
        texture(helmet);
        result = "Helmet";
        break;
      case "Hand+":
        texture(handfavour);
        result = "Hand+";
        break;
      }
      break;
    case 2:
      switch(Diceres[1]) {
      case "Axe":
        texture(axe);
        result = "Axe";
        break;
      case "Arrow":
        texture(arrow);
        result = "Arrow";
        break;
      case "Shield+":
        texture(shieldfavour);
        result = "Shield+";
        break;
      case "Helmet":
        texture(helmet);
        result = "Helmet";
        break;
      case "Hand+":
        texture(handfavour);
        result = "Hand+";
        break;
      }
      break;
    case 3:
      switch(Diceres[2]) {
      case "Axe":
        texture(axe);
        result = "Axe";
        break;
      case "Arrow+":
        texture(arrowfavour);
        result = "Arrow+";
        break;
      case "Shield":
        texture(shield);
        result = "Shield";
        break;
      case "Helmet+":
        texture(helmetfavour);
        result = "Helmet+";
        break;
      case "Hand":
        texture(hand);
        result = "Hand";
        break;
      }
      break;
    case 4:
      switch(Diceres[3]) {
      case "Axe":
        texture(axe);
        result = "Axe";
        break;
      case "Arrow":
        texture(arrow);
        result = "Arrow";
        break;
      case "Shield":
        texture(shield);
        result = "Shield";
        break;
      case "Helmet+":
        texture(helmetfavour);
        result = "Helmet+";
        break;
      case "Hand+":
        texture(handfavour);
        result = "Hand+";
        break;
      }
      break;
    case 5:
      switch(Diceres[4]) {
      case "Axe":
        texture(axe);
        result = "Axe";
        break;
      case "Arrow+":
        texture(arrowfavour);
        result = "Arrow+";
        break;
      case "Shield+":
        texture(shieldfavour);
        result = "Shield+";
        break;
      case "Helmet":
        texture(helmet);
        result = "Helmet";
        break;
      case "Hand":
        texture(hand);
        result = "Hand";
        break;
      }
      break;
    case 6:
      switch(Diceres[5]) {
      case "Axe":
        texture(axe);
        result = "Axe";
        break;
      case "Arrow":
        texture(arrow);
        result = "Arrow";
        break;
      case "Shield+":
        texture(shieldfavour);
        result = "Shield+";
        break;
      case "Helmet+":
        texture(helmetfavour);
        result = "Helmet+";
        break;
      case "Hand":
        texture(hand);
        result = "Hand";
        break;
      }
      break;
    case 7:
      switch(Diceres2[0]) {
      case "Axe":
        texture(axe);
        result = "Axe";
        break;
      case "Arrow+":
        texture(arrowfavour);
        result = "Arrow+";
        break;
      case "Shield":
        texture(shield);
        result = "Shield";
        break;
      case "Helmet":
        texture(helmet);
        result = "Helmet";
        break;
      case "Hand+":
        texture(handfavour);
        result = "Hand+";
        break;
      }
      break;
    case 8:
      switch(Diceres2[1]) {
      case "Axe":
        texture(axe);
        result = "Axe";
        break;
      case "Arrow":
        texture(arrow);
        result = "Arrow";
        break;
      case "Shield+":
        texture(shieldfavour);
        result = "Shield+";
        break;
      case "Helmet":
        texture(helmet);
        result = "Helmet";
        break;
      case "Hand+":
        texture(handfavour);
        result = "Hand+";
        break;
      }
      break;
    case 9:
      switch(Diceres2[2]) {
      case "Axe":
        texture(axe);
        result = "Axe";
        break;
      case "Arrow+":
        texture(arrowfavour);
        result = "Arrow+";
        break;
      case "Shield":
        texture(shield);
        result = "Shield";
        break;
      case "Helmet+":
        texture(helmetfavour);
        result = "Helmet+";
        break;
      case "Hand":
        texture(hand);
        result = "Hand";
        break;
      }
      break;
    case 10:
      switch(Diceres2[3]) {
      case "Axe":
        texture(axe);
        result = "Axe";
        break;
      case "Arrow":
        texture(arrow);
        result = "Arrow";
        break;
      case "Shield":
        texture(shield);
        result = "Shield";
        break;
      case "Helmet+":
        texture(helmetfavour);
        result = "Helmet+";
        break;
      case "Hand+":
        texture(handfavour);
        result = "Hand+";
        break;
      }
      break;
    case 11:
      switch(Diceres2[4]) {
      case "Axe":
        texture(axe);
        result = "Axe";
        break;
      case "Arrow+":
        texture(arrowfavour);
        result = "Arrow+";
        break;
      case "Shield+":
        texture(shieldfavour);
        result = "Shield+";
        break;
      case "Helmet":
        texture(helmet);
        result = "Helmet";
        break;
      case "Hand":
        texture(hand);
        result = "Hand";
        break;
      }
      break;
    case 12:
      switch(Diceres2[5]) {
      case "Axe":
        texture(axe);
        result = "Axe";
        break;
      case "Arrow":
        texture(arrow);
        result = "Arrow";
        break;
      case "Shield+":
        texture(shieldfavour);
        result = "Shield+";
        break;
      case "Helmet+":
        texture(helmetfavour);
        result = "Helmet+";
        break;
      case "Hand":
        texture(hand);
        result = "Hand";
        break;
      }
      break;
    }
  }
}
