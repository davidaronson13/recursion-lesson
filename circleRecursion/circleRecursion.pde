//this may cause a stackloverflowerror at first
void setup() {
  size(600, 600);
  background(200);
}

void draw() {
 // translate(0,300);
  recurseCircle(400);
}

void recurseCircle(int size){
  
  ellipse(0, 0, size, size);
  if (size > 20){
  recurseCircle(size-20);
  }
}
