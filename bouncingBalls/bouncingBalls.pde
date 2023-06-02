int count = 0;
int numBubbles = 10;
Bubble[] b;
void setup() {
  size(600, 600);
  background(0);
  b = new Bubble[numBubbles];
  for (int i = 0; i < b.length; i++) {
    b[i] = new Bubble();
  }
}

void draw() {
fill(0,40);
rect(0,0,width,height);
  for (int i = 0; i < b.length; i++) {
    b[i].show();
    b[i].update();
    b[i].bounce();
    for (int j = 0; j<i; j++) {
      Bubble other = b[j];
      float distance = dist(b[i].loc.x, b[i].loc.y, other.loc.x, other.loc.y);
      if (distance < b[i].radius + other.radius) {
   println("overlap!");
      }else{
      println("notoverlap");
      }
    }
}
}
