class Tablero {

  PImage tablero; 
  int tam;

  Tablero() {
    imageMode(CENTER);
    rectMode(CENTER);
    tablero=loadImage("tablero.jpg");
    tam=400;
  }

  void dibujo() {
    push();
    image(tablero, 350, 350, tam, tam);
    noFill();
    for (int i = 0; i < 3; i ++) {
      for (int j = 0; j < 3; j ++) {

        rect(350  + (i * 400/3) - 133, 350 + j * (400/3) - 133, 133, 133);
      }
    }
    pop();
  }
}
