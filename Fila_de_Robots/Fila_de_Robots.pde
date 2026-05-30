Movil[] robots;
int n = 10;

void setup() {
  size(1200, 900);

  robots = new Movil[n];

  float separacion = width / (n + 1);

  for (int i = 0; i < n; i++) {
    robots[i] = new Movil((i + 1) * separacion, height / 2);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < n; i++) {
    robots[i].mostrar();
  }
}

class Movil {

  PVector pos;
  int r = 30;

  Movil(float x, float y) {
    pos = new PVector(x, y);
  }

  void mostrar() {
    ellipse(pos.x, pos.y, r, r);
  }
}
