class Movil {

  float x;
  float y;
  float velocidad;

  Movil(float x, float y) {
    this.x = x;
    this.y = y;
    velocidad = 3;
  }

  void seguir(Movil otro) {

    if (x < otro.x) {
      x = x + velocidad;
    }

    if (x > otro.x) {
      x = x - velocidad;
    }

    if (y < otro.y) {
      y = y + velocidad;
    }

    if (y > otro.y) {
      y = y - velocidad;
    }
  }

  void seguir(float objetivoX, float objetivoY) {

    if (x < objetivoX) {
      x = x + velocidad;
    }

    if (x > objetivoX) {
      x = x - velocidad;
    }

    if (y < objetivoY) {
      y = y + velocidad;
    }

    if (y > objetivoY) {
      y = y - velocidad;
    }
  }

  void mostrar() {
    fill(0);
    ellipse(x, y, 30, 30);
  }
}
