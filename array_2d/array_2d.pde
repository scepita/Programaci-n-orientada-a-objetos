int filas = 9;
int columnas = 16;
int tamCelda = 50;

boolean[][] estados;
color[][] colores;

void settings() {
  size(800, 450);
}

void setup() {
  estados = new boolean[filas][columnas];
  colores = new color[filas][columnas];
}

void draw() {
  background(200);

  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {

      int x = j * tamCelda;
      int y = i * tamCelda;

      stroke(100);

      if (estados[i][j] == false) {
        fill(255); // blanco
      } else {
        fill(colores[i][j]); // color random
      }

      rect(x, y, tamCelda, tamCelda);
    }
  }
}

void mousePressed() {
  int col = mouseX / tamCelda;
  int fila = mouseY / tamCelda;

  if (fila >= 0 && fila < filas && col >= 0 && col < columnas) {
    estados[fila][col] = !estados[fila][col];

    if (estados[fila][col]) {
      colores[fila][col] = color(random(255), random(255), random(255));
    }
  }
}
