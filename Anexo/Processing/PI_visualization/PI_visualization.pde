color purple = color(228,204,255);
color red = color(255,0,0);
color white = color(255);
color black = color(0);

PFont font;

Planet pi_planet, random_planet;
int radius = 200;

void setup() {
  size(1600, 800);
  background(black);
    
  font = createFont("Source Code Pro Bold", 34);
  
  pi_planet = new Planet("pi-1million.txt", radius);
  random_planet = new Planet("1e6_random_digits.txt", radius);

  pi_planet.update_color();
  random_planet.update_color();

}

void draw() {
  translate(width/4, height/2);
  
  pi_planet.update();
  pi_planet.display();
  
  translate(width/2, 0);

  
  random_planet.update();
  random_planet.update_color();
  random_planet.display_digits();
  random_planet.display();
  
}

void mousePressed() {
  String name = "planets.jpg";
  save(name);

}
