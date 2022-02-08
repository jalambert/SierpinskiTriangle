public void setup() {
  size(1024, 1026);
  //background(200);
}
public void draw() {
  fill(200);
  sierpinski(512, 0, 1024);
}
//int size = 9;
public void keyPressed() {
  if(key == '0')
  size = 0;
  if(key == '1')
  size = 1;
  if(key == '2')
  size = 2;
  if(key == '3')
  size = 3;
  if(key == '4')
  size = 4;
  if(key == '5')
  size = 5;
  if(key == '6')
  size = 6;
  if(key == '7')
  size = 7;
  if(key == '8')
  size = 8;
  if(key == '9')
  size = 9;
}
public void sierpinski(int x, int y, int len) {
  if (len <= pow(2,9-size)) {
    triangle(x, y, x-len, y+len*2, x+len, y+len*2);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x-(len/2), y+len, len/2);
    sierpinski(x+len/2, y+len, len/2);
  }
}
