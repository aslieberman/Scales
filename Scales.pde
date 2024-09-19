void setup(){
  size(600,600);
  //background(#A3BBAD);
  background(#000000);
}

void draw(){
  
  for(int y = 0; y <= 600; y +=40){
    for(int x = 0; x <= 600; x +=40){
      smiley(x,y);
    }
    
  }
}

void smiley(int x,int y){
noStroke();

//head
double randomNum = Math.random(); 

int headColor;

if(randomNum < .25)

   headColor = color(#FFD700);

else if(randomNum >= .25 && randomNum < .5)
   headColor = color(0,200,180);

else if(randomNum >= .5 && randomNum < .75)

   headColor = color(255,255,0);

else if(randomNum >= .75)

   headColor = color(#87CEEB);   
else
  headColor = color(255,255,0);

fill(headColor);
//quad(x, y, x+50, y, x+40, y+50, x-10, y+50);
ellipse(x,y,50,50);

frameRate(.5);
}
