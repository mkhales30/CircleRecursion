void setup() {
size(800, 800);
noStroke();
noLoop();
}
void draw() {
drawCircle(width/2, 280, 6);
}
void drawCircle(int x, int radius, int level) {
float tt = 126 * level/4.0;
fill(tt);
/**
https://processing.org/reference/ellipse_.html
a float: x-coordinate of the ellipse
b float: y-coordinate of the ellipse
c float: width of the ellipse by default
d float: height of the ellipse by default
**/
ellipse(height/2, x, radius*2, radius*2);
if(level > 1) {
level = level - 1;
drawCircle(x - radius/2, radius/2, level);
drawCircle(x + radius/2, radius/2, level);
}
}
