PImage img, img2,img3, img4,img5, img6, img7 ;
float x = 200;
float y = 300;
float xspeed = 5.3;
float yspeed = 5;
String current_c = "blue"; 
int r = 255;
int back = 0;
String[] colours = { "blue", "green", "magenta", "orange", "purple", "red", "yellow" };

String random_color(){
  int index = int(random(colours.length));  // Same as int(random(4))
  index = int(random(colours.length));
  return colours[index];
}

String change_color(String c){
  int index = int(random(colours.length));  // Same as int(random(4))
  
  
  while (colours[index] == c){
  index = int(random(colours.length));
  }  // Prints one of the four words
  
  return colours[index];
  
}

void setup(){
  size(800,800);
  img = loadImage(current_c+".png");
}



void draw(){
  
  background(0); // Clear the background each frame
  x = x + xspeed;
  y = y + yspeed;
  
  // Check for boundary collisions
  if (x > width-100 || x < 0) {
    current_c = change_color(current_c);
    img = loadImage(current_c+".png");
    xspeed += random(-0.5, 0.5); // Add a random change to speed
    xspeed = -1 * xspeed;
    background(0);
    //fill(r,r,r);
    //ellipse(x, y, 50, 50);
    
    image(img,x, y);
  }
  
  if (y > height-50 || y < 0) {
    current_c = change_color(current_c);
    img = loadImage(current_c+".png");
    yspeed += random(-0.5, 0.5); // Add a random change to speed    
    yspeed = -1 * yspeed;
    background(0);
    //fill(r,r,r);
    //ellipse(x, y, 50, 50);
    image(img,x, y);
  }
  
  //ellipse(x, y, 50, 50);
  image(img,x, y);
  println(xspeed,yspeed, r);
}
