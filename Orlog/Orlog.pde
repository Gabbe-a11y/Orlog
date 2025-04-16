Dice dice1;
Dice dice2;
Dice dice3;
Dice dice4;
Dice dice5;
Dice dice6;
Dice dice7;
Dice dice8;
Dice dice9;
Dice dice10;
Dice dice11;
Dice dice12;
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
Player p1;
Player p2;
int[] Dices = new int[6];
String[] Diceres = new String[6];
int[] Dices2 = new int[6];
String[] Diceres2 = new String[6];
String gamestate;
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
  dice7 = new Dice (width/2 - 250, height/2, -100, 7);
  dice8 = new Dice (width/2 - 150, height/2, -100, 8);
  dice9 = new Dice (width/2 - 50, height/2, -100, 9);
  dice10 = new Dice (width/2 + 50, height/2, -100, 10);
  dice11 = new Dice (width/2 + 150, height/2, -100, 11);
  dice12 = new Dice (width/2 + 250, height/2, -100, 12);
  dis1 = new Display(width/2 - 250, 50, -100, 1);
  dis2 = new Display(width/2 - 150, 50, -100, 2);
  dis3 = new Display(width/2 - 50, 50, -100, 3);
  dis4 = new Display(width/2 + 50, 50, -100, 4);
  dis5 = new Display(width/2 + 150, 50, -100, 5);
  dis6 = new Display(width/2 + 250, 50, -100, 6);
  dis7 = new Display(width/2 - 250, 50, -100, 7);
  dis8 = new Display(width/2 - 150, 50, -100, 8);
  dis9 = new Display(width/2 - 50, 50, -100, 9);
  dis10 = new Display(width/2 + 50, 50, -100, 10);
  dis11 = new Display(width/2 + 150, 50, -100, 11);
  dis12 = new Display(width/2 + 250, 50, -100, 12);
  p1 = new Player(1);
  p2 = new Player(2);
  gamestate = "start";
}

void draw() {
  background(50);
  //Reroll();
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
  dice7.update();
  dice8.update();
  dice9.update();
  dice10.update();
  dice11.update();
  dice12.update();
  if (gamestate == "disan" && disAnframes + 100 == frameCount) {
    gamestate = "reroll?";
  }
  if (gamestate == "rolled") {
    if (p1.rolltimes == 3) {
      DisAnStart();
      dis1.lockdown();
      dis2.lockdown();
      dis3.lockdown();
      dis4.lockdown();
      dis5.lockdown();
      dis6.lockdown();
      dice1.lockdown();
      dice2.lockdown();
      dice3.lockdown();
      dice4.lockdown();
      dice5.lockdown();
      dice6.lockdown();
    }
    if (p2.rolltimes == 3) {
      DisAnStart();
      dis7.lockdown();
      dis8.lockdown();
      dis9.lockdown();
      dis10.lockdown();
      dis11.lockdown();
      dis12.lockdown();
      dice7.lockdown();
      dice8.lockdown();
      dice9.lockdown();
      dice10.lockdown();
      dice11.lockdown();
      dice12.lockdown();
    }
  }
}

void Text() {
  fill(250);
  text(p1.health, 50, 450);
  text(p2.health, 700, 450);
  switch(gamestate) {
  case "rolled":
    text("Tryck på de du vill behålla", width/2 - 100, height/2, 50);
    if (p1.dicerendering) {
      text("Spelare 1", width/2 - 25, height/2 + 200, 50);
    } else if (p2.dicerendering) {
      text("Spelare 2", width/2 - 25, height/2 + 200, 50);
    }
    break;
  }
}
int diceslocked;
void Reroll() {
  diceslocked = 0;
  dice1.diceslocked();
  dice2.diceslocked();
  dice3.diceslocked();
  dice4.diceslocked();
  dice5.diceslocked();
  dice6.diceslocked();
  dice7.diceslocked();
  dice8.diceslocked();
  dice9.diceslocked();
  dice10.diceslocked();
  dice11.diceslocked();
  dice12.diceslocked();
  if (gamestate == "reroll?") {
    if (p1.rolltimes == 3 && p2.rolltimes == 3 || diceslocked == 12) {
      gamestate = "read";
      p1.read();
      p2.read();
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
  dice7.Assign();
  dice8.Assign();
  dice9.Assign();
  dice10.Assign();
  dice11.Assign();
  dice12.Assign();
  Diceresults();
}

void Roll() {
  Diceassign();
}
void Display() {
  if (p1.dicerendering) {
    dis1.display();
    dis2.display();
    dis3.display();
    dis4.display();
    dis5.display();
    dis6.display();
  } else if (p2.dicerendering) {
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
  dis7.Hide();
  dis8.Hide();
  dis9.Hide();
  dis10.Hide();
  dis11.Hide();
  dis12.Hide();
}
void mousePressed() {
  if (gamestate == "rolled") {
    if (p1.dicerendering) {
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
    } else if (p2.dicerendering) {
      if (width/2-300 <= mouseX && mouseX <= width/2-200 && 0 <= mouseY && mouseY <= 100) {
        dice7.lock();
        dis7.lock();
      } else if (width/2-200 <= mouseX && mouseX <= width/2-100 && 0 <= mouseY && mouseY <= 100) {
        dice8.lock();
        dis8.lock();
      } else if (width/2-100 <= mouseX && mouseX <= width/2 && 0 <= mouseY && mouseY <= 100) {
        dice9.lock();
        dis9.lock();
      } else if (width/2 <= mouseX && mouseX <= width/2 +100 && 0 <= mouseY && mouseY <= 100) {
        dice10.lock();
        dis10.lock();
      } else if (width/2 + 100 <= mouseX && mouseX <= width/2 + 200 && 0 <= mouseY && mouseY <= 100) {
        dice11.lock();
        dis11.lock();
      } else if (width/2 + 200 <= mouseX && mouseX <= width/2 + 300 && 0 <= mouseY && mouseY <= 100) {
        dice12.lock();
        dis12.lock();
      }
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
      p1.dicerendering();
      p2.dicerendering();
      dicerender();
      gamestate = "rolling";
      break;
      case "start":
      dicerender();
      Roll();
      gamestate = "rolling";
    }
  }
}
void dicerender() {
  if (p1.dicerendering == true) {
    dice1.Rendering();
    dice2.Rendering();
    dice3.Rendering();
    dice4.Rendering();
    dice5.Rendering();
    dice6.Rendering();
  } else {
    dice1.Render = false;
    dice2.Render = false;
    dice3.Render = false;
    dice4.Render = false;
    dice5.Render = false;
    dice6.Render = false;
  }
    if (p2.dicerendering == true) {
    dice7.Rendering();
    dice8.Rendering();
    dice9.Rendering();
    dice10.Rendering();
    dice11.Rendering();
    dice12.Rendering();
  } else {
    dice7.Render = false;
    dice8.Render = false;
    dice9.Render = false;
    dice10.Render = false;
    dice11.Render = false;
    dice12.Render = false;
  }
}
