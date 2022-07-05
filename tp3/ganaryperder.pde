//ESCENARIO 4
void ganar(){
  escenario = 4;
  textFont (gamefont, 20);
  text ("GANASTE! \n presioná P para volver a jugar", 200, 200);
  if (jugar == true){
   escenario = 2;
   }
}

//ESCENARIO 5
void perder(){
  escenario = 5;
  textFont(gamefont, 20);
  text("PERDISTE! \n presioná P para volver a jugar", 200, 200);
  if (jugar == true){
   escenario = 2;
   }
}
