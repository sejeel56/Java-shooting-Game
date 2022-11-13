class Attacker
{
  //members?
 int aX, aY;
 int speedX = 2;
 int speedY = 2;
 int animationcounter = 0; //animation
 PImage img1, img2, img3;
  
 //constructor - load images
 Attacker(int aX, int aY, int speedY)
 {
   
   this.aX = aX;
   this.aY = aY;
   //this.speedX = speedY; 
   this.speedY = speedY;
   img1 = loadImage("climber.1.png");//loads images
   img2 = loadImage("climber.2.png");
   img3 = loadImage("climber.3.png");
 }
 
 
 void end() {
   speedY = 0;

 }
 
 void draw()
 {
   //cycle through images, and back to image1
   
   if (animationcounter >0 & animationcounter <=8)
    { image(img1,this.aX,this.aY); }
     else if (animationcounter >8 & animationcounter <=16)
    {image(img2,this.aX,this.aY);  }
    else if (animationcounter >16 & animationcounter <=24)
    { image(img3,this.aX,this.aY); }
    
    
    animationcounter = animationcounter+1;
    if (animationcounter>24)
      animationcounter = 0;
 }
 
 
 
 
 void update () //refactor
{
  draw();
  move();
}

 
 
 void move()
{
   this.aY = this.aY - speedY;

   //image goes above the screen
   if (this.aY < 0 - img1.height) //subtract the image height so the image completely disappears before it moves down
     this.aY = height + img1.height;
   //image goes below the screen
   if (this.aY > height + img1.height)
     this.aY = -img1.height;
 }
 
 
 boolean edge()
{
  return aX <= 0;
}
 
}
 
