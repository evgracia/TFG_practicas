class Fly extends Boing {
  float r1; // radio horizontal de la ellipse en la que se mueve
  float r2; // radio vertical
  
  Fly(float h_boing, float s_boing, float t, int h_ball, int w_ball,
  color color_ball, float r1, float r2) {
    super(h_boing, s_boing, t, h_ball, w_ball, color_ball);
    this.r1 = r1;
    this.r2 = r2;
  }
  
  void display_fly() {
    fill(color_ball);
    ellipse(r1*cos(t), r2*sin(t)+boing, w_ball, h_ball); 
  }
  
  void fly_shadow(int shadow_height) {
    translate(0, shadow_height);
    fill(77,27,123);
    ellipse((r1+0.7*boing)*cos(t), (r2+0.7*boing)*sin(t), w_ball*0.7, h_ball*0.7);
    translate(0, -shadow_height);
  }
  
}
