int s = 700;
float t;
float angle;
float x,y;
float r;
int rot = 0;

void setup() {
  size(s,s);
  background(0);
  fill(255,98,98);
  t = 0;
  angle = 0;
  r = 5;
  translate(s/2,s/2);
  smooth();

}

void spiral() {
  angle = 0;
  while(t<1000) {
	x = t*cos(angle);
	y = t*sin(angle);
	//pushMatrix();
	//translate(s/2,s/2);
	ellipse(x,y,r,r);
    
	//popMatrix();
	t = 1.01*t + .25;
	r = r + 0.1;
	angle = (angle + 0.1)%360;
  }
}

void draw()
{
  translate(s/2,s/2);
  background(0);
  //pushMatrix();
   rotate((PI/180)*rot);
   t = 0;
   r = 5;
   spiral();
   rot = rot+1;
 // popMatrix();
}
