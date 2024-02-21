private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
    stroke(221, 212, 232);
  line(320,480,320,380);   
  drawBranches(320, 380, 100, 3*Math.PI/2);
  drawBranches(320, 380, 70, 3*Math.PI/5);
  drawBranches(320, 380, 70, 3*Math.PI/10);
  drawBranches(320, 380, 70, 3*Math.PI*2);
  drawBranches(320, 380, 70, 3*Math.PI*3);
  
    stroke(204, 236, 239);
  drawBranches(320, 380, 70, 3*Math.PI/2);
  drawBranches(320, 380, 70, 3*Math.PI/5);
  drawBranches(320, 380, 70, 3*Math.PI/10);
  drawBranches(320, 380, 70, 3*Math.PI*2);
  drawBranches(320, 380, 70, 3*Math.PI*3);
  stroke(253, 222, 238);
    drawBranches(320, 380, 40, 3*Math.PI/2);
    drawBranches(320, 380, 40, 3*Math.PI/5);
    drawBranches(320, 380, 40, 3*Math.PI/10);
    drawBranches(320, 380, 40, 3*Math.PI*2);
        drawBranches(320, 380, 40, 3*Math.PI*3);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1, angle2;
  int endX1, endY1, endX2, endY2;
  angle1 = angle+branchAngle;
  angle2 = angle - branchAngle;
  branchLength *= fractionLength;
  endX1 = (int)(branchLength*Math.cos(angle1)+x);
   endX2 = (int)(branchLength*Math.cos(angle1)+x);
  endY1 = (int)(branchLength*Math.sin(angle1)+y);
    endY2 = (int)(branchLength*Math.sin(angle1)+y);
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  if(branchLength > smallestBranch){
    drawBranches(endX1, endY1, branchLength, angle1);
    drawBranches(endX2, endY2, branchLength, angle2);
  }
} 
