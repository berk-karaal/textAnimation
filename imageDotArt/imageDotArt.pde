PImage img;
void setup() {
  img = loadImage("photo.png");
  background(220);
  size(450, 230);    // set the same size as photo.png
}

int space = 15;

void draw() {
  stroke(0, 0, 40);  
  
  if (space >= 1) {
    background(220);
    for (int y = 0; y<=img.height; y+=space) {
      for (int x = 0; x<=img.width; x+=space) {
        if (img.get(x, y)==color(0, 0, 0))  ellipse(x, y, 15, 15);
      }
    }
    delay(400);
    saveFrame();
    if (space ==1) {
      space =0;
    } else  space --;
  }
}
