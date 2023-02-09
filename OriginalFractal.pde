public void setup() {
  size(500, 500);
}
float x =250.0;
float y = 250.0;
float l = 250;



public void draw() {
  background(0);
  hello(x,y,l);
 
}


void keyPressed() {
  if(key == 'w')
    l+=25;
     if(key == 's')
    l-=25;
  

}

void mouseDragged() {
 x=mouseX;
  y=mouseY;
}

public void hello(float x, float y, float len) {
    ellipse(x, y, len, len);
  if(len>15){
    hello(x-len/2, y, len/2);
    noFill();
    stroke(50, 250, 50);
    hello(x+len/2, y, len/2);    
    hello(x, y-len/2, len/2); 
    hello(x, y+len/2, len/2);
     
  }
}
