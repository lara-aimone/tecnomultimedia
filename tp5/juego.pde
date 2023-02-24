class Juego {
  Tablero tablero;
  Pieza [] pieza = new Pieza[9];
  Fondo fondo = new Fondo();
  PImage [] piezas = new PImage [9];

  int escenario = 0;
  int tiempo = 0;
  int contador = 60;
  int segundos, tiempoComienzo;
  int tam;
  boolean[] bbb = new boolean[9]; 
  PFont fuente;
  boolean piezaTocada, arrastrar;

  Juego() {
    
    for (int i=0; i<9; i++) {
      piezas[i] = loadImage ("pieza"+(i +1)+".jpg");
    }

    textAlign(CENTER, CENTER);
    fuente = createFont("sunday.ttf", 40);
    tablero = new Tablero ();

    for (int i=0; i<pieza.length; i++) {
      pieza[i] = new Pieza (int(random (0, width)), int(random (0, width)), piezas[i]);
    }
  }

  void dibujar() {
    if (escenario == 0) {
      inicio();
    }
    if (escenario == 1) {
      instrucciones();
    }
    if (escenario == 2) {
      creditos();
    }
    if (escenario == 3) {
      juego();
    }
    if (escenario == 4) {
      perdiste();
    }
    if (escenario == 5) {
      ganaste();
    }
  }

  void inicio() {
    player.play();
    escenario = 0;
    textAlign(CENTER);
    fill(0);
    fondo.actualizarFondo();
    textFont(fuente, 45);
    text("ARMA EL ROMPECABEZAS", height/2, width/2);
    textFont(fuente, 30);
    text("Presiona J para jugar \n Presiona I para instrucciones \n Presiona C para creditos", height/2, 400);
  }

  void instrucciones() {
    escenario = 1;
    background(0);
    textAlign(CENTER);
    fondo.actualizarFondo();
    textFont(fuente, 40);
    text("Deberas armar el rompecabezas \n en un minuto", height/2, width/2);
    textFont(fuente, 30);
    text("Presiona J para jugar \n Presiona R para volver al menu", height/2, 500);
  }

  void creditos() {
    escenario = 2;
    background (0);
    textAlign(CENTER);
    fondo.actualizarFondo();
    textFont(fuente, 30);
    text("Creado por", height/2, 300);
    textFont(fuente, 45);
    text("LARA AIMONE", height/2, 350);
    textFont(fuente, 30);
    text("Materia", height/2, 400);
    textFont(fuente, 45);
    text("TECNO 1", height/2, 450);
  }

  void juego() {
    escenario = 3; 
    background(255); 
    tablero.dibujo();
    pieza[0].dibujo();
    pieza[1].dibujo();
    pieza[2].dibujo();
    pieza[3].dibujo();
    pieza[4].dibujo();
    pieza[5].dibujo();
    pieza[6].dibujo();
    pieza[7].dibujo();
    pieza[8].dibujo();


    segundos = tiempoComienzo - millis()/1000;
    if (segundos<0) {
      tiempoComienzo = millis()/1000 + contador;
    } else {
      text (segundos, 337, 50);
    } 
    if (segundos == 0) {
      escenario = 4;
    }
  }


  void perdiste() {
    escenario = 4;
    fondo.actualizarFondo();
    textAlign(CENTER);
    textFont(fuente, 45);
    text("PERDISTE!", height/2, width/2);
    textFont(fuente, 30);
    text("Presiona R para volver al inicio", height/2, 400);
  }

  void ganaste() {
    escenario = 5;
    fondo.actualizarFondo();
    textAlign(CENTER);
    textFont(fuente, 45);
    text("GANASTE!", height/2, width/2);
    textFont(fuente, 30);
    text("Presiona R para volver al inicio", height/2, 400);
  }

  void mouseReleased() {
    int cuentaCuantasPiezasListasHay = 0;
    for (int i=0; i<9; i++) {

      if (bbb[i] == true) {
        for (int y = 0; y < 3; y ++) {
          for (int x = 0; x < 3; x ++) {
            if (i == 0) {
              if (i == 0 && dist(mouseX, mouseY, 220, 220) < 133) {
                pieza[0].piezaLista = true;
                pieza[0].posX = 217;
                pieza[0].posY = 217;
              }
            }

            if (i == 1) {
              if (i == 1 && dist(mouseX, mouseY, 220 + 133, 220) < 133) {
                pieza[1].piezaLista = true;
                pieza[1].posX = 217 + 133;
                pieza[1].posY = 217;
              }
            }

            if (i == 2) {
              if (i == 2 && dist(mouseX, mouseY, 220 + 266, 220) < 133) {
                pieza[2].piezaLista = true;
                pieza[2].posX = 217 + 266;
                pieza[2].posY = 217;
              }
            }

            if (i == 3) {
              if (i == 3 && dist(mouseX, mouseY, 220, 220) < 133) {
                pieza[3].piezaLista = true;
                pieza[3].posX = 217;
                pieza[3].posY = 350;
              }
            }

            if (i == 4) {
              if (i == 4 && dist(mouseX, mouseY, 220 + 133, 220) < 133) {
                pieza[4].piezaLista = true;
                pieza[4].posX = 217 + 133;
                pieza[4].posY = 350;
              }
            }

            if (i == 5) {
              if (i == 5 && dist(mouseX, mouseY, 220 + 266, 220) < 133) {
                pieza[5].piezaLista = true;
                pieza[5].posX = 217 + 266;
                pieza[5].posY = 350;
              }
            }

            if (i == 6) {
              if (i == 6 && dist(mouseX, mouseY, 220, 350) < 133) {
                pieza[6].piezaLista = true;
                pieza[6].posX = 217;
                pieza[6].posY = 482;
              }
            }


            if (i == 7) {
              if (i == 7 && dist(mouseX, mouseY, 220 + 133, 350) < 133) {
                pieza[7].piezaLista = true;
                pieza[7].posX = 217 + 133;
                pieza[7].posY = 482;
              }
            }

            if (i == 8) {
              if (i == 8 && dist(mouseX, mouseY, 220 + 266, 350) < 133) {
                pieza[8].piezaLista = true;
                pieza[8].posX = 217 + 266;
                pieza[8].posY = 482;
              }
            }
          }
        }
      }

      if (pieza[i].piezaLista == true) {
        cuentaCuantasPiezasListasHay++;
      }

      if (cuentaCuantasPiezasListasHay > 8) {
        escenario = 5;
        
        for (int z=0; z<9; z++) {
          pieza[z].piezaLista = false;
          pieza[z] = new Pieza (int(random (0, width)), int(random (0, width)), piezas[z]);
          bbb[z] = false;
        }
      }
    }
  }
  void keyPressed() {
    if (escenario == 0) {
      if (key == 'i' || key == 'I') {
        instrucciones();
      } else if (key == 'j' || key == 'J') {
        juego();
      } else if (key== 'c' || key == 'C') {
        creditos();
      }
    } 
    if (escenario == 1 || escenario == 2) {
      if (key == 'j' || key == 'J') {
        juego();
      }
      if (key == 'r' || key == 'R') {
        inicio();
      }
    }
    if (escenario == 4) {
      if (key == 'r' || key == 'R') {
        inicio();
      }
    }
    if (escenario == 5) {
      if (key == 'r' || key == 'R') {
        inicio();
      }
    }
  }


  void mousePresionado() {
    for (int i=0; i<9; i++) {
      if (mousePressed) {
        if (bbb[i]==true && !pieza[i].piezaLista ) {
          if (mouseX <= (pieza[i].posX+pieza[i].tam/2) && mouseX >= (pieza[i].posX-pieza[i].tam/2) && mouseY <= (pieza[i].posY+pieza[i].tam/2) && mouseY >= (pieza[i].posY-pieza[i].tam/2)) {

            for (int j=0; j<9; j++) {

              bbb[j]=false;
              bbb[i]=true;
              pieza[i].posX=mouseX;
              pieza[i].posY=mouseY;
            }
          }
        }
      }
    }
  }


  void mouseChequeado() {
    for (int i=0; i<9; i++) {

      if (!pieza[i].piezaLista && mouseX <= (pieza[i].posX+pieza[i].tam/2) && mouseX >= (pieza[i].posX-pieza[i].tam/2) && mouseY <= (pieza[i].posY+pieza[i].tam/2) && mouseY >= (pieza[i].posY-pieza[i].tam/2)) {

        for (int j=0; j<9; j++) {

          bbb[j]=false;
          bbb[i]=true;
        }
      }
    }
  }
}

class Fondo {
  PImage fondo; 
  int tam;

  Fondo() {
    imageMode(CENTER);

    fondo=loadImage("fondo.jpg");
    tam=675;
  }

  void actualizarFondo() {
    image(fondo, 338, 338, tam, tam);
  }
}
