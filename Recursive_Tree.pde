//TUTORIAL

//The Coding Train Tutorial
//https://www.youtube.com/watch?v=0jjeOYMjmDU

//MATH

//Based on Factorials
//4!=4*3*2*1
//n!=n*(n-1)

//Based on Recursion
//A void calls itself until it can't call itself anymore

//PROMPT

//Use recursion to create a tree-like branching structure. 
//Start with a symmetrical design that repeatedly bifurcates. 
//Introduce a floatiable which proportionally reduces the length of each iterations’ branches. 
//Use randomness to floaty the length, angular orientation, and number of divisions.
//Add termini: leaves, alveoli, etc. Explore your design’s expressive range by connecting its internal floatiables to the cursor, sliders, or time-floatying sinusoids.(1)

float angle = PI/4;
float branchLength = 0.2; 
//int len = 100;

int OUTER = color(218, 165,32);
int MIDDLE = color(255,211,0);
int INNER = color(255,255,102);

int OUTER2 = color(218, 165,32, 40);
int MIDDLE2 = color(255,211,0, 40);
int INNER2 = color(255,255,102, 40);

PImage img;

void setup() {
  size(800, 800);
  //blendMode(DIFFERENCE);
//  img = loadImage("Barnsley.png");

  delay(7000);

}

void draw() {
  background(0, 0, 25);
  
  //BOTTOM
  pushMatrix();
  translate(width/2, height);
  rotate(0);
  
  stroke(OUTER);
  branch(100);
  
  stroke(MIDDLE);
  pushMatrix();
  translate(0, 80);
  branch(150);
  popMatrix();
  
  stroke(INNER);
  pushMatrix();
  translate(0, 10);
  branch(200);
  popMatrix();
  
  popMatrix();
  
  //TOP
  pushMatrix();
  translate(width/2, 0);
  rotate(PI);
  
  //calling branch void
  stroke(OUTER);
  branch(100);
  
  pushMatrix();
  stroke(MIDDLE);
  translate(0, 80);
  branch(150);
  popMatrix();
  
  pushMatrix();
  stroke(INNER);
  translate(0, 10);
  branch(200);
  popMatrix();
  
  popMatrix();
  
  
  //LEFT
  pushMatrix();
  translate(0, height/2);
  rotate(PI/2);
  
  //calling branch void
  stroke(OUTER);
  branch(100);
  
  pushMatrix();
  stroke(MIDDLE);
  translate(0, 80);
  branch(150);
  popMatrix();
  
  pushMatrix();
  stroke(INNER);
  translate(0, 10);
  branch(200);
  popMatrix();
  
  popMatrix();
  
  //RIGHT
  pushMatrix();
  translate(width, height/2);
  rotate(PI + (PI/2));
  
  //calling branch void
  stroke(OUTER);
  branch(100);
  
  pushMatrix();
  stroke(MIDDLE);
  translate(0, 80);
  branch(150);
  popMatrix();
  
  pushMatrix();
  stroke(INNER);
  translate(0, 10);
  branch(200);
  popMatrix();
  
  popMatrix();
  
  stroke(160);
  
  //NORTHEAST
  pushMatrix();
  translate(width, 0);
  rotate((5*PI)/4);
  
  //calling branch void
  branch(25);
  
  pushMatrix();
  translate(0, 30);
  branch(50);
  popMatrix();
  
  pushMatrix();
  translate(0, 10);
  branch(100);
  popMatrix();
  
  popMatrix();
  
  //SOUTHEAST
  pushMatrix();
  translate(width, height);
  rotate((7*PI)/4);
  
  //calling branch void
  branch(25);
  
  pushMatrix();
  translate(0, 30);
  branch(50);
  popMatrix();
  
  pushMatrix();
  translate(0, 10);
  branch(100);
  popMatrix();
  
  popMatrix();
  
  //NORTHWEST
  pushMatrix();
  translate(0, 0);
  rotate((3*PI)/4);
  
  //calling branch void
  branch(25);
  
  pushMatrix();
  translate(0, 30);
  branch(50);
  popMatrix();
  
  pushMatrix();
  translate(0, 10);
  branch(100);
  popMatrix();
  
  popMatrix();
 
  
  //SOUTHWEST
  pushMatrix();
  translate(0, height);
  rotate((PI)/4);
  
  //calling branch void
  branch(25);
  
  pushMatrix();
  translate(0, 30);
  branch(50);
  popMatrix();
  
  pushMatrix();
  translate(0, 10);
  branch(100);
  popMatrix();
  
  popMatrix();
  
  
  //ALPHA
  pushMatrix();
  translate(-120, -120);
  //rotate(PI/3);
  scale(1.3);
  
  //BOTTOM
  pushMatrix();
  translate(width/2, height);
  rotate(0);
  
  stroke(OUTER2);
  branch(100);
  
  stroke(MIDDLE2);
  pushMatrix();
  translate(0, 80);
  branch(150);
  popMatrix();
  
  stroke(INNER2);
  pushMatrix();
  translate(0, 10);
  branch(200);
  popMatrix();
  
  popMatrix();
  
  //TOP
  pushMatrix();
  translate(width/2, 0);
  rotate(PI);
  
  //calling branch void
  stroke(OUTER2);
  branch(100);
  
  pushMatrix();
  stroke(MIDDLE2);
  translate(0, 80);
  branch(150);
  popMatrix();
  
  pushMatrix();
  stroke(INNER2);
  translate(0, 10);
  branch(200);
  popMatrix();
  
  popMatrix();
  
  
  //LEFT
  pushMatrix();
  translate(0, height/2);
  rotate(PI/2);
  
  //calling branch void
  stroke(OUTER2);
  branch(100);
  
  pushMatrix();
  stroke(MIDDLE2);
  translate(0, 80);
  branch(150);
  popMatrix();
  
  pushMatrix();
  stroke(INNER2);
  translate(0, 10);
  branch(200);
  popMatrix();
  
  popMatrix();
  
  //RIGHT
  pushMatrix();
  translate(width, height/2);
  rotate(PI + (PI/2));
  
  //calling branch void
  stroke(OUTER2);
  branch(100);
  
  pushMatrix();
  stroke(MIDDLE2);
  translate(0, 80);
  branch(150);
  popMatrix();
  
  pushMatrix();
  stroke(INNER2);
  translate(0, 10);
  branch(200);
  popMatrix();
  
  popMatrix();
  popMatrix();
 
 
  angle += 0.01;
  branchLength +=0.008;
  
  if (branchLength>0.6){
    branchLength = 0.6;
  }
  
}

void branch (float len){
  line(0, 0, 0, -len);
  translate(0, -len);
    
  if(len >4){
  pushMatrix();
  rotate(angle);
  branch(len * branchLength);
  popMatrix();

  //without Push and Pop, it gets interesting, but one sided
  pushMatrix();
  rotate(-angle);
  branch(len*branchLength);
  popMatrix();
  }
  
}
