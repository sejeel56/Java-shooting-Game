PImage background; //loads background
int game = 0;
int Running = 0;
int score = 0;
int over = 1;
//Attacker attacker1, attacker2, attacker3, attacker4, attacker5, attacker6;
Attacker[] attackers = new Attacker[6]; // Arraylist
Player player; // Player name
void setup()
{
  size(1100,800); // screen size
  
  attackers[0] = new Attacker(10,700,1);
  attackers[1] = new Attacker(100,500,1);
  attackers[2] = new Attacker(300,600,1);
  attackers[3] = new Attacker(500,1300,1);
  attackers[4] = new Attacker(700,1000,1);
  attackers[5] = new Attacker(900,800,1);
  background = loadImage("castleimg.png"); // loads background
  background.resize(width,height); // background resize
  player = new Player(100, 600, 10); // player positioning
  
  for( int i=0; i < attackers.length; i++) // Array loop
  {
   int x = (int) random(width-100);
   int y = (int) random(900);
   int speedY = 2;
   
   attackers[i] = new Attacker(x, y, speedY);
  }
  
  
  
}
void draw () // this will execute the function
{
  if (game == Running) //if statement for when game is running 
  {
  drawBackground();
  //attacker1.update();
  //attacker2.update();
  //attacker3.update();
  //attacker4.update();
  //attacker5.update();
  //attacker6.update();
  player.draw();
for (Attacker a : attackers){
  a.draw();
  a.move();
    
  }
  
  
  if (player.crash(attackers[0])) //When defender crashes into an alien
    {
      game = over; //Game will stop here if the crash happens
      attackers[0].end(); // this attacker will stop
      endGame(); // game over will appear
    }
    if (player.crash(attackers[1])) //When defender crashes into an alien
    {
      game = over; //Game will stop here if the crash happens
      attackers[1].end();
      endGame();
    }
    if (player.crash(attackers[2])) //When defender crashes into an alien
    {
      game = over; //Game will stop here if the crash happens
      attackers[2].end();
      endGame();
    }
    if (player.crash(attackers[3])) //When defender crashes into an alien
    {
      game = over; //Game will stop here if the crash happens
      attackers[3].end(); 
      endGame();
    }
    if (player.crash(attackers[4])) //When defender crashes into an alien
    {
      game = over; //Game will stop here if the crash happens
      attackers[4].end();
      endGame();
    }
    if (player.crash(attackers[5])) //When defender crashes into an alien
    {
      game = over; //Game will stop here if the crash happens
      attackers[5].end();
      endGame();
    }
    
    if (game == over)
  {
    
  }
}
}
void drawBackground()
{
  image(background, 0, 0); //background appears
  image(background, 0+background.height, width);
}


void endGame() // Game over

{

clear();
  text("Game Over, You Lose!" ,450,400);
  
}


void keyReleased(){ // when keys are released the player should remain still
  playerXD=0;
  playerYD=0;
  
}
void keyPressed(){ // Making the player move with arrows
  if(keyCode == RIGHT) {
  playerXD=5;
} else if(keyCode == LEFT) {
playerXD=-5;
} else if(key == ' '){
  lazerSPD=+30;
}



}
