PImage img;
int numFrames = 8;
int frame = 0;
PImage[] images = new PImage[numFrames];


void setup(){
  size(1080,1080);
  background(255);
  img=loadImage("tupian.png");
  image(img,0,0);
  //image(images[],0,0);
  images[0] = loadImage("Pageplus_01.png");
  images[1] = loadImage("Pageplus_02.png");
  images[2] = loadImage("Pageplus_03.png");
  images[3] = loadImage("Pageplus_04.png");
  images[4] = loadImage("Pageplus_05.png");
  images[5] = loadImage("Pageplus_06.png");
  images[6] = loadImage("Pageplu _07.png");
  images[7] = loadImage("Pageplus_09.png");
   //image(images,0,0);
}

void draw() {
  background(255);
  img=loadImage("tupian.png");
  frame++;
  if (frame == numFrames) {
    frame = 0;
  }
  image(images[frame],0, 0);
}
