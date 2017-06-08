 int birdX=100;
 int birdY=400;
 int pipeX=499;
 double birdYVelocity = 0;
 double gravity = 0.5;
 int random = 400;

void setup(){
  size(500,800);
}

void draw(){
 background(240, 240, 250); 
 fill(255, 45, 45);
ellipse(birdX, birdY, 20, 15);
fill(40,255,60);
rect(pipeX, 0, 100, random);
fill(255,255,60);
rect(pipeX, (random+200), 100, (800-(random+200)));
pipeX-=3;
if (pipeX<=-100){
 pipeX=499;
 random = (int) random(0, 600);
 print(", "+random);
}
if(birdY > random && birdY < (random+200)){
print("ok");
}
else{
 print("no"); 
}
}

void mousePressed(){
 birdYVelocity+=5;
}
