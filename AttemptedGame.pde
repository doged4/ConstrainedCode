Player meplayer = new Player(200.0,200.0,0.0,0.0);
//ThingCreated thing = new ThingCreated(meplayer.x, meplayer.y);
ArrayList<ThingCreated> thingList = new ArrayList<ThingCreated>();
ArrayList<ThingCreated> deleteGroup = new ArrayList<ThingCreated>();

void setup(){
  size(600,600);
  System.out.println("INIT");
};
void draw(){
  background(0,0,0);
  for(ThingCreated thing : thingList){
    thing.display();
    thing.update();
     if (thing.y < -20){
       deleteGroup.add(thing);
      }
  }
    for (ThingCreated toDelete : deleteGroup) {
      thingList.remove(toDelete);
    }
    deleteGroup.removeAll(deleteGroup);

 // System.out.println( str(meplayer.xspeed) +", " + str(meplayer.yspeed) );\
 
 
 
 meplayer.update();
  meplayer.display();
  meplayer.yspeed = meplayer.yspeed * .95;
  meplayer.xspeed = meplayer.xspeed * .95;
  if (sqrt(meplayer.yspeed * meplayer.yspeed) < .1){
  meplayer.yspeed = 0;
  }
  if (sqrt(meplayer.xspeed * meplayer.xspeed) < .1){
  meplayer.xspeed = 0;
  }
}

int speed = 5;

void keyPressed(){
  if (key == 'w'){
    meplayer.yspeed = -speed;
    System.out.println("W Pressed");
  };
  if (key == 'a'){
    meplayer.xspeed = -speed;
    System.out.println("A Pressed");
  };
  if (key == 's'){
    meplayer.yspeed = speed;
    System.out.println("S pressed");
  };
  if (key == 'd'){
    System.out.println("D Pressed");
    meplayer.xspeed = speed;
  };
  if (key == 'm'){
    thingList.add(new ThingCreated(meplayer.x + 8, meplayer.y));
  }
};