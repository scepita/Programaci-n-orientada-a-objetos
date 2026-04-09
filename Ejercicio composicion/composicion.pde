void setup() {
  size(800, 600);
}

void draw() {
  fondo();
  dibujarSol(width*0.8, height*0.2);
  dibujarCasa(width*0.3, height*0.5);
  dibujarPasto();
}


void fondo() {
  background(900, 206, 235);
}
void dibujarSol(float x, float y) {
  fill(255, 204, 0);
  rect(x, y, width*0.1, width*0.1);
}

void dibujarCasa(float x, float y) {
  fill(200, 100, 50);
  rect(x, y, width*0.25, height*0.25);

  fill(150, 50, 50);
  triangle(
    x, y,
    x + width*0.25, y,
    x + width*0.125, y - height*0.15
  );

  fill(100, 50, 0);
  rect(x + width*0.1, y + height*0.1, width*0.05, height*0.15);

  fill(173, 216, 230);
  rect(x + width*0.02, y + height*0.05, width*0.06, height*0.06);
}



void dibujarPasto() {
  fill(80, 800, 90);
  rect(0, height*0.75, width, height*0.25);
}
