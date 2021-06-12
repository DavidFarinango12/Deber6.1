boolean bandera = false;
boolean bandera1 = false;
boolean bandera2 = false;
volatile float d;

void setup() {
  size(400, 400);
  ellipseMode(RADIUS);
}


void draw() {
  if(bandera == false){
    base();
  }
}


void base(){
  bandera = false;
  bandera1 = false;
  bandera2 = false;
  d = dist(mouseX, mouseY, 200,200);
  background(#C6C6C4);
  fill(#FF050E);
  stroke(#FF050E);
  ellipse(200, 200, 100, 100);
  textSize(20);
  fill(#0A0A0A);
  textAlign(CENTER);
  text("Presione el boton para \n encender o apagar el LED", 200, 30);
  fill(#FFFAFA);
  text("¡Apagado!", 200, 200);
}


void mousePressed() {
  if (mouseButton == RIGHT && bandera == false && d < 50) {
    bandera = true;
    background(#C6C6C4);
    fill(#791013);
    stroke(#791013);
    ellipse(200, 200, 75, 75);
    textSize(20);
    fill(#0A0A0A);
    textAlign(CENTER);
    text("Presione el boton para \n encender o apagar el LED", 200, 30);
  }
  if (mouseButton == LEFT && bandera1 == true && d < 50) {
    bandera2 = true;
    background(#C6C6C4);
    fill(#39862A);
    stroke(#39862A);
    ellipse(200, 200, 75, 75);
    textSize(20);
    fill(#0A0A0A);
    textAlign(CENTER);
    text("Presione el boton para \n encender o apagar el LED", 200, 30);
  }
}


void mouseReleased() {
  if (bandera == true) {
    background(#C6C6C4);
    fill(#17F50C);
    stroke(#17F50C);
    ellipse(200, 200, 100, 100);
    textSize(20);
    fill(#0A0A0A);
    textAlign(CENTER);
    text("Presione el boton para \n encender o apagar el LED", 200, 30);
    fill(#FFFAFA);
    text("¡Encendido!", 200, 200);
    bandera1 = true;
  }
  if(bandera2 == true){
    bandera = false;
  }
}
