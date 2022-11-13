int playerX = 600, playerY = 280;
int playerXD = 0, playerYD = 0;
int lazerX = playerX, lazerY = playerY, lazerSPD = 0;
PImage defender;
class Player
{
  int playerX = 600;
  int playerY = 280;
  int speedX, speedY;
  int lazerX, lazerY;
  int x, y;

Player(int playerX, int playerY, int speedX)
 {
   
   this.playerX = 455;
   this.playerY = 160;
   this.speedX = speedX; 
   defender = loadImage ("loki2.png");
 }
 
 void draw() {
  image(defender, playerX, playerY, 160, 160);
  fill(0,255,0);
  ellipse(lazerX, lazerY+300, 30, 30 );
   playerX+=playerXD;
  playerY+=playerYD;
  lazerX=playerX+35;
  lazerY+=lazerSPD;
  if(lazerY > 800){
    lazerX=playerX;
    lazerY=playerY-160;
    lazerSPD=0;
  }
  
  
 }
 
 
 boolean crash(Attacker other)
  {
    return (abs(this.playerX-other.aX) <50 && abs(this.playerY-other.aY) < 50);
  }
 
 
 
}
