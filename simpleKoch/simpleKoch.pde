/**
 * simple Koch fractal. 
 * 
 * Change the first integer on line 14 to see different orders
 */

void setup() {
  size(400, 400);
  background(200);
}

void draw() {
  translate(0,300);
  koch(3,400);
}

void koch(int order, int size){
  if (order == 0){
    line(0,0,size,0);
  }else{
    koch(order-1,size/3);
    translate(size/3,0);
    rotate(-PI/3);
    koch(order-1,size/3);
    translate(size/3,0);
    rotate(2*PI/3);
    koch(order-1,size/3);
    translate(size/3,0);
    rotate(-PI/3);
    koch(order-1,size/3);
    translate(-2*size/3,0);
  }
  
}
