
import processing.svg.*;

PImage img;
int maxAgents;
ArrayList agentList;

boolean saveSVG = false;

float rad;


void setup(){
  size(1080,1620);
  img = loadImage("girl.jpg");
  img.resize(width, height);
  
  maxAgents = 100000;
  agentList = new ArrayList();
  rad = 5;
}


void draw(){
  background(255);
 image(img, 0, 0);
  
  if(agentList.size() < maxAgents){
    
    Agent myAgent = new Agent(new PVector(random(width/2-30, width/2+30), random(height/2-30, height/2+30)), rad);
    agentList.add(myAgent);
  }
  
  if (saveSVG) {
    beginRecord(SVG, "output/circlePark.svg");
  }
  
  for(int i = 0; i < agentList.size(); i ++){
    Agent tempAgent = (Agent)agentList.get(i);
    tempAgent.run();
  }
  
  if (saveSVG) {
    endRecord();
    saveSVG = false;
  }
}

void keyPressed() {
  if (key == 's') {
    save("output/HodginCirclePark.png");
  }
  if(key == 'p'){
    saveSVG = true;
  }
}
