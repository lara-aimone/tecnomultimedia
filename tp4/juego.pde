class Juego {
  
  Tablero tablero;
  Piezas piezaA, piezaB, piezaC, piezaD;
  PImage p1, p2, p3, p4;

  Juego() {
    
    tablero = new Tablero ();
    piezaA = new Piezas ();
    piezaB = new Piezas ();
    piezaC = new Piezas ();
    piezaD = new Piezas ();

    p1=loadImage("pieza1.jpg");
    p2=loadImage("pieza2.jpg");
    p3=loadImage("pieza3.jpg");
    p4=loadImage("pieza4.jpg");
    
  }

  void dibujar() {
    
    background(255);
    tablero.dibujo();

    piezaA.dibujo(p1);
    piezaA.update();
    piezaA.eventosMouse();
    piezaB.dibujo(p2);
    piezaB.update();
    piezaB.eventosMouse();
    piezaC.dibujo(p3);
    piezaC.update();
    piezaC.eventosMouse();
    piezaD.dibujo(p4);
    piezaD.update();
    piezaD.eventosMouse();
    
  }
}
