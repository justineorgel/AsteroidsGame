Spaceship bob=new Spaceship();
Star[]sky=new Star[200];
ArrayList <Asteroid> fred=new ArrayList <Asteroid>();
ArrayList <Bullet> george=new ArrayList <Bullet>();
public void setup() 
{
  size(500,500);
  for(int i=0;i<sky.length;i++){
  	sky[i]=new Star();
  }
  for(int i=0;i<10;i++){
  	fred.add(new Asteroid());
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
  for(int i=0;i<fred.size();i++){
  	fred.get(i).show();
  	fred.get(i).move();
  	float crash=dist((float)bob.getX(),(float)bob.getY(),(float)fred.get(i).getX(),(float)fred.get(i).getY());
  	if(crash<10){
  		fred.remove(i);
  	}
  }
  for(int i=0;i<george.size();i++){
  	george.get(i).show();
  	george.get(i).move();
  }
  for(int i=0;i<george.size();i++){
  	for(int j=0;j<fred.size();j++){
  		float shot=dist((float)george.get(i).getX(),(float)george.get(i).getY(),(float)fred.get(j).getX(),(float)fred.get(j).getY());
  		if(shot<10){
  			fred.remove(j);
  			george.remove(i);
 			break;
  		}
  	}
  }
}

public void keyPressed()
{
	if(keyCode==UP){
		bob.accelerate(.2);
	}
	if(key=='h'){
		bob.setCenterX((int)(Math.random()*500));
		bob.setCenterY((int)(Math.random()*500));
		bob.setPointDirection((int)(Math.random()*360));
		bob.setDirectionX(0);
		bob.setDirectionY(0);
	}
	if(keyCode==LEFT){
		bob.turn(-6);
	}
	if(keyCode==RIGHT){
		bob.turn(6);
	}
	if(key==' '){
		george.add(new Bullet(bob));
	}
}

