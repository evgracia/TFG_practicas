color red = color (255, 0, 0);
color yellow = color(240,224,70);
color black = color (0);

float speed = 0.1;

Boing ball;

Head smiley;

Fly my_fly;
int r1 = 100;
int r2 = 30;

void setup() {
  size(400, 400);
  ball = new Boing(3, 2, 0, 100, 100, red); 
  smiley = new Head(5, 1, 0, 150, 150, yellow);
  my_fly = new Fly(7, 5, 0, 10, 20, black, r1, r2);
}

void draw() {
  translate(width/2, height/2);
  background(230);
  
  //ball.update(speed);
  //ball.display();
  
  smiley.update(speed);
  smiley.paint_head();
  
  translate(0, -130);
  
  my_fly.update(speed);
  my_fly.paint_fly();
  
  translate(0, 300);
  
  rectMode(CENTER);
  fill(199,157,215);
  rect(0, 0, width, height/4);
  
  smiley.head_shadow(0);
  my_fly.fly_shadow(0);
  
  
  //fill(77,27,123);
  

  ////Cabeza
  //fill(240,224,70);
  //ellipse(0,0+boing, 150,150);
  
  ////Ojos
  //fill(0);
  //float ojoX = map(mouseX, 0, width, -20, 20);
  //float ojoY = map(mouseY, 0, height, -20, 20);
  //translate(-35,-25);
  //ellipse(ojoX,ojoY+boing, 10, 7*(1 +float(mouseY)/height)); 
  //translate(35,25);
  //translate(35,-25);
  //ellipse(ojoX,ojoY+boing, 10, 7*(1 +float(mouseY)/height)); 
  //translate(-35,25);
  
  ////Boca
  //translate(0, -10);
  //arc(1.3*ojoX,ojoY+boing, 15, 10*(1 +float(mouseY)/height), radians(180),radians(360)); 
  
  ////Mosca
  //translate(0, -130);
  //ellipse(r1*cos(t), r2*sin(t)+boing_fly, 20, 10);
  
  ////Sombras
  //translate(0, 300);
  //rectMode(CENTER);
  
  //fill(199,157,215);
  //rect(0, 0, width, height/4);
  //fill(77,27,123);
  //ellipse((r1+0.7*boing_fly)*cos(t), (r2+0.7*boing_fly)*sin(t), 20*0.6, 10*0.6);
  //ellipse(0, 0, 100+boing, 10+boing*0.3);
  
  //t+= speed;
  //boing = 5*sin(t);
  //boing_fly = 7*sin(t*5);
  
}


void mousePressed() {
  saveFrame("image-###.jpg");
}
