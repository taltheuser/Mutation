class Bubble {
  PVector loc;
  PVector vel;
  float radius;
  Bubble() {
    radius = random(10,80);
    loc = new PVector(random(radius, width-radius), random(radius, height-radius));
    vel = new PVector(random(-2, 2), random(-2, 2));
  }

  void show() {
fill(255);
    ellipse(loc.x, loc.y, radius, radius);
  }

  void update() {
    loc.add(vel);
  }

  void bounce() {
    if (loc.x-radius/2 < 0 || loc.x+radius/2 > width) {
      vel.x*=-1;
    }
    if (loc.y-radius/2 < 0 || loc.y+radius/2 > height) {
      vel.y*=-1;
    }
  }
}
