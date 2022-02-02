public void setup() {
  size(486, 486);
}
PShape s;
public void draw() {
  sierpinski(0, 0, 243);
  noLoop();
}
public void mouseDragged() {
}
public void sierpinski(int x, int y, int len) {
  if (len <= 3) {
    fill(0);//(float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    s = createShape();
    s.beginShape();
    s.vertex(x,y+(len/3));
    s.vertex(x+(len/3),y+(len/3));
    s.vertex(x+(len/3),y);
    s.vertex(x+(2*len/3),y);
    s.vertex(x+(2*len/3),y+(len/3));
    s.vertex(x+len,y+(len/3));
    s.vertex(x+len,y+(2*len/3));
    s.vertex(x+(2*len/3),y+(2*len/3));
    s.vertex(x+(2*len/3),y+len);
    s.vertex(x+(len/3),y+len);
    s.vertex(x+(len/3),y+(2*len/3));
    s.vertex(x,y+(2*len/3));
    s.endShape();
    shape(s,x,y);
  } else {
    sierpinski(x+(len/3), y, len/3);//12
    sierpinski(x, y+(len/3), len/3);//21
    sierpinski(x+(len/3),y+(len/3),len/3);//22
    sierpinski(x+(2*len/3), y+(len/3), len/3);//23
    sierpinski(x+(len/3), y+(2*len/3), len/3);//32
  }
}
