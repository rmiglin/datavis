//Fish code
Fish nemo;
ArrayList<Fish> fishes;
int numEnemies, dir;

//Background code
bubble Bubble;
fishing_line Fishing_Line;
seaweed Seaweed; 
rocks Rocks;
coral Coral; 
other_plants Other_Plants;
hook Hook;
submarine Submarine;

void setup(){
  size(1000, 800);
  
  //Fish code
  fishes = new ArrayList<Fish>();
  numEnemies = 2;
  enemyArray();
  
  //Background code
  Fishing_Line = new fishing_line(width/2 - 400, height/2 - 415);
  Seaweed = new seaweed(-5, width);
  Hook = new hook(width/2 - 407, height/2 - 215);
  Submarine = new submarine(width/2 - 450, height/2 - 375); 
}

void draw(){

   //Background code
  background(90, 165, 255);
  backgroundAnimation();
  enemyDisplay();

}

void enemyArray(){
  for (int i=0; i <numEnemies; i++) {
    int type = int(random(1,18));
    fishes.add(new Fish("fish_", type));
  }
}

void enemyDisplay(){
  for (int i=0; i < numEnemies; i++) {
    Fish enemy = fishes.get(i);
    enemy.display();
  }
  
  if (random(300) < 1){
    int type = int(random(1,7));
    fishes.add(new Fish("fish_", type));
    numEnemies += 1;
  }
}

void backgroundAnimation(){
  
  //Middle Bubbles
  Bubble = new bubble(width/2, height/2, 15, 15);
  Bubble.animate();
  Bubble = new bubble(width/2 + 100, height/2 + 100, 15, 15);
  Bubble.animate();
  Bubble = new bubble(width/2 + 150, height/2 - 100, 15, 15);
  Bubble.animate();
  Bubble = new bubble(width/2 + 100, height/2 - 150, 15, 15);
  Bubble.animate();  
  
  //Left Bubbles
  Bubble = new bubble(width/2 - 400, height/2 + 50, 15, 15);
  Bubble.animate();
  Bubble = new bubble(width/2 - 450, height/2 + 200, 15, 15);
  Bubble.animate();
  Bubble = new bubble(width/2 - 200, height/2 + 250, 15, 15);
  Bubble.animate();
  Bubble = new bubble(width/2 - 300, height/2 + 350, 15, 15);
  Bubble.animate(); 
  
  //Right Bubbles
  Bubble = new bubble(width/2 + 250, height/2 + 250, 15, 15);
  Bubble.animate();
  Bubble = new bubble(width/2 + 350, height/2 + 125, 15, 15);
  Bubble.animate();
  Bubble = new bubble(width/2 + 450, height/2 + 100, 15, 15);
  Bubble.animate();
  Bubble = new bubble(width/2 + 400, height/2 + 400, 15, 15);
  Bubble.animate();  
  
  Fishing_Line.animate(); 
  Seaweed.display();
  Seaweed.animate();
  
  //Middle Rocks
  Rocks = new rocks(width/2, height/2 + 280, 25, 15);
  Rocks.animate();
  Rocks = new rocks(width/2 + 100, height/2 + 300, 25, 15);
  Rocks.animate();
  Rocks = new rocks(width/2 - 75, height/2 + 300, 25, 15);
  Rocks.animate();
  Rocks = new rocks(width/2 - 200, height/2 + 275, 25, 15);
  Rocks.animate();  
  
  //Left Rocks
  Rocks = new rocks(width/2, height/2 + 280, 25, 15);
  Rocks.animate();
  Rocks = new rocks(width/2 - 300, height/2 + 300, 25, 15);
  Rocks.animate();
  Rocks = new rocks(width/2 - 375, height/2 + 300, 25, 15);
  Rocks.animate();
  Rocks = new rocks(width/2 - 425, height/2 + 310, 25, 15);
  Rocks.animate(); 
  
  //Right Rocks
  Rocks = new rocks(width/2 + 200, height/2 + 280, 25, 15);
  Rocks.animate();
  Rocks = new rocks(width/2 + 300, height/2 + 300, 25, 15);
  Rocks.animate();
  Rocks = new rocks(width/2 + 375, height/2 + 300, 25, 15);
  Rocks.animate();
  Rocks = new rocks(width/2 + 425, height/2 + 310, 25, 15);
  Rocks.animate(); 
  
  //Coral
  Coral = new coral(width/2, height/2 + 200);
  Coral.animate();
  Coral = new coral(width/2 - 200, height/2 + 250);
  Coral.animate();
  Coral = new coral(width/2 - 400, height/2 + 200);
  Coral.animate();
  Coral = new coral(width/2 + 400, height/2 + 200);
  Coral.animate();
  Coral = new coral(width/2 + 175, height/2 + 200);
  Coral.animate();
  
  //Other Plants
  Other_Plants = new other_plants(width/2 - 100, height/2 + 200);
  Other_Plants.animate();
  Other_Plants = new other_plants(width/2 - 300, height/2 + 250);
  Other_Plants.animate();
  Other_Plants = new other_plants(width/2 - 430, height/2 + 225);
  Other_Plants.animate();
  Other_Plants = new other_plants(width/2 + 150, height/2 + 250);
  Other_Plants.animate();
  Other_Plants = new other_plants(width/2 + 275, height/2 + 200);
  Other_Plants.animate();
  
  Hook.animate(); 
  Submarine.animate(); 
}