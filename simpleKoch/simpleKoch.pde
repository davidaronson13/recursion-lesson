/**
 * 1st stepto a Simple Koch fractal.  It is based on the Koch curve, which appeared in a 1904 paper 
 titled "On a Continuous Curve Without Tangents, Constructible from Elementary Geometry"[3] 
 by the Swedish mathematician Helge von Koch. -https://en.wikipedia.org/wiki/Koch_snowflake
 * 
 * Change the first integer on line 14 to see different orders
 */

void setup() {
  size(800, 800);
  background(200);
}

void draw() {
  translate(0,600);
  int size = 800;
  
  line(0,0,size/3,0); 
  translate(size/3,0); //move the pen
  rotate(-PI/3); //rotate the pen
  
  line(0,0,size/3,0); 
  translate(size/3,0);
  rotate(2*PI/3);
  
  line(0,0,size/3,0); 
  translate(size/3,0);
  rotate(-PI/3);
  
  line(0,0,size/3,0); 
  translate(size/3,0);
       
  translate(-2*size/3,0); //move the pen back to the end of the line

  
}
