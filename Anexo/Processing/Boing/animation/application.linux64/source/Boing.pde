class Boing {
  float t;
  
  float boing;
  float h_boing;
  float s_boing;
  
  int h_ball;
  int w_ball;
  color color_ball;
  
  Boing(float h_boing, float s_boing, float t0, int h_ball, int w_ball,
  color color_ball) {
    this.h_boing = h_boing;
    this.s_boing = s_boing;
    this.boing =  h_boing * sin(s_boing * t0);
    this.t = t0;
    this.h_ball = h_ball;
    this.w_ball = w_ball;
    this.color_ball = color_ball;
  }
  
  void update(float speed) {
    boing = h_boing * sin(s_boing * t); 
    t += speed;
  }
  
  void display() {
    noStroke();
    fill(color_ball);
    ellipse(0, 0+boing, w_ball,h_ball); 
  }
  
}
