int numFrames = 20;
int izFrame = 0;
int drFrame = 0;
PImage[] images = new PImage[numFrames];
int last_time = 0;

void setup() {
  size(800, 400); 
  frameRate(20);
  for (int i =0; i < images.length; i++) {
    String name = "image" + i + ".jpg";
    images[i] = loadImage(name);
  }
}

void draw() {
  image(images[izFrame], 0, 0);  //The iz image will change 2 times per second:
  if ((millis() - last_time) > 500) {
     izFrame = (izFrame + 1) % numFrames;
     last_time = millis();
  }
  image(images[drFrame], 400, 0);
  drFrame = (drFrame + 1) % numFrames;
}
