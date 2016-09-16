 //declare bacteria variables here   
 Bacteria bob = new Bacteria(mouseX,mouseY);
 void setup()   
 {     
 	size(500,500);   
 }   


 void draw()   
 {    

 	background(0); 
 	bob.show();

 }  




 class Bacteria    
 {     
 	int myX, myY;

 	Bacteria (int mouseX, int mouseY)
 	{
 		myX = mouseX;
 		myY = mouseY;
 	}   


 	void show()
 	{
 		fill(255);
 		ellipse(myX,myY,10,10);
 		
 	}
 	
 }    