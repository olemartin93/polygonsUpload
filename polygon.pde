/*void polygon(int sideCount, float radius) {
float theta = 0.0;
float x = 0.0;
float y = 0.0;
beginShape();

float rnd = random(1, 3);
for (int i=0; i<sideCount; i++) {
x = cos(theta)*radius*rnd;
y = sin(theta)*radius*rnd;
vertex(x, y);
theta += TWO_PI/sideCount*100;
}
endShape(CLOSE);
} // end polygon
*/