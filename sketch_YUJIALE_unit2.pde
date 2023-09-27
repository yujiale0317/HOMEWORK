void setup(){
  size(190,130);
  background(225);
}
void draw(){
  noStroke();
  fill(#FF0D00);
  quad(122,0,122,130,190,130,190,0);
 
 fill(#FF950A);
 quad(72,11,72,73,122,73,122,11);
 fill(#FF950A);
 triangle(72,11,72,51,22,11);
 fill(#F7EE39);
  quad(0,130,172,130,172,116,0,116);
  fill(#F7EE39);
  quad(0,116,72,116,72,51,0,51);
  //fill(#FF950A);
  //quad(22,11,22,73,122,73,122,11);
  fill(#8B656F);
  quad(72,73,72,116,122,116,122,73);
  fill(#8B656F);
  triangle(122,116,172,116,122,73);
  fill(#FF0D00);
  triangle(102,0,122,0,122,11);

}
