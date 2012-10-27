/**
 * Random. 
 * 
 * Random numbers create the basis of this image. 
 * Each time the program is loaded the result is different. 
 */

int e = 16 ;

void setup()
{
size(512, 512);
smooth();
background(0);
strokeWeight(7);
}

void draw() 
{
for(int i = 0; i < width; i=i+e) {
    int minr, maxr, mins, maxs;
    if (mouseX<50) {
      minr=0; 
    } else {
      minr=mouseX-50;
    }
    if (mouseX>462) {
      maxr=512; 
    } else {
      maxr=mouseX+50;
    }

    if (mouseY<50) {
      mins=0; 
    } else {
      mins=mouseY-50;
    }
    if (mouseY>462) {
      maxs=512; 
    } else {
      maxs=mouseY+50;
    }
    
    
    
    int r = int(random(minr,maxr)/2);
    int s = int(random(mins,maxs)/2);  
  float t = random(255);
  float x = random(0, width);
  stroke(r, s, t, 90);
  line(i, 0, x, height);
}

for(int i = 0; i < height; i=i+e) {
  float r = random(255);
  float s = random(255);
  float t = random(255);
  float y = random(0, height);
  stroke(r, s, t, 20);
  line(0, i, width, y);
}
}
