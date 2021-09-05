//color purple = color(228,204,255);
//color red = color(255,0,0);
color green = color(0, 255,0);
color purple = color(255, 255, 255);
color red = color(74,134,232);
int redness = 0;
int greenish = 0; 
int blueish = 0;

int len = 6;
int num;
float angle = PI/13;
int j = 1;
int dir;

void setup() {
  size(800, 800);
  background(purple);
}

void draw() {
  translate(width/2, height/2);
  if (j < 100000){
    num = j;
    while ( num > 1) {
      num = collatz(num);
      if (num % 2 == 0) {
        //stroke(red, 20);
        dir = 1;
      } else {
        //stroke(red, 20);
        dir = -1;
      }
      rotate(dir * angle);
      stroke(redness, greenish, blueish, 80);
      strokeWeight(5);
      line(0,0, 0, -len);
      translate(0,-len);
      //rotate(-dir*angle);
    }
  }
  j++;
  blueish = (blueish + 23) % 255;
  //greenish = (redness/3 + 20) % 25;
  
}

int collatz (int n) {
  if (n % 2 == 0) {
    return n / 2;
  } else {
    return n*3 + 1;
  }
}
