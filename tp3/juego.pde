//ESCENARIO 3
void caida() {
  escenario = 3;
  image(fondo, 0, 0, 400, 400);
  
  //CANASTA
  image(canasta, mouseX, mouseY, );
  y = y + 6;
  
  //MANZANAS
  image (mroja, x, y, d, d);
  if (y > height) {
    x = random(400);
    y = random(-100);
  }
  }
    
void colision(){
  float distancia = dist(mouseX, mouseY, x, y);
  if (mousePressed){
    if (distancia < d){
      x = -1000;
      contador++;
    }
  }
}

void puntaje(){
  fill(167, 2, 16);
  text("MANZANAS RECOGIDAS =" + contador, 400, 20);
}
