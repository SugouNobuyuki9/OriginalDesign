void setup()
{
	size(300,300);
	background(0);
	noLoop();
}

void draw()
{
	fill(120);
	noStroke();

	for(int r = 45; r<=245; r+=50)
	{
		rect(0, r, 300, 10);
	}

	for(int c = 45; c<=245; c+=50)
	{
		rect(c, 0, 10, 300);
	}

	fill(235);
	for(int y = 50; y<=250; y+=50){
		for(int x = 50; x<=250; x+=50){
			ellipse(x, y, 15, 15);
		}
	}


}
