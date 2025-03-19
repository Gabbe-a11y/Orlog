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
  Reroll();
  Text();
}

void Text() {
  switch(gamestate) {
  case "reroll":
    break;
  case "rolled":
    text("Tryck på de du vill behålla", width/2 - 100, height/2, 50);
    break;
  }
}
void Reroll() {
  if (gamestate == "reroll?") {
    if (Rolltimes == 3) {
      gamestate = "read";
    } else {
      gamestate = "reroll";
    }
  }
}

void Diceassign() {
  gamestate = "rolling";
  dice1.Assign();
  dice2.Assign();
  dice3.Assign();
  dice4.Assign();
  dice5.Assign();
  dice6.Assign();
  Diceresults();
}

void Roll() {
  Diceassign();
  Rolltimes = Rolltimes + 1;
}
void Display() {
  displaying = true;
  gamestate = "rolled";
}

void mousePressed() {
  if (gamestate == "rolled") {
    if (width/2-300 <= mouseX && mouseX <= width/2-200 && 0 <= mouseY && mouseY <= 100) {
      dice1.lock();
      dis1.lock();
    } else if (width/2-200 <= mouseX && mouseX <= width/2-100 && 0 <= mouseY && mouseY <= 100) {
      dice2.lock();
      dis2.lock();
    } else if (width/2-100 <= mouseX && mouseX <= width/2 && 0 <= mouseY && mouseY <= 100) {
      dice3.lock();
      dis3.lock();
    } else if (width/2 <= mouseX && mouseX <= width/2 +100 && 0 <= mouseY && mouseY <= 100) {
      dice4.lock();
      dis4.lock();
    } else if (width/2 + 100 <= mouseX && mouseX <= width/2 + 200 && 0 <= mouseY && mouseY <= 100) {
      dice5.lock();
      dis5.lock();
    } else if (width/2 + 200 <= mouseX && mouseX <= width/2 + 300 && 0 <= mouseY && mouseY <= 100) {
      dice6.lock();
      dis6.lock();
    }
  }
}
void keyPressed() {
  if (key == ENTER && gamestate == "rolled") {
    dis1.anstart();
    dis2.anstart();
    dis3.anstart();
    dis4.anstart();
    dis5.anstart();
    dis6.anstart();
    gamestate = "disan";
  }
  if (key == 'R' && gamestate == "reroll") {
    Reroll();
  }
}
