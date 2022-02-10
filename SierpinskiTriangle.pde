public void setup() {
  size(1024, 1026);
  int siz = 9;
}
public void draw() {
  //background(200);
  fill(200);
  sierpinski(512, 0, 1024);
}
public void keyPressed() {
  if(key == '0')
  siz = 0;
  if(key == '1')
  siz = 1;
  if(key == '2')
  siz = 2;
  if(key == '3')
  siz = 3;
  if(key == '4')
  siz = 4;
  if(key == '5')
  siz = 5;
  if(key == '6')
  siz = 6;
  if(key == '7')
  siz = 7;
  if(key == '8')
  siz = 8;
  if(key == '9')
  siz = 9;
}
public void sierpinski(int x, int y, int len) {
  if (len <= pow(2,9-siz)) {
    triangle(x, y, x-len, y+len*2, x+len, y+len*2);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x-(len/2), y+len, len/2);
    sierpinski(x+len/2, y+len, len/2);
  }
}
