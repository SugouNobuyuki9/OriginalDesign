import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalDesign extends PApplet {

// Move mouse around to draw spheres
// Click to grow spheres
// They pop when they become too large

int size = 28;

public void setup(){
	size(200,200, OPENGL);
	frameRate(16);
	background(30,30,75);
}

public void draw(){
	noStroke();
	lights();
	translate(mouseX, mouseY, 0);
	fill(mouseX,mouseY, (int)(Math.random()*255), 99);
	
	sphere(size);

	if(size > 76){
		size = 27;
		background(30,30,75);
	}
}

public void mousePressed(){
	size += 3;
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
