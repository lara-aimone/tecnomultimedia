//ESCENARIO 3
void juego() {
  escenario = 3;
  image(fondo, 0, 0, 400, 400);
  //CANASTA
  image(canasta, mouseX, mouseY, 100, 80);
  //MANZANAS ROJAS
  image (mroja, 30, posY, 40, 40);
    posY++;
  image (mroja, 210, posY2, 40, 40);
  posY2++;
  image (mroja, 330, posY3, 40, 40);
  posY3++;
  image (mroja, 360, posY3, 40, 40);
  posY4++;
  //MANZANAS VERDES
  image (mverde, 100, posY, 40, 40);
  posY2++;
  image (mverde, 200, posY2, 40, 40);
  posY4++;
}
