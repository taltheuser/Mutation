BG bg;
ArrayList <Bubble> bubbles;

void setup() {
  size(600, 600);
  bg = new BG();

  int numRows = 2;
  int numCols = 2;
  float maxRadius = 100;
  float locx = 108;
  float locy = 108;

  bubbles = new ArrayList <Bubble>();
  for (int i = 0; i < numCols; i++) {
    for (int j = 0; j < numRows; j++) {
      //TODO : understand meaning of phase better
      float phase = random(5);
      bubbles.add(new Bubble(maxRadius, locx*i, locy*j, phase));
    }
  }
}

void draw() {
  bg.show();
  translate(width/2, height/2);
  for (Bubble bubble : bubbles) {
    bubble.show();
  }
}
