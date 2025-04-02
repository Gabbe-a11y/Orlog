String res1;
String res2;
String res3;
String res4;
String res5;
String res6;
void Diceresults() {
  if (activeplayer == "1"){
  switch(Dices[0]) {
  case 1:
    res1 = "Axe";
    break;
  case 2:
    res1 = "Axe";
    break;
  case 3:
    res1 = "Arrow+";
    break;
  case 4:
    res1 = "Shield";
    break;
  case 5:
    res1 = "Helmet";
    break;
  case 6:
    res1 = "Hand+";
    break;
  }
  switch(Dices[1]) {
  case 1:
    res2 = "Axe";
    break;
  case 2:
    res2 = "Axe";
    break;
  case 3:
    res2 = "Arrow";
    break;
  case 4:
    res2 = "Shield+";
    break;
  case 5:
    res2 = "Hand+";
    break;
  case 6:
    res2 = "Helmet";
    break;
  }
  switch(Dices[2]) {
  case 1:
    res3 = "Axe";
    break;
  case 2:
    res3 = "Axe";
    break;
  case 3:
    res3 = "Hand";
    break;
  case 4:
    res3 = "Arrow+";
    break;
  case 5:
    res3 = "Helmet+";
    break;
  case 6:
    res3 = "Shield";
    break;
  }
  switch(Dices[3]) {
  case 1:
    res4 = "Axe";
    break;
  case 2:
    res4 = "Arrow";
    break;
  case 3:
    res4 = "Hand+";
    break;
  case 4:
    res4 = "Shield";
    break;
  case 5:
    res4 = "Helmet+";
    break;
  case 6:
    res4 = "Axe";
    break;
  }
  switch(Dices[4]) {
  case 1:
    res5 = "Axe";
    break;
  case 2:
    res5 = "Axe";
    break;
  case 3:
    res5 = "Hand";
    break;
  case 4:
    res5 = "Shield+";
    break;
  case 5:
    res5 = "Helmet";
    break;
  case 6:
    res5 = "Arrow+";
    break;
  }
  switch(Dices[5]) {
  case 1:
    res6 = "Axe";
    break;
  case 2:
    res6 = "Axe";
    break;
  case 3:
    res6 = "Hand";
    break;
  case 4:
    res6 = "Shield+";
    break;
  case 5:
    res6 = "Arrow";
    break;
  case 6:
    res6 = "Helmet+";
    break;
  }
  Diceres[0] = res1;
  Diceres[1] = res2;
  Diceres[2] = res3;
  Diceres[3] = res4;
  Diceres[4] = res5;
  Diceres[5] = res6;
  }
  if (activeplayer == "2"){
  switch(Dices2[0]) {
  case 1:
    res1 = "Axe";
    break;
  case 2:
    res1 = "Axe";
    break;
  case 3:
    res1 = "Arrow+";
    break;
  case 4:
    res1 = "Shield";
    break;
  case 5:
    res1 = "Helmet";
    break;
  case 6:
    res1 = "Hand+";
    break;
  }
  switch(Dices2[1]) {
  case 1:
    res2 = "Axe";
    break;
  case 2:
    res2 = "Axe";
    break;
  case 3:
    res2 = "Arrow";
    break;
  case 4:
    res2 = "Shield+";
    break;
  case 5:
    res2 = "Hand+";
    break;
  case 6:
    res2 = "Helmet";
    break;
  }
  switch(Dices2[2]) {
  case 1:
    res3 = "Axe";
    break;
  case 2:
    res3 = "Axe";
    break;
  case 3:
    res3 = "Hand";
    break;
  case 4:
    res3 = "Arrow+";
    break;
  case 5:
    res3 = "Helmet+";
    break;
  case 6:
    res3 = "Shield";
    break;
  }
  switch(Dices2[3]) {
  case 1:
    res4 = "Axe";
    break;
  case 2:
    res4 = "Arrow";
    break;
  case 3:
    res4 = "Hand+";
    break;
  case 4:
    res4 = "Shield";
    break;
  case 5:
    res4 = "Helmet+";
    break;
  case 6:
    res4 = "Axe";
    break;
  }
  switch(Dices2[4]) {
  case 1:
    res5 = "Axe";
    break;
  case 2:
    res5 = "Axe";
    break;
  case 3:
    res5 = "Hand";
    break;
  case 4:
    res5 = "Shield+";
    break;
  case 5:
    res5 = "Helmet";
    break;
  case 6:
    res5 = "Arrow+";
    break;
  }
  switch(Dices2[5]) {
  case 1:
    res6 = "Axe";
    break;
  case 2:
    res6 = "Axe";
    break;
  case 3:
    res6 = "Hand";
    break;
  case 4:
    res6 = "Shield+";
    break;
  case 5:
    res6 = "Arrow";
    break;
  case 6:
    res6 = "Helmet+";
    break;
  }
  Diceres2[0] = res1;
  Diceres2[1] = res2;
  Diceres2[2] = res3;
  Diceres2[3] = res4;
  Diceres2[4] = res5;
  Diceres2[5] = res6;
  }
}
