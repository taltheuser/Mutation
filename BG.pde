class BG {
  float alpha;
  float targetAlpha;
  BG() {
    alpha = 255;
    targetAlpha = 30;
  }

  void show() {
    fill(0, alpha);
    stroke(0);
    rect(0, 0, width, height);
    if (keyPressed) {
      if (key == 'a') {
        alpha = lerp(alpha, targetAlpha, 0.1);
      }
      if (key == 'd') {
        alpha = lerp(alpha, 255, 0.1);
      }
    }
  }
}
