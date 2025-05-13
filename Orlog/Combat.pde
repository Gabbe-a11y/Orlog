int damage;

void combat() {
  if (p1.priority){
    damage = p1.axes - p2.helmets;
    p2.damage();
    damage = p1.arrows - p2.shields;
    p2.damage();
    damage = p2.axes - p1.helmets;
    p1.damage();
    damage = p2.arrows - p1.shields;
    p1.damage();
  }
  else if (p2.priority){
    damage = p2.axes - p1.helmets;
    p1.damage();
    damage = p2.arrows - p1.shields;
    p1.damage();
    damage = p1.axes - p2.helmets;
    p2.damage();
    damage = p1.arrows - p2.shields;
    p2.damage();
  }
}
