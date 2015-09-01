// Move mouse around to draw spheres
// Click to grow spheres
// They pop when they become too large

int size = 28;

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
	
	sphere(size);

	if(size > 76){
		size = 27;
		background(30,30,75);
	}
}

void mousePressed(){
	size += 3;
}