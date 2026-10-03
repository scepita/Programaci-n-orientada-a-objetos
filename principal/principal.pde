Movil[] moviles;

void setup() {
  size(800, 600);

  moviles = new Movil[10];

  for (int i = 0; i < moviles.length; i++) {
    moviles[i] = new Movil(100 + i * 50, 300);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < moviles.length - 1; i++) {
    moviles[i].seguir(moviles[i + 1]);
  }

  moviles[moviles.length - 1].seguir(mouseX, mouseY);

  for (int i = 0; i < moviles.length; i++) {
    moviles[i].mostrar();
  }
}
