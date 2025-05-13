class Player {
  int health;
  int favour;
  int axes;
  int arrows;
  int helmets;
  int shields;
  int hands;
  int type;
  int rolltimes;
  boolean activeplayer;
  boolean priority;
  boolean alive;
  boolean locked;
  Player(int _type) {
    type = _type;
    alive = true;
    locked = false;
    rolltimes = 0;
    health = 15;
    if (type == 1) {
      activeplayer = true;
      priority = false;
    } else if (type == 2) {
      activeplayer = false;
      priority = true;
    }
  }

  void dicerendering() {
    activeplayer = !activeplayer;
  }
  
  void priorityswap(){
    priority = !priority;
  }
  
  void damage(){
    if (damage <= 0){
      damage = 0;
    }
    health = health - damage;
    if (health <= 0){
      gamestate = "end";
    }
  }

  void readprep() {
    axes = 0;
    arrows = 0;
    helmets = 0;
    shields = 0;
    hands = 0;
  }
  void read() {
    if (gamestate == "read") {
      switch(type) {
      case 1:
        switch(Diceres[0]) {
        case "Axe":
          axes = axes + 1;
          break;
        case "Arrow+":
          favour = favour + 1;
          arrows = arrows + 1;
          break;
        case "Shield":
          shields = shields + 1;
          break;
        case "Helmet":
          helmets = helmets + 1;
          break;
        case "Hand+":
          favour = favour + 1;
          hands = hands + 1;
          break;
        }
        switch(Diceres[1]) {
        case "Axe":
          axes = axes + 1;
          break;
        case "Arrow":
          arrows = arrows + 1;
          break;
        case "Shield+":
          favour = favour + 1;
          shields = shields + 1;
          break;
        case "Hand+":
          favour = favour + 1;
          hands = hands + 1;
          break;
        case "Helmet":
          helmets = helmets + 1;
          break;
        }
        switch(Diceres[2]) {
        case "Axe":
          axes = axes + 1;
          break;
        case "Hand":
          hands = hands + 1;
          break;
        case "Arrow+":
          favour = favour + 1;
          arrows = arrows + 1;
          break;
        case "Helmet+":
          favour = favour + 1;
          helmets = helmets + 1;
          break;
        case "Shield":
          shields = shields + 1;
          break;
        }
        switch(Diceres[3]) {
        case "Axe":
          axes = axes + 1;
          break;
        case "Arrow":
          arrows = arrows + 1;
          break;
        case "Hand+":
          favour = favour + 1;
          hands = hands + 1;
          break;
        case "Shield":
          shields = shields + 1;
          break;
        case "Helmet+":
          favour = favour + 1;
          helmets = helmets + 1;
          break;
        }
        switch(Diceres[4]) {
        case "Axe":
          axes = axes + 1;
          break;
        case "Hand":
          hands = hands + 1;
          break;
        case "Shield+":
          favour = favour + 1;
          shields = shields + 1;
          break;
        case "Helmet":
          helmets = helmets + 1;
          break;
        case "Arrow+":
          favour = favour + 1;
          arrows = arrows + 1;
          break;
        }
        switch(Diceres[5]) {
        case "Axe":
          axes = axes + 1;
          break;
        case "Hand":
          hands = hands + 1;
          break;
        case "Shield+":
          favour = favour + 1;
          shields = shields + 1;
          break;
        case "Arrow":
          arrows = arrows + 1;
          break;
        case "Helmet+":
          favour = favour + 1;
          helmets = helmets + 1;
          ;
          break;
        }
        break;
      case 2:
        switch(Diceres2[0]) {
        case "Axe":
          axes = axes + 1;
          break;
        case "Arrow+":
          favour = favour + 1;
          arrows = arrows + 1;
          break;
        case "Shield":
          shields = shields + 1;
          break;
        case "Helmet":
          helmets = helmets + 1;
          break;
        case "Hand+":
          favour = favour + 1;
          hands = hands + 1;
          break;
        }
        switch(Diceres2[1]) {
        case "Axe":
          axes = axes + 1;
          break;
        case "Arrow":
          arrows = arrows + 1;
          break;
        case "Shield+":
          favour = favour + 1;
          shields = shields + 1;
          break;
        case "Hand+":
          favour = favour + 1;
          hands = hands + 1;
          break;
        case "Helmet":
          helmets = helmets + 1;
          break;
        }
        switch(Diceres2[2]) {
        case "Axe":
          axes = axes + 1;
          break;
        case "Hand":
          hands = hands + 1;
          break;
        case "Arrow+":
          favour = favour + 1;
          arrows = arrows + 1;
          break;
        case "Helmet+":
          favour = favour + 1;
          helmets = helmets + 1;
          break;
        case "Shield":
          shields = shields + 1;
          break;
        }
        switch(Diceres2[3]) {
        case "Axe":
          axes = axes + 1;
          break;
        case "Arrow":
          arrows = arrows + 1;
          break;
        case "Hand+":
          favour = favour + 1;
          hands = hands + 1;
          break;
        case "Shield":
          shields = shields + 1;
          break;
        case "Helmet+":
          favour = favour + 1;
          helmets = helmets + 1;
          break;
        }
        switch(Diceres2[4]) {
        case "Axe":
          axes = axes + 1;
          break;
        case "Hand":
          hands = hands + 1;
          break;
        case "Shield+":
          favour = favour + 1;
          shields = shields + 1;
          break;
        case "Helmet":
          helmets = helmets + 1;
          break;
        case "Arrow+":
          favour = favour + 1;
          arrows = arrows + 1;
          break;
        }
        switch(Diceres2[5]) {
        case "Axe":
          axes = axes + 1;
          break;
        case "Hand":
          hands = hands + 1;
          break;
        case "Shield+":
          favour = favour + 1;
          shields = shields + 1;
          break;
        case "Arrow":
          arrows = arrows + 1;
          break;
        case "Helmet+":
          favour = favour + 1;
          helmets = helmets + 1;
          ;
          break;
        }
      }
    }
  }
}
