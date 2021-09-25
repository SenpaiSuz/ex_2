PImage jason;
PImage woods;
PImage wolf;
PImage dragon;
PImage monster;
float x;
float y;
float speedX = 5;

Bubble b1;
Bubble b2;

void setup() {
  size(800, 600);
  dragon = loadImage("dragon.png");
  jason = loadImage("jason.png");
  woods = loadImage("woods2.png");
  wolf = loadImage("wolf.png");
  monster = loadImage("monster.png");
  x = width/1.5;
  y = height/1.5;
  imageMode(CENTER);
  b1 = new Bubble(200, 300, 128);
  b2 = new Bubble(400, 300, 64);
}

void draw() {
  background(woods);
  
  x += speedX;
  if (x > width || x < 0) {
    speedX *= -1;
  }
  
  image(monster, 150, 450);
  image(wolf, x, y, wolf.width * (height / wolf.height), height);
  image(jason, x, y, jason.width * (height / jason.height), height);
  
  b1.ascend();
  b1.display();
  b1.top();
  
  b2.ascend();
  b2.display();
  b2.top();
}
