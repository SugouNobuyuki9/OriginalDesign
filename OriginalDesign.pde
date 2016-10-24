PImage backImg = loadImage("http://i.imgur.com/cXaR0vS.png");
PImage birdImg = loadImage("http://i.imgur.com/U5PYwXr.png"); //"http://i.imgur.com/mw0ai3K.png"
PImage wallImg = loadImage("http://i.imgur.com/4SUsUuc.png");
PImage startImg = loadImage("http://i.imgur.com/U6KEwxe.png");
int gamestate = 0;
int x = -200, y, Vy = 1;

void setup() {
  size(600, 800); 
  frameRate(30);
} 

void draw(){
  if(gamestate == 0){
    imageMode(CORNER);
    image(backImg, x, 0);
    image(backImg, x+backImg.width, 0);
    scale(0.3);
    image(birdImg, width/2, y);
    scale(10/0.3);
    x-=6;
    Vy += 2*3;
    y += Vy;
  } 
  else {
    imageMode(CENTER);
    image(startImg, width, height/2); 
  }
}

void mousePressed(){
  Vy = -15*3; 
}
