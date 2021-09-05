import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class animation extends PApplet {

int red = color (255, 0, 0);
int yellow = color(240,224,70);
int black = color (0);

float speed = 0.1f;

Boing ball;

Head smiley;

Fly my_fly;
int r1 = 100;
int r2 = 30;

public void setup() {
  
  ball = new Boing(3, 2, 0, 100, 100, red); 
  smiley = new Head(5, 1, 0, 150, 150, yellow);
  my_fly = new Fly(7, 5, 0, 10, 20, black, r1, r2);
}

public void draw() {
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


public void mousePressed() {
  saveFrame("image-###.jpg");
}
class Boing {
  float t;
  
  float boing;
  float h_boing;
  float s_boing;
  
  int h_ball;
  int w_ball;
  int color_ball;
  
  Boing(float h_boing, float s_boing, float t0, int h_ball, int w_ball,
  int color_ball) {
    this.h_boing = h_boing;
    this.s_boing = s_boing;
    this.boing =  h_boing * sin(s_boing * t0);
    this.t = t0;
    this.h_ball = h_ball;
    this.w_ball = w_ball;
    this.color_ball = color_ball;
  }
  
  public void update(float speed) {
    boing = h_boing * sin(s_boing * t); 
    t += speed;
  }
  
  public void display() {
    noStroke();
    fill(color_ball);
    ellipse(0, 0+boing, w_ball,h_ball); 
  }
  
}
class Fly extends Boing {
  float r1;
  float r2;
  
  Fly(float h_boing, float s_boing, float t, int h_ball, int w_ball,
  int color_ball, float r1, float r2) {
    super(h_boing, s_boing, t, h_ball, w_ball, color_ball);
    this.r1 = r1;
    this.r2 = r2;
  }
  
  public void paint_fly() {
    fill(color_ball);
    ellipse(r1*cos(t), r2*sin(t)+boing, w_ball, h_ball); 
  }
  
  public void fly_shadow(int shadow_height) {
    translate(0, shadow_height);
    fill(77,27,123);
    ellipse((r1+0.7f*boing)*cos(t), (r2+0.7f*boing)*sin(t), w_ball*0.7f, h_ball*0.7f);
    translate(0, -shadow_height);
  }
  
}
class Head extends Boing {
  float ojoX;
  float ojoY;
  
  Head(float h_boing, float s_boing, float t, int h_ball, int w_ball,
  int color_ball) {
    super(h_boing, s_boing, t, h_ball, w_ball, color_ball);
  }
 
  public void paint_eyes() {
     fill(0); 
     ojoX = map(mouseX, 0, width, -w_ball/9, w_ball/9);
     ojoY = map(mouseY, 0, height, -h_ball/9, h_ball/9);
     translate(-w_ball/4, -h_ball/4);
     ellipse(ojoX, ojoY+boing, w_ball/9, (h_ball/10) *(1 +PApplet.parseFloat(mouseY)/height)); 
     translate(w_ball/4, h_ball/4);
     translate(w_ball/4, -h_ball/4);
     ellipse(ojoX, ojoY+boing, w_ball/9, (h_ball/10) * (1 +PApplet.parseFloat(mouseY)/height)); 
     translate(-w_ball/4, h_ball/4);
  }
  
  public void paint_mouth() {
    ojoX = map(mouseX, 0, width, -w_ball/9, w_ball/9);
    ojoY = map(mouseY, 0, height, -h_ball/9, h_ball/9);
    translate(0, -h_ball/7);
    arc(1.3f * ojoX, ojoY + boing, 15, 10*(1 +PApplet.parseFloat(mouseY)/height), 
      radians(180),radians(360));
    translate(0, h_ball/7);
  }
  
  public void paint_head() {
    display();
    paint_eyes();
    paint_mouth();
  }
  
  public void head_shadow(int shadow_height) {
    translate(0, shadow_height);
    fill(77,27,123);
    ellipse(0, 0, w_ball*0.75f + boing, h_ball/8 + boing *0.3f);
    translate(0, -shadow_height);
  }

}
  public void settings() {  size(400, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "animation" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
