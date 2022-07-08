//VIDEO EXPLICATIVO

int posY, posY2, posY3, posY4, posY5, posY6, posY7, posY8, posY9, posY10;
int escenario;
int cant = 2;
int texto = 200;
int numeroManzana = 10;
int contador = 0;

int begin;
int duracion;
int time;

float d = 40;
float x = random (400);
float y = random (height);
float posX1;

boolean empezar = false;
boolean creditos = false;
boolean instrucciones = false;
boolean jugar = false;
boolean circulo = false;

PFont gamefont, gamefont2;
PImage mroja, canasta;
PImage [] Fon = new PImage [3];
color colorJugar, colorIns;

void setup() {
  size(400, 400);
  begin = millis();
  time=duracion=10;

  textAlign(CENTER, CENTER);
  gamefont = createFont("gamefont.ttf", 40);
  gamefont2 = createFont("gamefont2.ttf", 40);
  colorJugar = color(167, 2, 16);
  colorIns = color(167, 2, 16);

  posY = -30;
  posY2 = -60;
  posY3 = -90;
  posY4 = -120;
  posY5 = 430;
  posY6 = 460;
  posY7 = 520;
  posY8 = 550;
  posY9 = 600;
  posY10 = 700;
  posX1 = random(0, 400);

  mroja = loadImage("mroja.png");
  canasta = loadImage("canasta.png");
  for (int i=0; i<Fon.length; i++) {
    Fon[i] = loadImage ("fondo_0" + i + ".png");
  }

  noStroke();

  for (int i = 0; i < numeroManzana; i++) {
    caida();
  }
  escenario = 0;
}

void draw () {
  println("x:", mouseX);
  println("y:", mouseY);
  escenario = 0;
  if (escenario == 0) {
    inicio();
  }
  if (escenario == 1) {
    creditos();
  }
  if (escenario == 2) {
    instrucciones();
  }
  if (escenario == 3) {
    for (int i = 0; i < numeroManzana; i++) {
      caida();
      colision();
      puntaje();
      ganar();
      perder();
    }
  }
  if (escenario == 4) {
    //ganar();
    image(Fon[2], 0, 0, 400, 400);
    textFont (gamefont, 25);
    text ("GANASTE! \n presiona R para volver a jugar", 200, 320);
  }
  if (escenario == 5) {
    //perder();
    image(Fon[1], 0, 0, 400, 400);
    textFont(gamefont, 20);
    text("PERDISTE! \n presiona R para volver a jugar", 200, 320);
  }
}

void mouseClicked() {
  if (mouseX>140 && mouseX<258 && mouseY>246 && mouseY<276) {
    empezar = true;
  }
  if (mouseX>375 && mouseX<395 && mouseY>3 && mouseY<22) {
    creditos = true;
  }
  if (mouseX>5 && mouseX<28 && mouseY>3 &&mouseY<19) {
    jugar = true;
  }
}
void keyPressed() {
  println("otra vez");
  if (key == 'r'|| key == 'R') {
    begin = millis();
    time=duracion=10;

    textAlign(CENTER, CENTER);
    gamefont = createFont("gamefont.ttf", 40);
    gamefont2 = createFont("gamefont2.ttf", 40);
    colorJugar = color(167, 2, 16);
    colorIns = color(167, 2, 16);

    posY = -30;
    posY2 = -60;
    posY3 = -90;
    posY4 = -120;
    posY5 = 430;
    posY6 = 460;
    posY7 = 520;
    posY8 = 550;
    posY9 = 600;
    posY10 = 700;
    posX1 = random(0, 400);

    mroja = loadImage("mroja.png");
    canasta = loadImage("canasta.png");
    
    for (int i=0; i<Fon.length; i++) {
      Fon[i] = loadImage ("fondo_0" + i + ".png");
    }

    noStroke();

    for (int i = 0; i < numeroManzana; i++) {
      caida();
    }
    escenario = 0;
  }

  if (escenario == 2 || escenario == 4 || escenario == 5) {
    if (key == 'p' || key == 'P') {
      jugar = true;
    }
  }
}
