//ESCENARIO 0
void inicio() {
  escenario = 0;
  image(fondo, 0, 0, 400, 400);
  fill(167, 2, 16);
  textFont(gamefont, 45);
  text("COLECTA LAS \n MANZANAS", 200, 150);
  textFont(gamefont2, 30);
  fill(colorJugar);
  text("¡JUGAR!", 200, 250);
  fill(colorIns);
  circle (385, 12, 20);
  textFont(gamefont2, 10);
  fill(0);
  text("?", 385, 7);

  if (mouseX>140 && mouseX<258 && mouseY>246 && mouseY<276) {
    colorJugar = color(230, 255, 0);
  } else {
    colorJugar = color(167, 2, 16);
  }

  if (mouseX>375 && mouseX<395 && mouseY>3 && mouseY<22) {
    colorIns = color(230, 255, 0);
  } else {
    colorIns = color(167, 2, 16);
  }
  if (empezar == true ) {
    escenario = 2;
  }
  if (creditos == true ) {
    escenario = 1;
  }
}
