// Maheswaran Sathiamoorthy
// http://smahesh.com

int s = 500;
int rot = 0;
void setup() {
  size(s,s);  
  smooth();
  background(255);
  stroke(0);
  fill(255,98,98);
}

void draw() {
  translate(s/2,s/2);
  rotate(rot);
  ellipse(100,100,15,15);
  rot = rot + 1;
}
