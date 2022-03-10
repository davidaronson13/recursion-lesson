//at first this will cause a stackoverlfow error

void setup() {
  size(600, 600);
  background(200);
}

void draw() {
 translate(300,300);
  recurseCircle(6, 400);
}

void recurseCircle(int num, int size){
  if (num == 0){
    return; // the base case is nothing 
  }
  ellipse(0, 0, size, size);
  recurseCircle(num -1,size-20); 
  
}
