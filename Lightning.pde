//IMMA FIRIN MY LAZER
int startX = 0, startY = 150, endX = 0, endY = 150;
void setup()
{
  size(300,300);
  strokeWeight(10);
  background(255);
}
void draw()
{
  fill(0);
  stroke(0);
  ellipse(40,150, 100,100);
  fill(255);
  ellipse(20, 120, 40, 40);
  ellipse(70,115, 40,40);
  fill(0);
  ellipse(20, 120, 5, 5);
  ellipse(70,115, 5,5);
  fill(255,0,0);
  ellipse(50,160,50,50);
}
void mousePressed()
{
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  while(endX <= 300){
    endY = endY + (int)((Math.random() * 20) - 10);
    endX = endX + (int)((Math.random() * 10)- 1);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  if(endX > 290){
    startX = 0;
    startY = 150;
    endX = 0;
    endY = 150;
  }
}
