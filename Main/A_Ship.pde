class Ship extends GameObject {

  //instance variables
  PVector direction;
  int shotTimer, threshold, immunity = 0;

  Ship () {

    lives = 3;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector(0, -0.1);
    size = 40;
  }
  
    
  public boolean immune() {
  
    if (immunity >= 120) return false;
    else return true;
    
  }
  
  public void resetImmune() {immunity = 0;}
  
  void show() {
    
    stroke(255);
    if (immune()) fill (150);
    else fill(255);
    pushMatrix();
    translate(location.x, location.y);
    rotate (direction.heading());
    triangle (-25, -25, -25, 25, 25, 0);
    
    popMatrix();
  }

  void act() {
    super.act();

    shotTimer++;
    immunity++;

    if (up) {
      velocity.add(direction);
      g.add(new Fire());
    }
    if (down) velocity.sub(direction);
    if (left) direction.rotate (-radians (5));
    if (right) direction.rotate (radians (5));
    if (space && shotTimer >= threshold) {

      g.add(new Bullet());
      shotTimer = 0;
      threshold = 30;
    }
    
  }
}
