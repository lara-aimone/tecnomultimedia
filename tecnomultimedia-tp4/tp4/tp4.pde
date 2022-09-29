Juego juego;

void setup() {
  size(500, 700);
  background(255);
 
  juego = new Juego();
  juego.piezas();
 
}

void draw() {
  println (mouseX, mouseY);
  juego.dibujar();
}

void mousePressed() {
  juego.colocarPiezas();
}
