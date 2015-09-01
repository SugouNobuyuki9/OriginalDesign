// Move mouse around to draw spheres
// Click to grow spheres
// They pop when they become too large

int sphereSize = 28;

void setup(){
	size(200,200, OPENGL);
	frameRate(16);
	background(30,30,75);
}

void draw(){
	noStroke();
	lights();
	translate(mouseX, mouseY, 0);
	fill(mouseX,mouseY, (int)(Math.random()*255), 99);
	
	sphere(sphereSize);

	if(sphereSize > 76){
		sphereSize = 27;
		background(30,30,75);
	}
}

void mousePressed(){
	sphereSize += 3;
}