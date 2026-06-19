Movil m;

void setup() {
  size(800, 600);
  m = new Movil(width/2, height/2);
}

void draw() {
  background(220);

  PVector fuerza = new PVector(0.1, 0);

  if (mousePressed) {
    m.aplicarFuerza(fuerza);
  }

  m.actualizar();
  m.mostrar();
}

class Movil {
  PVector pos, vel, ace;
  float angulo = 0;
  float velAngular = 0;

  Movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector();
    ace = new PVector();
  }

  void aplicarFuerza(PVector f) {
    ace.add(f);
    velAngular += 0.05;
  }

  void actualizar() {
    vel.add(ace);
    pos.add(vel);

    angulo += velAngular;

    ace.mult(0);
    velAngular *= 0.98;
  }

  void mostrar() {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(angulo);

    rectMode(CENTER);
    fill(100, 150, 255);
    rect(0, 0, 60, 30);

    popMatrix();
  }
}
