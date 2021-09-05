color red = color (255, 0, 0);
color yellow = color(240,224,70);
color black = color (0);
color floor = color(237,201,235);
color back = color(251,244,251);
color dark = color(68,69,39);

float speed = 0.1;
int num_image = 0;
String name;

Boing ball;
Head smiley;
Fly my_fly;
int r1 = 100;
int r2 = 30;

void setup() {
  size(400, 400);
  //Boing(float h_boing, float s_boing, float t0, int h_ball, int w_ball,
  //      color color_ball)
  ball = new Boing(3, 2, 0, 100, 100, red); 
  smiley = new Head(5, 1, 0, 150, 150, yellow);
  my_fly = new Fly(7, 5, 0, 10, 20, dark, r1, r2);
}

void draw() {
  translate(width/2, height/2);
  background(back);
  
  //ball.update(speed);
  //ball.display();
  
  smiley.update(speed);
  smiley.display_head();
  
  translate(0, -130);
  
  my_fly.update(speed);
  my_fly.display_fly();
  
  translate(0, 300);
  
  rectMode(CENTER);
  fill(floor);
  rect(0, 0, width, height/4);
  
  smiley.head_shadow(0);
  my_fly.fly_shadow(0);
}


void mousePressed() {
  name = "image" + num_image + ".jpg";
  save(name);
  //saveFrame("image-###.jpg");
  num_image++;
}
