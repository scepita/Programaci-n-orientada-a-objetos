void setup() {
  size(800, 600);
}

void draw() {

  if (mousePressed) {
    drawScene(mouseX, mouseY, width*0.2, height*0.2);
  }
}

void drawScene(float x, float y, float w, float h) {


  fill(135, 206, 235);
  rect(x, y, w, h);


  fill(255, 204, 0);
  rect(x + w*0.7, y + h*0.1, w*0.2, h*0.2);

  
  fill(200, 100, 50);
  rect(x + w*0.3, y + h*0.4, w*0.4, h*0.4);

  
  fill(150, 50, 50);
  triangle(
    x + w*0.3, y + h*0.4,
    x + w*0.7, y + h*0.4,
    x + w*0.5, y + h*0.2
  );


  fill(100, 50, 0);
  rect(x + w*0.45, y + h*0.6, w*0.1, h*0.2);


  fill(173, 216, 230);
  rect(x + w*0.35, y + h*0.5, w*0.1, h*0.1);


  fill(80, 200, 90);
  rect(x, y + h*0.8, w, h*0.2);


}
