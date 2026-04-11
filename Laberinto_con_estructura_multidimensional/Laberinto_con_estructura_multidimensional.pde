int filas = 10;
int columnas = 10;
int tamaño = 50;

boolean[][][] laberinto = new boolean[10][10][6];

void setup() {
size(501, 501);

for (int i = 0; i < filas; i++) {
for (int j = 0; j < columnas; j++) {
for (int k = 0; k < 6; k++) {
if (random(1) > 0.5) {
laberinto[i][j][k] = true;
} else {
laberinto[i][j][k] = false;
}
}
}
}
}

void draw() {
background(255);
stroke(0);
strokeWeight(2);

for (int i = 0; i < filas; i++) {
for (int j = 0; j < columnas; j++) {
int x = j * tamaño;
int y = i * tamaño;

  if (laberinto[i][j][0]) line(x, y, x + tamaño, y);
  if (laberinto[i][j][1]) line(x + tamaño, y, x + tamaño, y + tamaño);
  if (laberinto[i][j][2]) line(x + tamaño, y + tamaño, x, y + tamaño);
  if (laberinto[i][j][3]) line(x, y + tamaño, x, y);
  
  if (laberinto[i][j][4]) line(x, y, x + tamaño, y + tamaño);
  if (laberinto[i][j][5]) line(x + tamaño, y, x, y + tamaño);
}
}
noLoop();
}
