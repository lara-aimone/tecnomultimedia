//VARIABLES
PImage fondo;
PImage disney;
PImage logo;
PImage mouse;
PFont fuente;
int posY = 10;
int posY2 = -280;
int posY3 = -260;
int posY4 = -550;
int posY5 = -530;
int posY6 = -820;
int posY7 = -800;
int posY8 = -1090;
int posY9 = -1070;
int posY10 = -1360;
int posY11 = -1340;
int texto = 321;
float posX;
color rojo;
  

void setup (){
  size (640, 370);
  //FONDO
  fondo = loadImage ("fondo.jpg");
  //LOGOS
  disney = loadImage ("disney.png"); 
  logo = loadImage ("logo.png");
  //MOUSE
  mouse = loadImage("mouse.png");
  //FUENTE
  fuente = createFont ("fuente.ttf", 30);
  textFont (fuente);
  cursor(mouse, mouseX, mouseY);
  
  posX = random(300, 330);
  rojo = color(280, 0, 0);
  
}

void draw (){
  //IMAGENES
  image(fondo, 0, 0, width, height);
  image(disney, 18, 10, 90, 60);
  image(logo, 500, 270, 170, 95);
  
  println (mouseX, mouseY);
  textAlign(CENTER);
  
 //BOTON REINICIAR   
 fill(280, 0, 0);
 ellipse(40, 330, 60, 60);
 fill(0);
 textSize(15);
 fill(random(255));
 text ("REINICIAR", 42, 335);
  
  //CRÉDITOS
  fill(rojo);
  textSize(50);
  text ("RALPH \n EL DEMOLEDOR", posX, posY);
  posY++;
  
  fill (280, 0, 0);
  textSize(25);
  text ("CHARACTERS", texto, posY2); 
  posY2++;
  fill (255);
  textSize (30);
  text ("John C. Reilly as RALPH\n Sarah Silverman as VANELLOPE\n Jack McBrayer as FELIX\n Jane Lynch as SERGEANT CALHOUN", texto, posY3);
  posY3++;
  
  fill (280, 0, 0);
  textSize (25);
  text ("DIRECTED BY", texto, posY4);
  posY4++;
  fill (255);
  textSize (30);
  text ("Rich Moore", texto, posY5);
  posY5++;
  
  fill (280, 0, 0);
  textSize (25);
  text ("PRODUCED BY", texto, posY6);
  posY6++;
  fill (255);
  textSize (30);
  text ("Clark Spencer", texto, posY7);
  posY7++;
  
  fill (280, 0, 0);
  textSize (25);
  text ("STORY BY", texto, posY8);
  posY8++;
  fill (255);
  textSize (30);
  text ("Rich Moore\n Phil Johnston\n Jim Reardon", texto, posY9);
  posY9++;
  
  fill (280, 0, 0);
  textSize (25);
  text ("MUSIC BY", texto, posY10);
  posY10++;
  fill (255);
  textSize (30);
  text ("Henry Jackman", texto, posY11);
  posY11++;
  
  if (posX==310 || posX==320){
    rojo = color(200, 0, 0);
  }
}

void mousePressed(){

  if(mouseX>0 && mouseX<90 && mouseY>310 && mouseY<369){
     texto = 321;
     posY = 10;
     posY2 = -280;
     posY3 = -260;
     posY4 = -550;
     posY5 = -530;
     posY6 = -820;
     posY7 = -800;
     posY8 = -1090;
     posY9 = -1060;
     posY10 = -1360;
     posY11 = -1340;
     
  }


}
