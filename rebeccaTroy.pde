void setup()
{
    size(500, 400);
    background(#000000);
    noCursor();
    
    fill(#cc99ff);
    noStroke();
    rect(10,150,480,100);
    
    fill(#ffffff);
    textAlign(CENTER);
    textSize(16);
    text("Press i to view the animation's instructions.", width/2, height/2.25);                            
    text("When ready, move the mouse over the screen to begin.", width/2, height/1.75);
  
    for(int i = 140; i <= 255; i = i + 115)
    {
      fill(#ffffff);
      rect(10, i, 480, 5);
    }
}

void draw()
{

}

void keyPressed()
{
  if (key == 'i' || key == 'I')                                                          // Ensuring the instruction isn't case sensitive
  {
    println("Hello, welcome to my first animation!");
    println("When the animation begins, a rocketship will appear on the screen. Click various mouse buttons to discover new planets as the rocket travels through space.");
  }
  else
  {
    println("That wasn't i!");
  }
}

void sky()
{
   background(#00004d);
  
  int x = 20;
  int y = 20;
  
  for (int i = 0; i <= 50; i = i + 3) 
    for (int r = 0; r <= 50; r = r + 3)                                                 // Necessary so that xCoordinates do not always equal yCoordinates (straight line would occur instead)
  {
    stroke(#ffffff);
    point(x*i, y*r);                                                                    // Even rows of stars
    point ((x*i) - 30, (y*r) - 30);                                                     // Odd rows of stars
  }
}
  

void rocket()
{
  stroke(#000000);
  strokeWeight(2);
  
  fill(#ff3300);
  rect(mouseX - 40, mouseY + 60, 30, 10);
  rect(mouseX - 40, mouseY + 60, 10, 40);
  
  rect(mouseX + 10, mouseY + 60, 30, 10);
  rect(mouseX + 30, mouseY + 60, 10, 40);
  
  fill(#cce6ff);
  rect(mouseX - 20, mouseY, 40, 100);
  
  fill(#ff3300);
  triangle(mouseX - 20, mouseY, mouseX, mouseY - 20, mouseX + 20, mouseY);
  
  fill(#3399ff);
  ellipse(mouseX, mouseY + 35, 30, 30);
  fill(#ffffff);
  ellipse(mouseX, mouseY + 35, 20, 20);
  
  fill(#ff3300);
  rect(mouseX - 20, mouseY + 90, 40, 10);
  
  fill(#ff6600);
  triangle(mouseX - 20, mouseY + 100, mouseX, mouseY + 145, mouseX + 20, mouseY + 100);
  fill(#ffcc00);
  triangle(mouseX - 20, mouseY + 100, mouseX, mouseY + 130, mouseX + 20, mouseY + 100);

  fill(#ff6600);
  triangle(mouseX - 20, mouseY + 100, mouseX - 40, mouseY + 130, mouseX + 10, mouseY + 100);
  fill(#ffcc00);
  triangle(mouseX - 20, mouseY + 100, mouseX - 25, mouseY + 115, mouseX, mouseY + 100);
  
  fill(#ff6600);
  triangle(mouseX + 20, mouseY + 100, mouseX + 40, mouseY + 130, mouseX - 10, mouseY + 100);
  fill(#ffcc00);
  triangle(mouseX + 20, mouseY + 100, mouseX + 25, mouseY + 115, mouseX, mouseY + 100);                
}

void mouseMoved()
{
  sky();
  rocket();
}

void moon()
{
    noStroke();                                                                              
    fill(#a6a6a6);
    ellipse(105,105,110,110);
    fill(#ffffff);
    ellipse(100, 100, 100, 100);
    
    fill(#cccccc);                                                                           
    ellipse(65, 85, 15, 15);
    ellipse(120, 80, 15, 15);
    ellipse(100, 140, 15, 15);
    ellipse(130, 130, 15, 15);
    ellipse(115, 110, 20, 20);
    ellipse(75, 115, 30, 30);
    ellipse(90, 85, 20, 20);
    ellipse(100, 60, 15, 15);
    ellipse(135, 95, 15, 15);                                                                // I chose not to do a loop here to give the moon crates a more scattered, uneven appearance - more work but still!
}

void saturn()
{
    noStroke();                                                                              
    fill(#ffc299);
    ellipse(375, 245, 270, 50);
    fill(#b34700);
    ellipse(375, 245, 250, 40);
    fill(#ffc299);
    ellipse(380, 245, 180, 20);
    fill(#803300);
    ellipse(380, 255, 160, 160);
    fill(#e65c00);
    ellipse(375, 250, 150, 150);
    fill(#ffc299);
    ellipse(375, 255, 240, 25);
    fill(#b34700);
    ellipse(375, 250, 240, 15);
}

void neptune(int y, int w)
{
    noStroke();                                                                              
    fill(#0039e6);
    ellipse(145, 310, 160, 160);
    fill(#3366ff);
    ellipse(140, 305, 150, 150);
    
    fill(#4d79ff);                                                                                          //Lighter areas of the planet
    ellipse(140, y, w, 40);
    ellipse(140, y + 55, w, 40);
    
    fill(#3366ff);
    ellipse(140, y - 5, w, 30);
    ellipse(140, y + 50, w, 30);
}  
    
void mouseClicked()
{
  if (mouseButton == LEFT)
  { 
    sky();
    
    moon();
    
    rocket();
  }
  
  else if (mouseButton == RIGHT)
  {
    sky();
    
    saturn();
    
    rocket();
  }
  
  else
  {
    sky();
    
    neptune(280, 135);
    
    rocket();
  }
}

void mouseDragged()
{
  sky();
  rocket();
  
  if (mouseButton == LEFT)
  { 
    sky();
    
    moon();
    
    rocket();
  }
  
  else if (mouseButton == RIGHT)
  {
    sky();
    
    saturn();
    
    rocket();
  }
  
  else
  {
    sky();
    
    neptune(280, 135);
    
    rocket();
  }
}
