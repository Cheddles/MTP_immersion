float r;
float g;
float b;
int t;

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
  
  frameRate(100);
  
  if (frame != null) {
    frame.setResizable(true);
  }
  noStroke();
}

void draw(){
  fill(0,0,0,5);
  rect(0,0,width, height);
  fill(r,g,b);
  ellipse(width-mouseX,height-mouseY, ((sin(t/100.0)+1)*(width/15.0))+10, ((sin(t/100.0)+1)*(width/15.0))+10);


  r=r+rChange*(mouseX/200);
  if (r>255){
    r=255;
    rChange=-rChange;
  }
  if (r<0){
    r=0;
    rChange=-rChange;
  }
  
  g=g+gChange*(mouseY/300);
  if (g>255){
    g=255;
    gChange=-gChange;
  }
  if (g<0){
    g=0;
    gChange=-gChange;
  }
  
  b=b+bChange*((mouseX+mouseY)/500);
  if (b>255){
    b=255;
    bChange=-bChange;
  }
  if (b<0){
    b=0;
    bChange=-bChange;
  }
  t=t+1;
}
