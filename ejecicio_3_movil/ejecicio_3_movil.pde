Movil m1;
Movil m2;

void setup() {
  size(800, 600);

  m1 = new Movil(300, 100);
  m2 = new Movil(500, 50);
}

void draw() {
  background(220);

  PVector gravedad = new PVector(0, 0.2);

  m1.aplicarFuerza(gravedad);
  m2.aplicarFuerza(gravedad);

  m1.actualizar();
  m2.actualizar();

  float distancia = dist(m1.pos.x, m1.pos.y,
                         m2.pos.x, m2.pos.y);

  if (distancia < m1.tam/2 + m2.tam/2) {

    m1.vel.mult(-1);
    m2.vel.mult(-1);

    m1.tam -= 5;
    m2.tam -= 5;
  }

  m1.mostrar();
  m2.mostrar();
}

class Movil {
  PVector pos, vel, ace;
  float tam = 50;

  Movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-2, 2), 0);
    ace = new PVector();
  }

  void aplicarFuerza(PVector f) {
    ace.add(f);
  }

  void actualizar() {
    vel.add(ace);
    pos.add(vel);
    ace.mult(0);

    if (pos.y > height - tam/2) {
      pos.y = height - tam/2;
      vel.y *= -0.8;
    }
  }

  void mostrar() {
    fill(100, 200, 255);
    circle(pos.x, pos.y, tam);
  }
}
