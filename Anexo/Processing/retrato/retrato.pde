//color purple = color(228,204,255);
//color red = color(255,0,0);
color white = color(255, 255, 255);
color blue = color(74,134,232);

int num = 22000;
float[] x = new float[num];
float[] y = new float[num];
PImage img;  



void setup() {
  size(600, 600);
  //img = loadImage("figure.jpg");      
  //img = loadImage("pidgeon.jpg");   
  //img = loadImage("smoke.jpg");  
  //img = loadImage("swan.jpg");  
  //img = loadImage("campo.jpg");  
  //img = loadImage("bar.jpg");  
  img = loadImage("antena.jpg");  
  //img = loadImage("phone.jpg");  
  
  float img_max = max(img.width, img.height);
  float escala = width/img_max;
  float w = img.width * escala;
  float h = img.height * escala;
  img. resize(int(w), int(h));
  
  for (int i = 0; i < num; i++) {
    x[i] = random(w);
    y[i] = random(h);
  }
  stroke(blue);
  
  noSmooth();
}

void draw() {
  background(0);
  //image(img,0,0);
  for (int i = 0; i < num; i++) {
    color c = img.get(int(x[i]), int(y[i]));
    float b = brightness(c) / 255.0;
    float speed = pow(b, 2) + 0.05;
    x[i] += speed;
    if (x[i] > img.width) { 
      x[i] = 0;
      y[i] = random(img.height); 
    }
    point(x[i], y[i]); 
    
  }
}
