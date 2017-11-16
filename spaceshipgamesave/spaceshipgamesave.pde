SpaceShip spaceShip = new SpaceShip(250, 100);
ArrayList<Projectile> projectile = new ArrayList<Projectile>();
float lastYspeed = 1;
float nextProjectileSpeed;
void setup() {
  size(500, 500);
  background(0, 0, 0);

}

void draw() {
        background(0,0,0);
        spaceShip.update();
        spaceShip.display();
        for(Projectile projectiles: projectile) {
        projectiles.update();
        projectiles.display();
        }
        if(spaceShip.ySpeed != 0){
        lastYspeed = spaceShip.ySpeed;
        }
}

public void keyPressed() {
  spaceShip.spaceShipKeyPress();
  if (keyCode == SHIFT) {
    if (spaceShip.ySpeed == 0) {
    projectile.add(new Projectile_Good(spaceShip.x, spaceShip.y, (lastYspeed/abs(lastYspeed))*5));
    }
    else {
    projectile.add(new Projectile_Good(spaceShip.x, spaceShip.y, (spaceShip.ySpeed/abs(spaceShip.ySpeed))*5));
    }
  }
}

public void keyReleased() {
  spaceShip.spaceShipKeyRelease();
}

public void badProjectile() {


}