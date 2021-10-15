//Asteroids
boolean up, down, left, right, space = false;
Ship myShip;
ArrayList <GameObject> g;
int asteroidNum = 5;
final int intro = 0;
final int game = 1;
final int gameOver = 2;
int i = 0;
int mode = 0;


void setup() {

  size (800, 600);
  myShip = new Ship();
  imageMode(CENTER);
  g = new ArrayList<GameObject>();
  g.add(myShip);
  for (int i = 1; i <= asteroidNum; i++) {
    g.add(new Asteroids());
  }

  gifFrames = new PImage [22];
  for (int i = 0; i < 22; i++) {
    if (i < 10) gifFrames [i] = loadImage("frame_0" + i + "_delay-0.01s.gif");
    else gifFrames [i] = loadImage("frame_" + i + "_delay-0.01s.gif");
  }
}

void draw() {

  if (mode == intro) {
    loadIntro();
    
  } else if (mode == game) {

    background(0);
    i++;
    if (i == 600) {
      i = 0;
      g.add(new UFO());
    }

    for (int i = 0; i < g.size(); i++) {

      GameObject obj = g.get(i);
      obj.act();
      obj.show();

      if (obj.lives <= 0) g.remove(i);
    }
    myShip.show();
  }
}
