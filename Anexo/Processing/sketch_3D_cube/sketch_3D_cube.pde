float angle = 30;
int num_points = 8;
int half_side = 30;

//color purple = color(228,204,255);
color red = color(255,0,0);
color purple = color(255, 255, 255);
//color red = color(74,134,232);

PVector[] points = new PVector[8];
boolean drawing = false;

void setup() {
  size(1400, 1000, P3D);
  background(purple) ;
  
  points[0] = new PVector(-half_side, -half_side, -half_side);
  points[1] = new PVector(half_side, -half_side, -half_side);
  points[2] = new PVector(half_side, half_side, -half_side);
  points[3] = new PVector(-half_side, half_side, -half_side);
  points[4] = new PVector(-half_side, -half_side, half_side);
  points[5] = new PVector(half_side, -half_side, half_side);
  points[6] = new PVector(half_side, half_side, half_side);
  points[7] = new PVector(-half_side, half_side, half_side);  
}

void draw() {
 
  pushMatrix();
  //translate(width/2, height/2);
  translate(mouseX, mouseY);
   
  //_____________________________________________
  //Matrix of projection 3D to 2D
  float[][] projection = {
    {1, 0, 0},
    {0, 1, 0}
  };
  
  //Matrix of rotation in 3D
  float[][] rotationZ = {
    { cos(angle), -sin(angle), 0},
    { sin(angle), cos(angle), 0},
    { 0, 0, 1}
  };
  
  float[][] rotationX = {
      { 1, 0, 0},
      { 0, cos(angle), -sin(angle)},
      { 0, sin(angle), cos(angle)}
    };
  
  float[][] rotationY = {
      { cos(angle), 0, sin(angle)},
      { 0, 1, 0},
      { -sin(angle), 0, cos(angle)}
  };
  //____________________________________________
  //Now we apply the transformations we want:
  
  PVector[] rotated1 = new PVector[8];
  for (int i = 0; i<num_points; i++) {
    rotated1[i] = matmul(rotationY, points[i]);
  }
  
  if (drawing) {
    //We represent the points
    /*
    for (PVector v : rotated1) {
      stroke(255);
      strokeWeight(16);
      noFill();
      point(v.x, v.y, v.z);  
    }
    */    
    //We connect the points:
    
    //stroke(231,255,204);
    stroke(255, 0, 0, 20);
    strokeWeight(1);
    //blendMode(ADD);
    for (int i = 0; i < 4; i++) {
      connect(i, (i+1) % 4, rotated1);
      connect(i+4, ((i+1) % 4)+4, rotated1);
      connect(i, i+4, rotated1);
    }
  }
  
  angle += 0.03;
  popMatrix();
}


void connect(int i, int j, PVector[] points) {
  PVector a = points[i];
  PVector b = points[j];
  //strokeWeight(1);
  //stroke(255);
  line(a.x, a.y, a.z, b.x, b.y, b.z);
}

void mousePressed(){
  drawing = true;
}

void mouseReleased(){
  drawing = false;
}
