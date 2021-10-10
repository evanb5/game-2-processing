/*
  Description: Processing Assignment Two - 
  Author: Evan Bai
  Date of last edit: November 27, 2019
*/
float player;
float playerX;
float playerY;
float playerBlockUp;
float playerBlockDown;
float playerBlockRight;
float playerBlockLeft;
float dodgeballUpX;
float dodgeballUpY;
float dodgeballDownX;
float dodgeballDownY;
float dodgeballRight;
float dodgeballLeft;
float gameOver;
void settings() {
  size(600, 600);
}

void setup() {
player=275;
//playerY=275;
dodgeballUpX=300;
dodgeballUpY=0;
dodgeballDownX=300;
dodgeballDownY=600;
gameOver=600;
}

void draw() {
background(1);

//player
rect(player,player,50,50);
  ellipse(dodgeballUpX,dodgeballUpY,30,30);
dodgeballUpY+=5;
    rect(gameOver,0,600,600);
      if (dodgeballUpY>=300){
    gameOver=0;
      }
//player blocking up
  if (keyPressed){
    if (key=='w' || key=='W'){
      noStroke();
  rect(player,250,40,40);
if (dodgeballUpY==280){
  dodgeballUpY=-500;
}
    }
ellipse (dodgeballDownX,dodgeballDownY+100,30,30);
dodgeballDownY-=5;
if (keyPressed){
  if (key=='s' || key=='S'){
    rect (player,300,40,40);
    if (dodgeballDownX==290){
      dodgeballUpY=600;
  }
  
  }
}
  }
}