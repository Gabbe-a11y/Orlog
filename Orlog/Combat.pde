int damage;
void combat() {
  if (p1.priority) {
    damage = p1.axes - p2.helmets;
    p2.damage();
    damage = p1.arrows - p2.shields;
    p2.damage();
    damage = p2.axes - p1.helmets;
    p1.damage();
    damage = p2.arrows - p1.shields;
    p1.damage();
    if (p1.hands > p2.favour){
      p1.favour = p1.favour + p2.favour;
      p2.favour = 0;
    } else{
      p1.favour = p1.favour + p1.hands;
      p2.favour = p2.favour - p1.hands;
    }
    
  } else if (p2.priority) {
    damage = p2.axes - p1.helmets;
    p1.damage();
    damage = p2.arrows - p1.shields;
    p1.damage();
    damage = p1.axes - p2.helmets;
    p2.damage();
    damage = p1.arrows - p2.shields;
    p2.damage();
    if (p2.hands > p1.favour){
      p2.favour = p2.favour + p1.favour;
      p1.favour = 0;
    } else{
      p2.favour = p2.favour + p2.hands;
      p1.favour = p1.favour - p2.hands;
    }
  }
}
