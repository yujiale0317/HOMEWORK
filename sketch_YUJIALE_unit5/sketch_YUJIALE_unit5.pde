float s;
PImage img;
int numFrames = 8;
//int frame = 0;
PImage[] images = new PImage[numFrames];
float bt;
int loc;
int i;

void setup() {
  size(600, 600);
  background(255);
  //noStroke();
  img = loadImage("woman.jpg");
  images[0] = loadImage("huidu_01.png");
  images[1] = loadImage("huidu_02.png");
  images[2] = loadImage("huidu_03.png");
  images[3] = loadImage("huidu_04.png");
  images[4] = loadImage("huidu_05.png");
  i=0;
  
}




void draw() {
  background(255);
  s = map(mouseX, 0, width, 1, 100);
  for (int y = 0; y < img.height; y+=s ) {
    for (int x = 0; x < img.width; x+=s) {
      int loc = x + (y * img.width);
      //fill(img.pixels[loc]);
      //strokeWeight(5);
      //rect(x, y, s, s);
     
      float bt=brightness(img.pixels[loc]);
      int m=int(map(bt,0,255,0,5));
     for (int i=0;i<=5;i++){
       if(i<=m){
         image(images[i],x,y,s,s);
       }
       i+=1;
       
     }
      
      
      
    }
  }
}
