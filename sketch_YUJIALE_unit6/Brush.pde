class Brush {
  float angle;
  int components[];
  float x, y;
  color clr;

  Brush() {
    angle = random(TWO_PI);
    x = random(width);
    y = random(height);
    R=random(100)+155;
    G=random(200)+55;
    B=random(200)+55;
    clr = color(R, G, B, 5);

    components = new int[2];
    for (int i = 0; i < 2; i++) {
      components[i] = int(random(1, 5));
    }
  }

  void paint() {
    float a = 0;
    float r = 0;
    float x1 = x;
    float y1 = y;
    float u = random(0.5, 1);
    fill(clr);
    noStroke();
    //stroke(0);

    beginShape();
    while (a < TWO_PI) {
      if (x1>=0 && x1<width && y1>=0 && y1<height && brightness(img2.pixels[img2.width*floor(y1)+floor(x1)])>200) {
        vertex(x1, y1);
      }
      float v = random(0.25, 0.5);//(0.85, 1);
      x1 = x + r * cos(angle + a) * u * v;
      y1 = y + r * sin(angle + a) * u * v;
      a += PI / 180;
      for (int i = 0; i < 2; i++) {
        r += sin(a * components[i]);
      }
    }
    endShape(CLOSE);

    if (x < 0 || x > width ||y < 0 || y > height) {
      angle += HALF_PI;
    }
    x += 2 * cos(angle);
    y += 2 * sin(angle);
    angle += random(-0.15, 0.15);
  }
}
