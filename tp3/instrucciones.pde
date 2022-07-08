//ESCENARIO 2
void instrucciones(){
  escenario = 2;
  image(Fon[0], 0, 0, 400, 400);
  textFont(gamefont, 25);
  text("Atrapa 5 manzanas antes \n de que se acabe el tiempo \n hace click sobre ellas para \n obtener el punto \n SUERTE!", 200, 150);
  textFont(gamefont2, 20);
  fill(colorIns);
  text("Presioná P para jugar", 200, 300);
  
  if (jugar == true){
    escenario = 3;
  }
}
