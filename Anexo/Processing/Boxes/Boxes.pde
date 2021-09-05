float angle = 0;
//color purple = color(228,204,255);
//color red = color(255,0,0);
color purple = color(255, 255, 255);
color red = color(74,134,232);


void setup() {
  size(800, 800, P3D);

}

void draw() {
  
  lights();                                                                                                                                                                                                                          
  background(purple);

  translate(width/2, height/2, -height);
  
  float rz = map(mouseY, 0, height, 0, PI);
  float ry = map(mouseX, 0, width, 0, PI); 
  rotateY(angle);
  rotateZ(rz);
  rotateY(ry);
  
  stroke(red);
  noFill();
  box(320);
  
  noStroke();
  fill(red);
  for (int y = -1; y <= 1; y++) {
    for (int x = -1; x <= 1; x++) {
      for (int z = -1; z <= 1; z++) {
        pushMatrix();
        translate(70*x, 70*y, -70*z);
        box(30);
        popMatrix();
      }
    }
  }
  
  angle += 0.01;
}
