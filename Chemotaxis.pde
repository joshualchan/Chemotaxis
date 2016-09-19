 //declare bacteria variables here   

 void setup()   
 {     
 	size(500,500);
 	frameRate(5);   
 }   


 void draw()   
 {    

 	background(0); 
 	Bacteria bob = new Bacteria(200,200);
 	bob.show();


 }  



void blackhole()
{
	fill(255);
	ellipse(mouseX, mouseY,50,50);
}


void mousePressed()
{
	blackhole();
}

 class Bacteria    
 {     
 	int myX, myY;

 	Bacteria (int x, int y)
 	{
 		myX = x;
 		myY = y;
 	}   


 	void show()
 	{
 		fill(255);
 		ellipse(myX,myY,10,10);
 		myX = myX+mouseX;
 		myY = myY + mouseY;
 		
 	}
 	
 }    