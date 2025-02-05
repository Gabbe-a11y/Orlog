Dice dice1;
Dice dice2;
Dice dice3;
Dice dice4;
Dice dice5;
Dice dice6;
String gamestate;
void setup() {
  size(750, 500, P3D);
  dice1 = new Dice (width/2, height/2, -100);
  dice2 = new Dice (width/2 + 200, height/2, -100);
  dice3 = new Dice (width/2 - 200, height/2, -100);
  gamestate = "Intro";
}

void draw() {
  background(0);
  dice1.update();
  dice2.update();
  dice3.update();
}

void mousePressed() {
}
