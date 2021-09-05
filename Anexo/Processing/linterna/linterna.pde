PImage fish;

void setup() {
  size(500, 500, P3D); 
  fish = loadImage("peces.jpg");
}

void draw() {
  
  //for ( int i = 0; 0<=0; i++) {
  //  fish.pixels[i] = color(255,0,0);
  //}
  //image(fish, 0, 0);
  //filter(GRAY);
  //filter(DILATE);
  //filter(THRESHOLD, 0.6);  
  
  loadPixels();
  fish.loadPixels();
  //print(" width " + fish.width + " height " + fish.height +  " total " + fish.width * fish.height);
  //print(" pixels" + pixels.length);
  for (int x = 0; x < width; x++ ) {
    for (int y = 0; y < height; y++ ) {
      int loc = x + y * width;
      int loc_img = x + y * fish.width;
      if (loc < pixels.length){
        //pixels[loc] = color(255,0,0);
        // Get the R,G,B values from image
        float r = red  (fish.pixels[loc_img]);
        float g = green(fish.pixels[loc_img]);
        float b = blue (fish.pixels[loc_img]);
  
        // Calculate an amount to change brightness
        // based on proximity to the mouse
        float distance = dist(x, y, mouseX, mouseY);
  
        // The closer the pixel is to the mouse, the lower the value of "distance" 
        // We want closer pixels to be brighter, however, so we invert the value using map()
        // Pixels with a distance of 100 (or greater) have a brightness of 0.0 (or negative which is equivalent to 0 here)
        // Pixels with a distance of 0 have a brightness of 1.0.
        float adjustBrightness = map(distance, 0, 100, 8, 0);
        r *= 0.1 * adjustBrightness;
        g *= 0.1 * adjustBrightness;
        b *= 0.1 * adjustBrightness;
  
        // Constrain RGB to between 0-255
        r = constrain(r, 0, 255);
        g = constrain(g, 0, 255);
        b = constrain(b, 0, 255);
  
        // Make a new color and set pixel in the window
        color c = color(r, g, b);
        pixels[loc] = c;
      }else{
        print(" a " + loc + " " + pixels.length);
      }
    }
  }
  updatePixels();
  
}
