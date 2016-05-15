public void setup()
{
	background(0);
	size(800,800);
	noFill();
	noLoop();
}
public void draw()
{
	background(0);
	fractal(0,0,800);
}
public void mousePressed() {
	redraw();
}
public void fractal(int x, int y, int len)
{
	rect(x,y,len, len);
	if(len > 10)
	{
		stroke(len * 198491329 % 256, len * 236887699 % 256, len * 413158523 % 256, (int)(Math.random() * len * 2));
		fractal(x,y,len/2);
		stroke(len * 198491329 % 256, len * 236887699 % 256, len * 413158523 % 256, (int)(Math.random() * len * 2));
		fractal(x+len/2,y,len/2);
		stroke(len * 198491329 % 256, len * 236887699 % 256, len * 413158523 % 256, (int)(Math.random() * len * 2));
		fractal(x+len/2,y+len/2,len/2);
		stroke(len * 198491329 % 256, len * 236887699 % 256, len * 413158523 % 256, (int)(Math.random() * len * 2));
		fractal(x,y+len/2,len/2);
	}
}