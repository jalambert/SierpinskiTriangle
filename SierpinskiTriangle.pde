public void setup() {
  size(1024, 1026);
}
public void draw() {
  noFill();
  sierpinski(512, 0, 1024);
  noLoop();
}
public void mouseDragged() {
}
public void sierpinski(int x, int y, int len) {
  if (len <= 2) {
    //stroke((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    triangle(x, y, x-(len/2), y+len, x+len/2, y+len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x-(len/2), y+len, len/2);
    sierpinski(x+len/2, y+len, len/2);
  }
}
