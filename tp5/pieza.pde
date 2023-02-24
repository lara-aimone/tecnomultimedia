class Pieza {

  int posX;
  int posY;
  PImage piezauno;
  float tam;

  boolean piezaMoviendose;
  boolean piezaLista;

  Pieza(int _posX, int _posY, PImage lapieza) {
    imageMode(CENTER);
    tam=133;

    piezauno=lapieza;

    posX = _posX;
    posY = _posY;
  }

  void dibujo() { 
    image(piezauno, posX, posY, tam, tam);
  }
}
