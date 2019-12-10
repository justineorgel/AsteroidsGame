class Asteroid extends Floater {
	private int rotSpeed;
	public Asteroid(){
		rotSpeed=(int)(Math.random()*5)-2;
		corners=6;
		xCorners=new int[corners];
		yCorners=new int[corners];
		xCorners[0]=-11;
		yCorners[0]=-8;
		xCorners[1]=7;
		yCorners[1]=-8;
		xCorners[2]=13;
		yCorners[2]=0;
		xCorners[3]=6;
		yCorners[3]=10;
		xCorners[4]=-11;
		yCorners[4]=8;
		xCorners[5]=-5;
		yCorners[5]=0;
		myCenterX=(int)(Math.random()*400);
    	myCenterY=(int)(Math.random()*400);
    	myDirectionX=(int)(Math.random()*5)-2;
    	myDirectionY=(int)(Math.random()*5)-2;
	}
	public void move(){
		turn(rotSpeed);
		super.move();
	}
	public double getX(){
        return myCenterX;
    }
    public double getY(){
        return myCenterY;
    }
}
