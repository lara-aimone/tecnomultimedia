//ESCENARIO 1
void creditos(){
  escenario = 1;
  image(Fon[0], 0, 0, 400, 400);
  
  fill (255);
  textSize (30);
  fill (280, 0, 0);
  textSize(25);
  text ("HECHO POR", texto, posY5); 
  posY5--;
  fill (255);
  textSize (30);
  text ("Lara Aimone", texto, posY6);
  posY6--;
  
  fill (280, 0, 0);
  textSize (25);
  text ("INSPIRADO EN", texto, posY7);
  posY7--;
  fill (255);
  textSize (30);
  text ("Catch the ball", texto, posY8);
  posY8--;
  
  fill (280, 0, 0);
  textSize (25);
  text ("PROTAGONISTAS", texto, posY9);
  posY9--;
  fill (255);
  textSize (30);
  text ("Manzanas y Canasta", texto, posY10);
  posY10--;
  
  fill (280, 0, 0);
  textSize (25);
  text ("PRESIONA P PARA JUGAR", texto, posY11);
  posY11--;

  if (jugar == true){
    escenario = 3;
  }
}
  
