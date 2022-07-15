//ESCENARIO 4
void ganar() {
  if (contador >= 5) {
    escenario = 4;
  }
}

//ESCENARIO 5
void perder() {
  if (time> 0) {
    time = duracion -(millis()-begin)/1000;
    textFont (gamefont, 20);
    text("TIEMPO: "+ time, 200, 40);
  } else {
    text("TIEMPO: "+ time, 200, 40);
    escenario = 5;
  }
}
