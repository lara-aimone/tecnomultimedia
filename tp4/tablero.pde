class Tablero{
  int posX, posY, ancho, alto;
  PImage esteTablero;
  Tablero (int _posX, int _posY, int _ancho, int _alto){
  posX= _posX;
  posY= _posY;
  ancho= _ancho;
  alto= _alto;
  esteTablero = loadImage("tablero.jpg");
}

void dibujar(){
 image(esteTablero, 50, 30, ancho, alto);
}

}
