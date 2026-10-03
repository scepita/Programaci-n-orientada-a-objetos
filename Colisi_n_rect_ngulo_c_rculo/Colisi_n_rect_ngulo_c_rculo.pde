float circuloX;
float circuloY;

float rectanguloX;
float rectanguloY;
float anchoRectangulo;
float altoRectangulo;

boolean colision;

void setup() {
  size(800, 600);

  circuloX = 100;
  circuloY = 300;

  rectanguloX = 350;
  rectanguloY = 250;
  anchoRectangulo = 100;
  altoRectangulo = 100;

  colision = false;
}

void draw() {
  background(220);

  if (keyPressed) {
    if (keyCode == RIGHT) {
      circuloX = circuloX + 4;
    }

    if (keyCode == LEFT) {
      circuloX = circuloX - 4;
    }

    if (keyCode == UP) {
      circuloY = circuloY - 4;
    }

    if (keyCode == DOWN) {
      circuloY = circuloY + 4;
    }
  }

  if (circuloX + 20 > rectanguloX &&
      circuloX - 20 < rectanguloX + anchoRectangulo &&
      circuloY + 20 > rectanguloY &&
      circuloY - 20 < rectanguloY + altoRectangulo) {
    colision = true;
  } else {
    colision = false;
  }

  if (colision) {
    fill(255, 0, 0);
  } else {
    fill(100);
  }

  rect(rectanguloX, rectanguloY, anchoRectangulo, altoRectangulo);

  fill(0, 100, 255);
  ellipse(circuloX, circuloY, 40, 40);
}
