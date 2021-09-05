PImage fish;  

color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
//color purple = color(228, 204, 255);
color white = color(255);
color black = color(0);
color purple = color(255, 255, 255);
//color red = color(74,134,232);


int radio = 300;
int num_trazos = 60;
float angle = TWO_PI/num_trazos;
int profundidad = 1200;
int altura = 30;
int num_niveles = profundidad/altura;
float[][] terreno = new float[num_trazos][num_niveles];
float flying = 0;
float rotation_angle = 0;

int forward = 0;
int backwards = 0;
boolean pressedW = false;
boolean pressedS = false;
boolean movingXY = false;

void setup() {
  size(900, 800, P3D); 
  fish = loadImage("peces.jpg");
  
  //________TERRENO ESTÁTICO________________________________
  //float hoff = 0;
  //for (int h = 0; h < num_niveles; h ++) {
  //  float aoff = 0;
  //  for (int a = 0; a < num_trazos; a ++) {
  //    //terreno[a][h] = random(-10, 10);
  //    terreno[a][h] = map(noise(aoff,hoff), 0, 1, -100, 100);
  //    aoff += 0.1;
  //  }
  //hoff += 0.1;
  //}
}

void draw() {
  background(black);
  translate(width/2, height/2); 
  
  //_________________LIGHTS__________________________
  
  lights();
  //ambientLight(228, 204, 255);    //purple
  //ambientLight(255, 255, 255);
  //pointLight(255, 0, 0, 0, -100, 500);
  //directionalLight(255, 255, 255, 1, 0, 0);

  //__________________CILINDRO_______________________

  translate(0, 0, -400);
  rotateZ(rotation_angle);
  rotation_angle += 0.001;
  rotateX(-PI/5);

  // EJES XYZ (RGB) con PLANO XY_____________________

  //strokeWeight(7);
  //stroke(white,50); 
  //ellipse(0, 0, 3, 3);
  //stroke(red);
  //line(0, 0, 0, radio, 0 ,0);
  //stroke(green);
  //line(0, 0, 0, 0, radio ,0);
  //stroke(blue);
  //line(0, 0, 0, 0, 0, radio);
  //noFill();
  //ellipse(0, 0, radio*2, radio*2);

  // PRUEBAS _________________________________________

  //noFill();
  //stroke(black);
  //strokeWeight(0.81);

  //for (int j = -rows2/2; j < rows2/2; j++) {
  //  beginShape(TRIANGLE_STRIP);
  //  for (int i = -cols2/2; i <= cols2/2; i ++) {
  //    vertex(i*side, 0, (j+1)*side);
  //    vertex(i*side, 0, j*side);
  //  }
  //  endShape();
  //}

  //float angle = TWO_PI/num_trazos;
  //  for (int a = 0; a < num_trazos; a ++) {
  //    line(radio*cos(a*angle), radio*sin(a*angle), radio*cos((a+1)*angle), radio*sin((a+1)*angle));
  //  }

  // CILINDRO ESTÁTICO _______________________________

  //noFill();
  //stroke(black);
  //strokeWeight(0.81);

  //for (int h = 0; h < num_niveles; h ++) {
  //  beginShape(TRIANGLE_STRIP);
  //  for (int a = 0; a < num_trazos; a ++) {
  //    vertex(radio*cos(a*angle), radio*sin(a*angle), h*altura);
  //    vertex(radio*cos(a*angle), radio*sin(a*angle), (h+1)*altura);
  //    vertex(radio*cos((a+1)*angle), radio*sin((a+1)*angle), h*altura);
  //    vertex(radio*cos((a+1)*angle), radio*sin((a+1)*angle), (h+1)*altura);    
  //  }
  //  endShape();
  //}

  // TERRENO MÓVIL __________________________________

  flying -= 0.01;

  float hoff = flying;
  for (int h = 0; h < num_niveles; h ++) {
    float aoff = 0;
    for (int a = 0; a < num_trazos; a ++) {
      //terreno[a][h] = random(-10, 10);
      terreno[a][h] = map(noise(aoff, hoff), 0, 1, -100, 100);
      aoff += 0.1;
    }
    hoff += 0.1;
  }

  // CILINDRO MÓVIL __________________________________

  noFill();
  colorMode(MULTIPLY);
  //fill(white, 190);
  stroke(white, 60);
  strokeWeight(0.81);
  //noStroke();

  for (int h = 0; h < num_niveles; h ++) {
    beginShape(TRIANGLE_STRIP);
      //texture(fish);
    for (int a = 0; a < num_trazos; a ++) {
      float r1 = radio + terreno[a][h];
      float r2 = radio + terreno[a][(h+1)% num_niveles];
      float r3 = radio + terreno[(a+1)%num_trazos][h];
      float r4 = radio + terreno[(a+1)%num_trazos][(h+1)% num_niveles];
      //vertex(r1*cos(a*angle), r1*sin(a*angle), h*altura);
      //vertex(r2*cos(a*angle), r2*sin(a*angle), (h+1)*altura);
      //vertex(r3*cos((a+1)*angle), r3*sin((a+1)*angle), h*altura);
      //vertex(r4*cos((a+1)*angle), r4*sin((a+1)*angle), (h+1)*altura);
      vertex(r1*cos(a*angle), r1*sin(a*angle), h*altura, 0, 88);
      vertex(r2*cos(a*angle), r2*sin(a*angle), (h+1)*altura, 200, 160);
      vertex(r3*cos((a+1)*angle), r3*sin((a+1)*angle), h*altura, 0, 12);
      vertex(r4*cos((a+1)*angle), r4*sin((a+1)*angle), (h+1)*altura, 100, 160);
    }
    endShape();
  }


  translate(0, 0, 400);
  rotateZ(-rotation_angle);

  // ESFERA ___________________________________________
  
  translate(-width/2, -height/2); 
  lights();
  
  noStroke();
  fill(red);
  if (pressedS) {
    forward += 10 ;
    fill(red);
  }
  if (pressedW) {
    backwards += 10 ;
    fill(red);
  }
  
  translate( 0, 0, forward - backwards);
  if (movingXY) {
    translate(mouseX, mouseY, 0);
  }
  else {
    translate(width/2, height/2); 
  }
  
  float r = map(mouseX, 0, width, 0, 255);
  ambient(r, r, 126);
  //translate(width/2, height/2, 0);
  sphere(103);
  
}



void keyPressed() {
  if ((key == 'W') || (key == 'w')) {
    pressedW = true;
  }
  if ((key == 'S') || (key == 's')) {
    pressedS = true;
  }
}

void keyReleased() {
  if ((key == 'W') || (key == 'w')) {
    pressedW = false;
  }
  if ((key == 'S') || (key == 's')) {
    backwards += 10 ;
    pressedS = false;
  }
}

void mouseDragged(){
  movingXY = true;
}

void mouseReleased(){
  movingXY = false;
}
