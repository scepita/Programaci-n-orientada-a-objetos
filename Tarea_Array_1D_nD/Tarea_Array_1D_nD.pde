int[] alturas = new int[20];
int anchoBarra;

void setup() {
size(800, 400);
anchoBarra = width / alturas.length;

for (int i = 0; i < alturas.length; i++) {
alturas[i] = 100;
}
}

void draw() {
background(30);

int indice = mouseX / anchoBarra;

if (indice >= 0 && indice < alturas.length) {
alturas[indice] = height - mouseY;
}

fill(100, 150, 250);
stroke(255);

for (int i = 0; i < alturas.length; i++) {
float x = i * anchoBarra;
float y = height - alturas[i];
rect(x, y, anchoBarra, alturas[i]);
}
}
