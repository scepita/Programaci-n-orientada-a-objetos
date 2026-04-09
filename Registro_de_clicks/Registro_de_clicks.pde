int max = 10;

float[] x = new float[max];
float[] y = new float[max];

int index = 0;
int total = 0;

void setup() {
  size(800, 600);
}

void draw() {
  background(123, 80, 60);

  for (int i = 0; i < total; i++) {
    circle(x[i], y[i], 40);
  }
}

void mousePressed() {
  x[index] = mouseX;
  y[index] = mouseY;

  index++;

  if (index == max) {
    index = 0;
  }

  if (total < max) {
    total++;
  }
}
