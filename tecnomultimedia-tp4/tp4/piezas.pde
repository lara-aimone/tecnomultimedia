class Piezas {
  int posX, posY, ancho, alto;
  PImage puzzlePiezas;
  String numeroDePieza;
  Piezas (int _posX, int _posY, int _ancho, int _alto, String numeroDePieza) {
  posX= _posX;
  posY= _posY;
  ancho= _ancho;
  alto= _alto;
  puzzlePiezas = loadImage(numeroDePieza +".jpg");
 
}

void dibujar() {
  stroke(0);
  strokeWeight(4);
  image(puzzlePiezas, posX, posY, ancho, alto);
}

void colocarPieza1() {
  posX = 50;
  posY = 30;
  ancho = 200;
  alto = 200;
}

void colocarPieza2() {
  posX = 250;
  posY = 30;
  ancho = 200;
  alto = 200;
}

void colocarPieza3() {
  posX = 50;
  posY = 230;
  ancho = 200;
  alto = 200;
}
  
void colocarPieza4() {
  posX = 250;
  posY = 230;
  ancho = 200;
  alto = 200;
}
}
