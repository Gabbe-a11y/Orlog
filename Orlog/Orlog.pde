Dice dice1;
Dice dice2;
Dice dice3;
Dice dice4;
Dice dice5;
Dice dice6;
Display dis1;
Display dis2;
Display dis3;
Display dis4;
Display dis5;
Display dis6;
int[] Dices = new int[6];
String[] Diceres = new String[6];
String gamestate;
Boolean sRoll = true;
Boolean displaying = false;
int Rolltimes;
void setup() {
  size(750, 500, P3D);
  dice1 = new Dice (width/2 -250, height/2, -100, 1);
  dice2 = new Dice (width/2 -150, height/2, -100, 2);
  dice3 = new Dice (width/2 - 50, height/2, -100, 3);
  dice4 = new Dice (width/2 + 50, height/2, -100, 4);
  dice5 = new Dice (width/2 + 150, height/2, -100, 5);
  dice6 = new Dice (width/2 + 250, height/2, -100, 6);
  dis1 = new Display(width/2 -250, 50, -100, 1);
  dis2 = new Display(width/2 -150, 50, -100, 2);
  dis3 = new Display(width/2 -50, 50, -100, 3);
  dis4 = new Display(width/2 +50, 50, -100, 4);
  dis5 = new Display(width/2 +150, 50, -100, 5);
  dis6 = new Display(width/2 +250, 50, -100, 6);
  gamestate = "Intro";
  Roll();
}

void draw() {
  background(50);
  dice1.update();
  dice2.update();
  dice3.update();
  dice4.update();
  dice5.update();
  dice6.update();
  dis1.update();
  dis2.update();
  dis3.update();
  dis4.update();
  dis5.update();
  dis6.update();
}


void Diceassign() {
  dice1.Assign();
  dice2.Assign();
  dice3.Assign();
  dice4.Assign();
  dice5.Assign();
  dice6.Assign();
  Diceresults();
  println(Diceres);
}

void Roll() {
  Diceassign();
}
void Display() {
  displaying = true;
  gamestate = "Rolled";
}


void keyPressed() {
  if (gamestate == "Rolled") {
    switch(key){
      case 1:
      dice1.lock();
      break;
      case 2:
      dice2.lock();
      break;
      case 3:
      dice3.lock();
      break;
      case 4:
      dice4.lock();
      break;
      case 5:
      dice5.lock();
      break;
      case 6:
      dice6.lock();
      break;
    }
    if (key == CODED) {
      if (key == ENTER){
        Roll();
      }
    }
  }
}
