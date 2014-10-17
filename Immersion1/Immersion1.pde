int blocksize=3;
float t=0;
float hspeed=3;
float vspeed=1;

void setup(){
  size(800,600);
  noStroke();
  frameRate(20);
  if (frame != null) {
    frame.setResizable(true);
  }
}

void draw(){
  for (int i=0; i<(width/blocksize); i++){
    for (int j=0; j<(height/blocksize); j++){
      fill((sin((i+t)/40.0))*256, cos((j+2*t)%400)*256,cos((i+j+3*t)/20)*256,50);
      rect(i*blocksize, j*blocksize, blocksize, blocksize);
    }
  }
  t=t+random(width/100)-width/200;
  //if ((t>255)||(t<0)) speed=-speed;
}
