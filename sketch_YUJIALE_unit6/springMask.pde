import processing.pdf.*;

ArrayList<Brush> brushes;
float R;
float G;
float B;
PImage img1, img2, img3;


void setup() {
  size(800, 800);
  background(255);
  //img1=loadImage("spring.pdf");
  img2=loadImage("mask.png");
  
  beginRecord(PDF, "spring.pdf");

  brushes = new ArrayList<Brush>();
  
  for (int i = 0; i < 50; i++) {
    brushes.add(new Brush());
  }
}

void draw() {
  //background(255);
  //beginRecord(PDF, "spring.pdf");
  for (Brush brush : brushes) {
    brush.paint();
  }
}

void keyPressed() {
  if (key =='q') {
    endRecord();
    exit();
  }
}
