public void setup() {
  size(729, 729);
}
public void draw() {
  sierpinski(0, 0, 729);
  noLoop();
}
public void mouseDragged() {
}
public void sierpinski(int x, int y, int len) {
  if (len <= 3) {
    fill(0);//(float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    rect(x, y, len, len);
  } else {
    sierpinski(x, y, len/3);//11
    sierpinski(x+(len/3), y, len/3);//12
    sierpinski(x+(2*len/3), y, len/3);//13
    sierpinski(x, y+(len/3), len/3);//21
    sierpinski(x+(2*len/3), y+(len/3), len/3);//23
    sierpinski(x, y+(2*len/3), len/3);//31
    sierpinski(x+(len/3), y+(2*len/3), len/3);//32
    sierpinski(x+(2*len/3), y+(2*len/3), len/3);//33*/
  }
}
