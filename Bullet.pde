class Bullet extends Floater{
	Bullet(Spaceship luke){
		myCenterX=luke.getX();
		myCenterY=luke.getY();
		myPointDirection=luke.getPointDirection();
		float dRadians = (float)(myPointDirection*(Math.PI/180));
		myDirectionX=5*Math.cos(dRadians)+luke.getDirectionX();
		myDirectionY=5*Math.sin(dRadians)+luke.getDirectionY();
	}
	public void show(){
		fill(255,255,255);
		noStroke();
		ellipse((float)myCenterX,(float)myCenterY,(float)10,(float)10);
	}
	 public void move ()   //move the floater in the current direction of travel
  {      
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
    if(myCenterX >width)
    {     
      george.remove(this);
    }    
    else if (myCenterX<0)
    {     
      george.remove(this);
    }    
    if(myCenterY >height)
    {    
       george.remove(this);
    } 
    
    else if (myCenterY < 0)
    {     
       george.remove(this);
    }   
  }
  public double getX(){
        return myCenterX;
    }
  public double getY(){
        return myCenterY;
    }   
}