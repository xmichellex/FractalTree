private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .3;  
public void setup() 
{   
	size(640,600);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,600,320,500);   
	drawBranches(320,500,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
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
		drawBranches(endX1, endY1, branchLength, angle1); 
		drawBranches(endX2, endY2, branchLength, angle2); 
	}
} 
