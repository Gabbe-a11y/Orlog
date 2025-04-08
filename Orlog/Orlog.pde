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
Display dis7;
Display dis8;
Display dis9;
Display dis10;
Display dis11;
Display dis12;
int[] Dices = new int[6];
String[] Diceres = new String[6];
int[] Dices2 = new int[6];
String[] Diceres2 = new String[6];
String gamestate;
int activeplayer;
int p1Rolltimes;
int p2Rolltimes;
int disAnframes;
PImage stone;
void setup() {
  size(750, 500, P3D);
  stone = loadImage("Health-stone.png");
  dice1 = new Dice (width/2 - 250, height/2, -100, 1);
  dice2 = new Dice (width/2 - 150, height/2, -100, 2);
  dice3 = new Dice (width/2 - 50, height/2, -100, 3);
  dice4 = new Dice (width/2 + 50, height/2, -100, 4);
  dice5 = new Dice (width/2 + 150, height/2, -100, 5);
  dice6 = new Dice (width/2 + 250, height/2, -100, 6);
  dis1 = new Display(width/2 - 250, 50, -100, 1);
  dis2 = new Display(width/2 - 150, 50, -100, 2);
  dis3 = new Display(width/2 - 50, 50, -100, 3);
  dis4 = new Display(width/2 + 50, 50, -100, 4);
  dis5 = new Display(width/2 + 150, 50, -100, 5);
  dis6 = new Display(width/2 + 250, 50, -100, 6);
  dis7 = new Display(width/2 - 250, 50, -100, 1);
  dis8 = new Display(width/2 - 150, 50, -100, 2);
  dis9 = new Display(width/2 - 50, 50, -100, 3);
  dis10 = new Display(width/2 + 50, 50, -100, 4);
  dis11 = new Display(width/2 + 150, 50, -100, 5);
  dis12 = new Display(width/2 + 250, 50, -100, 6);
  gamestate = "start";
  activeplayer = 1;
  p1health = 15;
  p2health = 15;
  p1favour = 0;
  p2favour = 0;
}

void draw() {
  background(50);
  Reroll();
  Text();
  dis1.update();
  dis2.update();
  dis3.update();
  dis4.update();
  dis5.update();
  dis6.update();
  dis7.update();
  dis8.update();
  dis9.update();
  dis10.update();
  dis11.update();
  dis12.update();
  dice1.update();
  dice2.update();
  dice3.update();
  dice4.update();
  dice5.update();
  dice6.update();
  if (gamestate == "disan" && disAnframes + 100 == frameCount) {
    gamestate = "reroll?";
  }
  if (gamestate == "rolled" && p1Rolltimes == 3 && p2Rolltimes == 3) {
    DisAnStart();
    dice1.lockdown();
    dice2.lockdown();
    dice3.lockdown();
    dice4.lockdown();
    dice5.lockdown();
    dice6.lockdown();
    dis1.lockdown();
    dis2.lockdown();
    dis3.lockdown();
    dis4.lockdown();
    dis5.lockdown();
    dis6.lockdown();
  }
}

void Text() {
  fill(250);
  text(p1health, 50, 450);
  text(p2health, 700, 450);
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
    if (p1Rolltimes == 3 && p2Rolltimes == 3) {
      gamestate = "read";
    } else {
      DisplaysHide();
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
  if (activeplayer == 1) {
    p1Rolltimes = p1Rolltimes + 1;
    activeplayer = 2;
  } else if (activeplayer == 2) {
    p2Rolltimes = p2Rolltimes + 1;
    activeplayer = 1;
  }
}
void Display() {
  if (activeplayer == 1) {
    dis1.display();
    dis2.display();
    dis3.display();
    dis4.display();
    dis5.display();
    dis6.display();
  }
  if (activeplayer == 2) {
    dis7.display();
    dis8.display();
    dis9.display();
    dis10.display();
    dis11.display();
    dis12.display();
  }
  gamestate = "rolled";
}

void DisAnStart() {
  disAnframes = frameCount;
  gamestate = "disan";
}

void DisplaysHide() {
  dis1.Hide();
  dis2.Hide();
  dis3.Hide();
  dis4.Hide();
  dis5.Hide();
  dis6.Hide();
}
int dis;
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
  if (key == ENTER) {
    switch (gamestate) {
    case "rolled":
      DisAnStart();
      break;
    case "reroll":
      Roll();
      gamestate = "rolling";
      break;
    case "start":
      dice1.Render = true;
      dice2.Render = true;
      dice3.Render = true;
      dice4.Render = true;
      dice5.Render = true;
      dice6.Render = true;
      Roll();
      gamestate = "rolling";
    }
  }
}
