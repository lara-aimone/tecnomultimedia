//VIDEO EXPLICATIVO; youtu.be/zpBJOXs97t0

void setup(){
  size (400, 400);
  background (255);
  strokeWeight (4);
}

void draw(){
  for (int i=0; i<width*2; i=i+10){
    line (i, 0, 0, i);
  }
  
  fill (255);
  for (int i=0; i<90; i+=10){
    float colores = map(mouseX, 0, 400, 0, 255);
    float distanciaMouse= dist(height/2, width/2, mouseX, mouseY);
    
    if (i%2==0){
    stroke (colores, distanciaMouse, colores);
  } else {
    stroke (colores, colores, distanciaMouse);
  }
    fill(random (255), random(255), random (255));
    ellipse (mouseX, mouseY, i, i);
  }
  if (keyPressed==true) {
    background(255);
    reiniciar();
  }
}
