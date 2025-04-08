int p1health;
int p2health;
int p1favour;
int p2favour;
int p1axes;
int p2axes;
int p1arrows;
int p2arrows;
int p1helmets;
int p2helmets;
int p1shields;
int p2shields;
int p1hands;
int p2hands;

void readprep() {
  p1axes = 0;
  p2axes = 0;
  p1arrows = 0;
  p2arrows = 0;
  p1helmets = 0;
  p2helmets = 0;
  p1shields = 0;
  p2shields = 0;
  p1hands = 0;
  p2hands = 0;
}
void read() {
  if (gamestate == "read") {
    switch(Diceres[0]) {
    case "Axe":
      p1axes = p1axes + 1;
      break;
    case "Arrow+":
      p1favour = p1favour + 1;
      p1arrows = p1arrows + 1;
      break;
    case "Shield":
      p1shields = p1shields + 1;
      break;
    case "Helmet":
      p1helmets = p1helmets + 1;
      break;
    case "Hand+":
      p1favour = p1favour + 1;
      p1hands = p1hands + 1;
      break;
    }
    switch(Diceres[1]) {
    case "Axe":
      p1axes = p1axes + 1;
      break;
    case "Arrow":
      p1arrows = p1arrows + 1;
      break;
    case "Shield+":
      p1favour = p1favour + 1;
      p1shields = p1shields + 1;
      break;
    case "Hand+":
      p1favour = p1favour + 1;
      p1hands = p1hands + 1;
      break;
    case "Helmet":
      p1helmets = p1helmets + 1;
      break;
    }
    switch(Diceres[2]) {
    case "Axe":
      p1axes = p1axes + 1;
      break;
    case "Hand":
      p1hands = p1hands + 1;
      break;
    case "Arrow+":
      p1favour = p1favour + 1;
      p1arrows = p1arrows + 1;
      break;
    case "Helmet+":
      p1favour = p1favour + 1;
      p1helmets = p1helmets + 1;
      break;
    case "Shield":
      p1shields = p1shields + 1;
      break;
    }
    switch(Diceres[3]) {
    case "Axe":
      p1axes = p1axes + 1;
      break;
    case "Arrow":
      p1arrows = p1arrows + 1;
      break;
    case "Hand+":
      p1favour = p1favour + 1;
      p1hands = p1hands + 1;
      break;
    case "Shield":
      p1shields = p1shields + 1;
      break;
    case "Helmet+":
      p1favour = p1favour + 1;
      p1helmets = p1helmets + 1;
      break;
    }
    switch(Diceres[4]) {
    case "Axe":
      p1axes = p1axes + 1;
      break;
    case "Hand":
      p1hands = p1hands + 1;
      break;
    case "Shield+":
      p1favour = p1favour + 1;
      p1shields = p1shields + 1;
      break;
    case "Helmet":
      p1helmets = p1helmets + 1;
      break;
    case "Arrow+":
      p1favour = p1favour + 1;
      p1arrows = p1arrows + 1;
      break;
    }
    switch(Diceres[5]) {
    case "Axe":
      p1axes = p1axes + 1;
      break;
    case "Hand":
      p1hands = p1hands + 1;
      break;
    case "Shield+":
      p1favour = p1favour + 1;
      p1shields = p1shields + 1;
      break;
    case "Arrow":
      p1arrows = p1arrows + 1;
      break;
    case "Helmet+":
      p1favour = p1favour + 1;
      p1helmets = p1helmets + 1;
      ;
      break;
    }
  }
  switch(Diceres2[0]) {
    case "Axe":
      p2axes = p2axes + 1;
      break;
    case "Arrow+":
      p2favour = p2favour + 1;
      p2arrows = p2arrows + 1;
      break;
    case "Shield":
      p2shields = p2shields + 1;
      break;
    case "Helmet":
      p2helmets = p2helmets + 1;
      break;
    case "Hand+":
      p2favour = p2favour + 1;
      p2hands = p2hands + 1;
      break;
    }
    switch(Diceres2[1]) {
    case "Axe":
      p2axes = p2axes + 1;
      break;
    case "Arrow":
      p2arrows = p2arrows + 1;
      break;
    case "Shield+":
      p2favour = p2favour + 1;
      p2shields = p2shields + 1;
      break;
    case "Hand+":
      p2favour = p2favour + 1;
      p2hands = p2hands + 1;
      break;
    case "Helmet":
      p2helmets = p2helmets + 1;
      break;
    }
    switch(Diceres2[2]) {
    case "Axe":
      p2axes = p2axes + 1;
      break;
    case "Hand":
      p2hands = p2hands + 1;
      break;
    case "Arrow+":
      p2favour = p2favour + 1;
      p2arrows = p2arrows + 1;
      break;
    case "Helmet+":
      p2favour = p2favour + 1;
      p2helmets = p2helmets + 1;
      break;
    case "Shield":
      p2shields = p2shields + 1;
      break;
    }
    switch(Diceres2[3]) {
    case "Axe":
      p2axes = p2axes + 1;
      break;
    case "Arrow":
      p2arrows = p2arrows + 1;
      break;
    case "Hand+":
      p2favour = p2favour + 1;
      p2hands = p2hands + 1;
      break;
    case "Shield":
      p2shields = p2shields + 1;
      break;
    case "Helmet+":
      p2favour = p2favour + 1;
      p2helmets = p2helmets + 1;
      break;
    }
    switch(Diceres2[4]) {
    case "Axe":
      p2axes = p2axes + 1;
      break;
    case "Hand":
      p2hands = p2hands + 1;
      break;
    case "Shield+":
      p2favour = p2favour + 1;
      p2shields = p2shields + 1;
      break;
    case "Helmet":
      p2helmets = p2helmets + 1;
      break;
    case "Arrow+":
      p2favour = p2favour + 1;
      p2arrows = p2arrows + 1;
      break;
    }
    switch(Diceres2[5]) {
    case "Axe":
      p2axes = p2axes + 1;
      break;
    case "Hand":
      p2hands = p2hands + 1;
      break;
    case "Shield+":
      p2favour = p2favour + 1;
      p2shields = p2shields + 1;
      break;
    case "Arrow":
      p2arrows = p2arrows + 1;
      break;
    case "Helmet+":
      p2favour = p2favour + 1;
      p2helmets = p2helmets + 1;
      ;
      break;
    }
  }
