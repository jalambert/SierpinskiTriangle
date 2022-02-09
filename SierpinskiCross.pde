public void setup() {
  size(729, 729);
}
public void draw() {
  background(200);
  sierpinski(0, 0, 729);
}
int size = 6;
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
}
public void sierpinski(int x, int y, int len) {
  if (len <= pow(3,6-size)) {
    fill(0);//(float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    beginShape();
    vertex(x,y+(len/3));
    vertex(x+(len/3),y+(len/3));
    vertex(x+(len/3),y);
    vertex(x+(2*len/3),y);
    vertex(x+(2*len/3),y+(len/3));
    vertex(x+len,y+(len/3));
    vertex(x+len,y+(2*len/3));
    vertex(x+(2*len/3),y+(2*len/3));
    vertex(x+(2*len/3),y+len);
    vertex(x+(len/3),y+len);
    vertex(x+(len/3),y+(2*len/3));
    vertex(x,y+(2*len/3));
    endShape(CLOSE);
  } else {
    sierpinski(x+(len/3), y, len/3);//12
    sierpinski(x, y+(len/3), len/3);//21
    sierpinski(x+(len/3),y+(len/3),len/3);//22
    sierpinski(x+(2*len/3), y+(len/3), len/3);//23
    sierpinski(x+(len/3), y+(2*len/3), len/3);//32
  }
}
