class Particle{
  double myX,myY,myAngle,myColor;
  int mySpeed;
  Particle(){
    myX = 300;
    myY = 300;
    mySpeed = (int)(Math.random()*16)+1;
    myAngle = (Math.random()*2*Math.PI);
    myColor = color((int)(Math.random()*255)+60,0,(int)(Math.random()*255)+60);
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
    if(myX > 580 || myX < 20)
      myX = myX - Math.cos(myAngle)*mySpeed;
    if(myY > 580 || myY < 20)
      myY = myY - Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill((int)myColor);
    ellipse((float)myX,(float)myY,10,10);
  }
}

Particle[] parts = new Particle[700];

void setup(){
  frameRate(40);
  background(50,50,50);
  noStroke();
  size(600,600);
  for(int i = 0; i < parts.length; i++)
    parts[i] = new Particle();
  for(int i = 0; i <5; i++)
    parts[i] = new light();
}

void draw(){
  fill(50,50,50,20);
  rect(0,0,600,600);
  for(int i = 0;i < parts.length; i ++){
    parts[i].move();
    parts[i].show();
  }
}


class light extends Particle{
  light(){
    myX = 300;
    myY = 300;
    mySpeed = (int)(Math.random()*5)+3;
    myAngle = (Math.random()*2*Math.PI);
    myColor = color((int)(Math.random()*100)+30,(int)(Math.random()*156)+100,0);
  }
  void show(){
    fill((int)myColor);
    ellipse((float)myX,(float)myY,20,20);
  }
  void move(){
    myX = myX + Math.sin(myAngle)/mySpeed + (int)(Math.random()*3)-1;
    myY = myY + Math.cos(myAngle)/mySpeed + (int)(Math.random()*3)-1;
    if(myX > 580 || myX < 20)
      myX = myX - Math.sin(myAngle)*mySpeed;
    if(myY > 580 || myY < 20)
      myY = myY - Math.cos(myAngle)*mySpeed;
  }
}
