import ddf.minim.*;

Minim minim;
AudioPlayer player;
Juego juego;

void setup() {
  size(675, 675);
  minim = new Minim(this);
  player = minim.loadFile("musica.mp3");
  juego = new Juego();
}

void draw() {
  juego.dibujar();
  juego.mouseChequeado();
}

void keyPressed() {
  juego.keyPressed();
}

void mouseDragged() {
  juego.mousePresionado();
}

void mouseMoved() {
}

void mouseReleased() {
  juego.mouseReleased();
}
