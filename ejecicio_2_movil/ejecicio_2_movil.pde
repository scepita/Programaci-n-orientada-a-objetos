Movil A;
Movil B;

void setup() {
  size(800, 600);

  A = new Movil(100, 300);
  B = new Movil(700, 300);

  A.vel = new PVector(2, 0);
}

void draw() {
  background(220);

  A.actualizar();

  PVector direccion = PVector.sub(A.pos, B.pos);
  direccion.normalize();
  direccion.mult(0.1);

  B.aplicarFuerza(direccion);
  B.actualizar();

  fill(255, 0, 0);
  A.mostrar();

  fill(0, 0, 255);
  B.mostrar();
}

class Movil {
  PVector pos, vel, ace;

  Movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector();
    ace = new PVector();
  }

  void aplicarFuerza(PVector f) {
    ace.add(f);
  }

  void actualizar() {
    vel.add(ace);
    pos.add(vel);
    ace.mult(0);
  }

  void mostrar() {
    circle(pos.x, pos.y, 30);
  }
}
