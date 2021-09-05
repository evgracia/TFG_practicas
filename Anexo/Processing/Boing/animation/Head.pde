class Head extends Boing {
  float ojoX;
  float ojoY;
  
  Head(float h_boing, float s_boing, float t, int h_ball, int w_ball,
  color color_ball) {
    super(h_boing, s_boing, t, h_ball, w_ball, color_ball);
  }
 
  void display_eyes() {
     fill(48,49,16); 
     ojoX = map(mouseX, 0, width, -w_ball/9, w_ball/9);
     ojoY = map(mouseY, 0, height, -h_ball/9, h_ball/9);
     translate(-w_ball/4, -h_ball/4);
     ellipse(ojoX, ojoY+boing, w_ball/9, (h_ball/10) *(1 +float(mouseY)/height)); 
     translate(w_ball/4, h_ball/4);
     translate(w_ball/4, -h_ball/4);
     ellipse(ojoX, ojoY+boing, w_ball/9, (h_ball/10) * (1 +float(mouseY)/height)); 
     translate(-w_ball/4, h_ball/4);
  }
  
  void display_mouth() {
    ojoX = map(mouseX, 0, width, -w_ball/9, w_ball/9);
    ojoY = map(mouseY, 0, height, -h_ball/9, h_ball/9);
    translate(0, -h_ball/7);
    arc(1.3 * ojoX, ojoY + boing, 15, 10*(1 +float(mouseY)/height), 
      radians(180),radians(360));
    translate(0, h_ball/7);
  }
  
  void display_head() {
    display();
    display_eyes();
    display_mouth();
  }
  
  void head_shadow(int shadow_height) {
    translate(0, shadow_height);
    fill(77,27,123);
    ellipse(0, 0, w_ball*0.75 + boing, h_ball/8 + boing *0.3);
    translate(0, -shadow_height);
  }

}
