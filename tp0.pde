void setup(){
  size(400,400);
  background(137,232,108);
}

void draw(){
  fill(0);
  textSize(25);
  text("HOLA!",160,40);
  text("SOY UNA MARGARITA",70,390);
  println("X;");
  println(mouseX);
  println("Y;");
  println(mouseY);
  noStroke();
  fill(255);
  ellipse(120,120,150,150);
  fill(255);
  ellipse(280,280,150,150);
  fill(255);
  ellipse(285,120,150,150);
  fill(255);
  ellipse(120,280,150,150);
  fill(230,234,28);
  ellipse(200,200,130,130);
}
