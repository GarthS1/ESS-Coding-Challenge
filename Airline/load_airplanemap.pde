PImage img;
int height;
int width;

void setup() {
  size(displayWidth, displayHeight);
  img = loadImage("airplane.png");
  height = displayHeight;
  width = displayWidth;
}

void draw() {
  image(img, 0, 0);
  fill(70);
  for(int i = 1; i < 4; i++) {
    rect(i * width/12, height/4 - 20, height/10, height/10);
    rect(i * width/12, height/8 - 20 +height/4, height/10, height/10);
    
    rect(i * width/12, height - (height/4 + height/10), height/10, height/10);
    rect(i * width/12, height - (height/4 + height/10 + height/8), height/10, height/10);
      
  }
  

  
  
  
}
