Dice dice1;
Dice dice2;
Dice dice3;
Dice dice4;
Dice dice5;
Dice dice6;
String gamestate;
Boolean sRoll = true;
void setup() {
  size(750, 500, P3D);
  dice1 = new Dice (width/2 - 50, height/2, -100, 1);
  dice2 = new Dice (width/2 -150 , height/2, -100, 2);
  dice3 = new Dice (width/2 -250, height/2, -100, 3);
  dice4 = new Dice (width/2 + 50, height/2, -100, 4);
  dice5 = new Dice (width/2 + 150, height/2, -100, 5);
  dice6 = new Dice (width/2 + 250, height/2, -100, 6);
  gamestate = "Intro";
  Diceassign(); 
  sRoll = !sRoll;
}

void draw() {
  background(0);
  dice1.update();
  dice2.update();
  dice3.update();
  dice4.update();
  dice5.update();
  dice6.update();
}

void mousePressed() {
}
void Diceassign(){
  dice1.Assign();
  dice2.Assign();
  dice3.Assign();
  dice4.Assign();
  dice5.Assign();
  dice6.Assign();
}
