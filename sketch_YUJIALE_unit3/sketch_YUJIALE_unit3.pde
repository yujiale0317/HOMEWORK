
float[]CHANG,X,Y,Xx,Yy;

void setup(){
  size(900,1200);
  background(#FFFFFF);
  CHANG = new float[100];
  X= new float[100];
  Xx= new float[100];
  Y= new float[100]; 
  Yy= new float[100];
  for(int i=0;i<100;i++){
    CHANG[i]=random(0,90);
    X[i]=random(0,900);
    Y[i]=random(0,1200);
    Xx[i]=X[i]+CHANG[i];
    Yy[i]=Y[i]+CHANG[i];
    }
} 

void draw(){
  noStroke();
 
  for(int i=0;i<=100;i=i+1){
    CHANG[i]=random(0,900-X[i]);
    X[i]=random(0,900);
    Y[i]=random(0,1190);
    Xx[i]=X[i]+CHANG[i];
    Yy[i]=Y[i]+10;
    
  fill(#FFEC58);
  quad(X[i],Y[i], Xx[i],Y[i],Xx[i], Yy[i],X[i], Yy[i]);
}
  }
