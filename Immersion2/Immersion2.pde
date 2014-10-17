float r;
float g;
float b;

float rChange=1.0;
float gChange=1.0;
float bChange=1.0;

float velh;
float velv;


void setup(){
  size(800,600);
  r=255;
  g=255;
  b=0;
  
  frameRate(20);
  
  if (frame != null) {
    frame.setResizable(true);
  }
  
}

void draw(){
  fill(0,0,0,10);
  rect(0,0,width, height);
  fill(r,g,b);
  rect(0,0, width, height);


  r=r+rChange*(mouseX/20);
  if (r>255){
    r=255;
    rChange=-rChange;
  }
  if (r<0){
    r=0;
    rChange=-rChange;
  }
  
  g=g+gChange*(mouseY/30);
  if (g>255){
    g=255;
    gChange=-gChange;
  }
  if (g<0){
    g=0;
    gChange=-gChange;
  }
  
  b=b+bChange*((mouseX+mouseY)/50);
  if (b>255){
    b=255;
    bChange=-bChange;
  }
  if (b<0){
    b=0;
    bChange=-bChange;
  }
}
