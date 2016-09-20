 //declare bacteria variables here   
 Bacteria [] bob;
 boolean toMove= false;

 void setup()   
 {     
 	size(500,500);
 	frameRate(5);   

 	bob = new Bacteria[200];
 	for(int i = 0; i<bob.length; i++)
 	{
 		bob[i] = new Bacteria(0,0);
 	}
 	
 }   


 void draw()   
 {    

 	background(0); 

 	for(int i = 0; i<bob.length; i++)
 	{
 		bob[i].show();
 		if(toMove == true)
 		{
 			bob[i].move();
 		}
 	
 	}
 		

 	
 	blackhole();

 }  
int a = 250;
int b = 250;


void mousePressed()
{
	toMove = true;

}
void blackhole()
{
	fill(255);
	ellipse(a, b,50,50);
}


 class Bacteria    
 {     
 	int myX, myY;

 	Bacteria (int x, int y)
 	{
 		myX = (int)(Math.random()*501);
 		myY = (int)(Math.random()*501);
 	}   


 	void show()
 	{
 		fill(255);
 		ellipse(myX,myY,10,10);
 		
 		
 	}
 	void move()
 	{
 		if(myX < a)
 		{
 			myX ++;
 		}
 		
 		else
 		{
 			myX--;
 		}
 		if(myY<a)
 		{
 			myY++;
 		}
 		
 		else 
 		{
 			myY--;
 		}
 	}



 }    