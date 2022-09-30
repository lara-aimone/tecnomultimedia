//LINK VIDEO
//https://youtu.be/YwUnd42mYTA

Juego juego;

void setup() {
  size(400, 400);
  background(255);
 
  juego = new Juego();
 
}

void draw() {
  println (mouseX, mouseY);
  juego.dibujar();
  
}
