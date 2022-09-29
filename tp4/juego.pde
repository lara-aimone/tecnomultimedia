class Juego {
  Tablero tablero;
  Piezas piezaA, piezaB, piezaC, piezaD;
  
  Juego() {
    tablero = new Tablero (200, 100, 400, 400);
  }
  
void dibujar(){
  tablero.dibujar();
  piezaA.dibujar();
  piezaB.dibujar();
  piezaC.dibujar();
  piezaD.dibujar();
}

void piezas(){
  int posXPA = 50;
  int posYPA = 450;
  int anchoPA = 100;
  int altoPA = 100;
   
  piezaA = new Piezas(posXPA, posYPA, anchoPA, altoPA, "pieza1");
  piezaB = new Piezas(150, 560, 100, 100, "pieza2");
  piezaC = new Piezas(250, 450, 100, 100, "pieza3");
  piezaD = new Piezas(350, 560, 100, 100, "pieza4");
}

void colocarPieza1(){
  piezaA.colocarPieza1();
  
}
void colocarPieza2(){
  piezaB.colocarPieza2();}

void colocarPieza3(){
  piezaC.colocarPieza3();
}
void colocarPieza4(){
  piezaD.colocarPieza4();}

void colocarPiezas(){
  if(mouseX>= 50 && mouseX<= 150 && mouseY>= 450 && mouseY<= 550){
  juego.colocarPieza1();}
  
  if (mouseX>= 150 && mouseX<= 250 && mouseY>= 560 && mouseY<= 660){
  juego.colocarPieza2();}

  if (mouseX>= 250 && mouseX<= 350 && mouseY>= 450 && mouseY<= 550){
  juego.colocarPieza3();}

  if (mouseX>= 350 && mouseX<= 450 && mouseY>= 560 && mouseY<= 660){
  juego.colocarPieza4();}}
}
