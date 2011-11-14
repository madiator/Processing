int numRows = 15;
int numCols = 15;
int cellSize = 50;
int maxSquares = 5;
int centerSqX = numRows/2;
int centerSqY = numRows/2;

void setup() {
  size(800,800);
  background(255);  
  smooth();
  stroke(0);
}

void drawCell() {
  int k;
  int numSquares = maxSquares - (int)random(4);
  for(int i=0;i<numSquares;i++) {  
	rect(2*i,2*i, 40-4*i,40-4*i);
    
  }
}

void draw() {
  centerSqX = mouseX/(cellSize);
  centerSqY = mouseY/cellSize;
  for(int i=0;i<numRows;i++) {
	for(int j=0;j<numCols;j++) {
  	pushMatrix();
  	translate(i*cellSize+10,j*cellSize+10);
  	int k = 8*(16-(abs(i-centerSqX) + abs(j-centerSqY)));
  	fill(228-k,128-k,128-k);
  	drawCell();
  	popMatrix();
 	 
	}
  }
}
