//Carlitooooooo
//tp1 comision 5
PImage imagen1, imagen2, imagen3;
int segundos= 0;
int estado= 0;
boolean arranca;

int px, py, ancho, alto;
int posX = 200;

void setup() {
  size(640, 480);
  imagen1 = loadImage("imagen.jpg");
  imagen2 = loadImage("th.jpg");
  imagen3 = loadImage("ph.jpg");
  px = 220;
  py = 420;
  ancho = 200;
  alto = 50;
}

void draw() {
 text(segundos, width/2, 300);
println( mouseX + ";" + mouseY);
  if (arranca == true) {
    if (frameCount%60==0) {
      segundos ++;
    }
  }
  if (estado==0) {

     image(imagen1, 0, 0, 640, 480);
}
  if (estado==1) {
   
    image(imagen2, 0, 0, 640, 480);
  }
  if (estado==2) {

     image(imagen3, 0, 0, 640, 480 );
}
  if (segundos<=5) {
    estado = 0;
    if (mouseX>220 && mouseX <420 && mouseY>400 && mouseY<470 ) {
    fill(0, 0, 0, 200);
  }
   else {
    fill(0, 0, 0, 100);
  }
  rect(px, py, ancho, alto);
  fill(0, 0, 0, 255);
  } else if (segundos>5 && segundos<= 10) {
    estado = 1;
  } else {
    estado = 2;
}
}
void mousePressed() {
  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    posX += 10;
    arranca = true;
  }
}

void keyPressed() {
  segundos = 0;
  estado =0;
  arranca  = false;
}
