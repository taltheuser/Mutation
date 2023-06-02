class Bubble {
  float phase;
  float maxRadius;
  float locx, locy;
  Bubble(float maxRadius, float locx, float locy, float phase) {
    this.maxRadius = maxRadius;
    this.locx = locx;
    this.locy = locy;
    this.phase = phase;
  }

  void show() {
    push();
    translate(-width/2+locx*2+maxRadius, -height/2+locy*2+maxRadius);
    float noiseMax = map(sin(radians(frameCount*0.1)), 1, -1, 0.01, 5);
    noFill();
    stroke(255);
    beginShape();
    for (float a = 0; a < TWO_PI; a+=0.001) {
      float xoff = map(cos(a+phase), 1, -1, 0, noiseMax);
      float yoff = map(sin(a-phase), 1, -1, 0, noiseMax);
      float r = map(noise(xoff, yoff), 0, 1, 1, maxRadius);
      float x = r*cos(a);
      float y = r*sin(a);
      vertex(x, y);
      xoff+=0.01;
      yoff+=0.01;
      phase+=0.000004;
    }
    endShape();
    pop();
  }
  }
