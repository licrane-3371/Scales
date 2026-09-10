void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean flip = true;
  for(int y = 10; y <= 510; y += 20){
    for(int x = 1; x <= 500; x += 15){
      int r = (int) random(255);
      int g = (int) random(255);
      int b = (int) random(255);
      fill(r,g,b);
      if(flip == false){
        scale(x+10,y);
      } else {
        scale(x,y);
      }
    }
    if(flip == true){
      flip = false;
    } else {
      flip = true;
    }
  }
}
void scale(int x, int y) {
  bezier(x,y-20,x-20,y,x,y,x,y+20);
  bezier(x,y-20,x+20,y,x,y,x,y+20);
}
