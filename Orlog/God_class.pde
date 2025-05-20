class God {
  float xPos;
  float yPos;
  int type;
  PImage heal = loadImage("Godly healing.png");
  PImage skill = loadImage("Godly skill.png");
  PImage wrath = loadImage("Godly wrath.png");
  PImage wrathrules = loadImage("Orlog wrath.rules.png");
  God(float _xPos, float _yPos, int _type) {
    xPos = _xPos;
    yPos = _yPos;
    type = _type;
  }

  void update() {
    pushMatrix();
    render();

    popMatrix();
  }

  void choice() {
    switch(type) {
    case 1:

      break;
    case 2:

      break;
    case 3:

      break;
    }
  }



  void render() {
    if (gamestate == "god powers choice") {
      translate(xPos, yPos);
      beginShape();
      Texture();
      vertex(-100, -100, 100, 0, 0);
      vertex(100, -100, 100, 1, 0);
      vertex(100, 100, 100, 1, 1);
      vertex(-100, 100, 100, 0, 1);
      endShape();
      beginShape();
      Rules();
      vertex(-100, 100, 100, 0, 0);
      vertex(150, 100, 100, 1, 0);
      vertex(150, 300, 100, 1, 1);
      vertex(-10, 300, 100, 0, 1);
      endShape();
    }
  }

  void Texture() {
    switch(type) {
    case 1:
      texture(wrath);
      break;
    case 2:
      texture(skill);
      break;
    case 3:
      texture(heal);
      break;
    }
  }
  void Rules() {
    switch(type) {
    case 1:
      texture(wrathrules);
      break;
    case 2:
      texture(skill);
      break;
    case 3:
      texture(heal);
      break;
    }
  }
}
