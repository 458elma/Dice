
		
void setup()
{
	size(400,400);
	noLoop();
	
	
	
	
}
void draw()
{
	//your code here
	background(0,0,0);
	for(int i = 0;i < 400;i += 51) {
		for(int j = 50;j < 400; j += 51) {
			Die tree = new Die(i,j);
			tree.show();
		}
	}
	
	

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int theX, theY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		theX = x;
		theY = y;

	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
		int dots = (int)(Math.random()*6+1);
		noStroke();
		fill(255,0,0);
		rect(theX,theY,50,50);
		if (dots == 1) {
			fill(255);
			ellipse(theX+25,theY+25,10,10);
		}
		if (dots == 2) {
			fill(255);
			ellipse(theX+10,theY+10,10,10);
			ellipse(theX+40,theY+40,10,10);
		}
		if (dots == 3) {
			fill(255);
			ellipse(theX+10,theY+10,10,10);
			ellipse(theX+25,theY+25,10,10);
			ellipse(theX+40,theY+40,10,10);
		}
		if (dots == 4) {
			fill(255);
			ellipse(theX+10,theY+10,10,10);
			ellipse(theX+40,theY+40,10,10);
			ellipse(theX+40,theY+10,10,10);
			ellipse(theX+10,theY+40,10,10);
		}
		if (dots == 5) {
			fill(255);
			ellipse(theX+10,theY+10,10,10);
			ellipse(theX+40,theY+40,10,10);
			ellipse(theX+40,theY+10,10,10);
			ellipse(theX+10,theY+40,10,10);
			ellipse(theX+25,theY+25,10,10);

		}
		if (dots == 6) {
			fill(255);
			ellipse(theX+10,theY+10,10,10);
			ellipse(theX+40,theY+40,10,10);
			ellipse(theX+40,theY+10,10,10);
			ellipse(theX+10,theY+40,10,10);
			ellipse(theX+10,theY+25,10,10);
			ellipse(theX+40,theY+25,10,10);
		}
	}
}
