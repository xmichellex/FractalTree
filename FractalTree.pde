private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .3;  
public void setup() 
{   
	size(640,640);    
	noLoop(); 
} 
public void draw() 
{   
	background(102, 255, 255);  
	stroke(102,51,0); 
	strokeWeight(30); 
	line(320,640,320,520);   
	drawBranches(320,520,100,3*Math.PI/2, 30);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle, double width)
{    
	strokeWeight((int)(width)); 
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;  
	int endX1 = (int)(branchLength*Math.cos(angle1) + x); 
	int endY1 = (int)(branchLength*Math.sin(angle1) + y); 
	int endX2 = (int)(branchLength*Math.cos(angle2) + x); 
	int endY2 = (int)(branchLength*Math.sin(angle2) + y); 
	branchLength = branchLength*fractionLength; 
	line(x, y, endX1, endY1); 
	line(x, y, endX2, endY2); 


	//your code here
	if(branchLength > smallestBranch) { 
		drawBranches(endX1, endY1, branchLength, angle1, 3*(width)/4); 
		drawBranches(endX2, endY2, branchLength, angle2, 3*(width)/4); 
	}
	if(branchLength < smallestBranch+30)  { 
		stroke(0, 51, 0); 
	}    
	else { 
		stroke(102, 51, 0); 
	}
} 
