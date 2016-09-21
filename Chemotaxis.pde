 //declare bacteria variables here   
 Bacteria [] bob;
 boolean toMove= false;

 void setup()   
 {     
 	size(500,500);
 	frameRate(10);   

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
void blackhole()
{
	fill(255,255,255,75);
	ellipse(a, b,50,50);
}


void mousePressed()
{
	if(mouseButton ==LEFT ){
		toMove = true;
		blackhole();
	}

	

	if(mouseButton == RIGHT){
		toMove = false;
		setup();
	}
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
 		fill((int)(Math.random()*256));
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