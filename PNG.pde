PImage img;
PGraphics piece[] = new PGraphics[2];
void setup() {
  img = loadImage("image02.png");
  img.resize(400, 300);
  size(800, 600, P2D);

  piece[0] = createGraphics(300, 300, P2D);
  piece[0].beginDraw();
  piece[0].beginShape();
  piece[0].texture(img);
  piece[0].vertex(100, 100, 100, 100);
  piece[0].vertex(200, 100, 200, 100);
  for (float i = -3; i <= 2; i = i + .2) {
    piece[0].vertex( (10*i)+230, (50/15)*-(-pow(i, 3) -pow(i, 2) +(3*i))+130, (10*i)+230, (50/15)*-(-pow(i, 3) -pow(i, 2) +(3*i))+130);
  }
  for (float i = 2; i >= -3; i = i - .2) {
    piece[0].vertex( (10*i)+230, (50/15)*(-pow(i, 3) -pow(i, 2) +(3*i))+170, (10*i)+230, (50/15)*(-pow(i, 3) -pow(i, 2) +(3*i))+170);
  }
  piece[0].vertex(200, 200, 200, 200);
  piece[0].vertex(100, 200, 100, 200);
  piece[0].endShape(CLOSE);
  piece[0].endDraw();
  piece[0].save("graphic.png");

  piece[1] = createGraphics(300, 300, P2D);
  piece[1].beginDraw();
  piece[1].beginShape();
  piece[1].texture(img);
  piece[1].vertex(300, 100, 300, 100);
  piece[1].vertex(200, 100, 200, 100);
  for (float i = -3; i <= 2; i = i + .2) {
    piece[1].vertex( (10*i)+230, (50/15)*-(-pow(i, 3) -pow(i, 2) +(3*i))+130, (10*i)+230, (50/15)*-(-pow(i, 3) -pow(i, 2) +(3*i))+130);
  }
  for (float i = 2; i >= -3; i = i - .2) {
    piece[1].vertex( (10*i)+230, (50/15)*(-pow(i, 3) -pow(i, 2) +(3*i))+170, (10*i)+230, (50/15)*(-pow(i, 3) -pow(i, 2) +(3*i))+170);
  }
  piece[1].vertex(200, 200, 200, 200);
  piece[1].vertex(300, 200, 300, 200);
  piece[1].endShape(CLOSE);
  piece[1].endDraw();
  piece[1].save("graphic1.png");
}

void draw() {
  image(img, 0, 0);
  image(piece[0], 200, 0);
  image(piece[1], 300, 0);
}