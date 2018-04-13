boolean stop = false; //declaring variables.

// Function to set up frame, background etc. that runs only one time.
void setup() {
size(1500, 900);
background(255,30);
textSize(25);
fill(0);
text("Made by: OLE MARTIN ",10,23);
}


// Function to stop and start the printing.
void mousePressed(){
  if (stop){
    stop = false;
  }
  else{
    stop = true;
  }
}

// function to draw the polygons
void draw(){
  if (stop == false){
float polyCount = random(1);
noFill();
int sideCount = 0;
float radius = 0.0;
float rotation = 0.0;


    // for loop to keep printing out polygon of different shapes.
    for (int i=0; i<polyCount; i++) {  
    sideCount = int(random(1, 60));
    println(sideCount); //check numbers of sides on the different polygons that is printed out.
    radius = random(5, 20);
    rotation = random(TWO_PI);
    fill(random(255),random(255),random(255), random(40,140));
    stroke(random(255),random(255),random(255));
    pushMatrix();
    translate(random(width), random(height));
    rotate(rotation);
    polygon(sideCount, radius);
    popMatrix();
    }
  }
}

// function to write polygons.
void polygon(int sideCount, float radius) {
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