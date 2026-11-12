Start start = new Start();
PFont big;

void setup() {
  size(1100, 600);
  big = createFont("Mistral", 96);
  frameRate(60);
}

void draw() {
  start.render();
}
