class Planet {
  int[] digits;
  int index;
  int digit;
  int nextDigit;
  color planet_color;
  int radius;
  
  Planet(String file_path, int radius) {
    String digits_str = loadStrings(file_path)[0];
    String[] sdigits = digits_str.split("");
    this.digits = int(sdigits);
    this.index = 0;
    this.digit = digits[index];
    this.nextDigit = digits[index+1];
    this.radius = radius;
    this.planet_color = color(255); 
  }
  
  void update() {
    index ++;
    digit = digits[index];
    nextDigit = digits[index+1];
  }
  
  void update_color() {
    float num1 = digits[index+1]*100 + digits[index+2]*10 + digits[index+3];
    float num2 = digits[index+4]*100 + digits[index+5]*10 + digits[index+6];
    float num3 = digits[index+7]*100 + digits[index+8]*10 + digits[index+9];
    num1 = map(num1, 0, 999, 0, 255);
    num2 = map(num2, 0, 999, 0, 255);
    num3 = map(num3, 0, 999, 0, 255);
    planet_color = color(num1, num2,num3); 
  }
  
  //______________________Visualización de los dígitos_________________________
  void display_digits(){
    translate(0, 7);
    float dg = map(digit,0,10,0,TWO_PI);
    float dgx = (radius+20) * cos(dg);
    float dgy = (radius+20) * sin(dg);
    fill(red);
    //for (int i = 0; i<10; i++) {
    //  ellipse(dgx, dgy, 7, 7);
    //}
    textFont(font);
    textAlign(CENTER);  
    text(digit, dgx, dgy);
    translate(0, -7);
    
    //Visualización de los puntos donde se unen las líneas:___________________
    
    //fill(white);
    //ellipse(x1, y1, 7,7);
    //fill(purple);
    //ellipse(x2, y2, 7,7);
  }
  
  //_________________Visualización de las líneas y estrellas___________________
  void display(){
    noFill();
    stroke(planet_color, 50);
  
    float start_pt = 0;
    float final_pt = 0;
    if (index >= 3) {
      start_pt = float(digits[index-1]*100 + digits[index-2]*10 + digits[index-3]);
      start_pt /= 1000;
      final_pt = float(digits[index+2]*100 + digits[index+3]*10 + digits[index+4]);
      final_pt /= 1000;
    }
    
    float a1 = digit + start_pt;
    a1 = map(a1,0,10,0,TWO_PI);
    float a2 = nextDigit + final_pt;
    a2 = map(a2,0,10,0,TWO_PI);
    
      
    float x1 = radius * cos(a1);
    float y1 = radius * sin(a1);
    
    float x2 = radius * cos(a2);
    float y2 = radius * sin(a2);
  
    line(x1,y1,x2,y2);
    //float distance = map(nextDigit,0,9,1,2.5);
    //float distance = random(1, 2.5);
    float distance = map(final_pt, 0, 1, 1, 3);
    //float size_star = map(index, 0, 9, 1, 5);
    fill(planet_color);
    stroke(planet_color, 10*nextDigit+50);
    float size_star = map(index, 0, 1000, 0.5, 0.75);
    ellipse(x1*distance, y1*distance, int(size_star)+1, int(size_star)+1); 
  }
  


}
