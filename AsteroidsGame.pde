Spaceship bob=new Spaceship();
Star[]sky=new Star[200];
public void setup() 
{
  size(500,500);
  for(int i=0;i<sky.length;i++){
  	sky[i]=new Star();
  }
}
public void draw() 
{
  background(56, 93, 117);
  for(int i=0;i<sky.length;i++){
  	noStroke();
  	sky[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed()
{
	if(keyCode==UP){
		bob.accelerate(.3);
	}
	if(key=='h'){
		bob.setCenterX((int)(Math.random()*500));
		bob.setCenterY((int)(Math.random()*500));
		bob.setPointDirection((int)(Math.random()*360));
		bob.setDirectionX(0);
		bob.setDirectionY(0);
	}
	if(keyCode==LEFT){
		bob.turn(-5);
	}
	if(keyCode==RIGHT){
		bob.turn(5);
	}
}

