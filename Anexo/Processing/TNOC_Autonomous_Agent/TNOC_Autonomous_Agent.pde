color purple = color(228,204,255);
color red = color(255, 0, 0);
//color purple = color(255, 255, 255);
//color red = color(74,134,232);


Vehicle arrow1, arrow2, arrow3;
PVector force;
PVector target;
Vehicle to_mouse = new Vehicle(0, 0);
//PVector A, B, C;
//PVector[] path = new PVector[4];
Vehicle[] vehicles = new Vehicle[50];
PVector[] circle = new PVector[40];
int radio = 300;


void setup() {
  size(800, 800);
  translate(width/2, height/2);
  
  //arrow1 = new Vehicle(-height/2,-width/2); 
  //arrow2 = new Vehicle(height/2,width/2); 
  //arrow3 = new Vehicle(0, height+100); 
  
  //force = new PVector(0,2);
  //A = new PVector(-200,-200);
  //B = new PVector(200, 30);
  //C = new PVector(0, 80);
  //path[0] = A;
  //path[1] = B;
  //path[2] = C;
  //path[3] = A;
  
  for (int i = 0; i< circle.length - 1; i ++) {
    float x = radio * cos(i * (TWO_PI / (circle.length - 1)));
    float y = radio * sin(i * (TWO_PI / (circle.length - 1)));
    circle[i] = new PVector(x, y);
  }
  circle[circle.length - 1] = circle[0];
  
  for (int i = 0; i < vehicles.length; i ++) {
    float x = random(-width/2, width/2);
    float y = random(-height/2, height/2);
    vehicles[i] = new Vehicle(x, y);
  }
  
}

void draw() {
  background(purple);
  translate(width/2, height/2);
  
  target = new PVector(mouseX-width/2, mouseY-height/2);
  to_mouse.display_target(target, red);
  to_mouse.seek(target);
  //arrow.apply_force(force);
  to_mouse.display_arrow(20, red);
  to_mouse.update();
  to_mouse.in_canvas();

  
  //arrow1.display_arrow(10, red);
  //arrow1.display_path(A, B, red);
  //arrow1.display_path(B, C, red);
  ////arrow1.seek_simple_path(A, B, false, true);
  //arrow1.seek_complex_path(path);


  for (int i = 0; i < circle.length-1; i ++) {
    display_conexion(circle[i], circle[i+1], red);
  }
  
  for (int i = 0; i < vehicles.length; i ++) {
    vehicles[i].display_arrow(10, red);
    vehicles[i].seek_complex_path(circle);
    //if (i%2 ==0){
      
    
    vehicles[i].update();
    vehicles[i].in_canvas();
  }

}
