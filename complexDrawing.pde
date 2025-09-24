
void setup() {
  size (600,600);
  drawSea();
  drawCloud(60,30);
  drawCloud(340,60);
  drawLightning(130,150);
  drawLightning(400,180);
}

void drawSea() {
  int scale = 3;
  for (int i = 0; i < 650; i += 20 * scale) {
    drawWave(i,500,scale);
  }
  fill(100,100,250);
  rect(0,503,3000,150);
}

void drawLightning(int x, int y) {
  fill(255,255,0);
  triangle(x + 20, y + 100, x + 40, y, x, y + 100);
  //rect (x + 10,y + 95, 20, 10);
  x += 20;
  y += 90;
  triangle(x, y, x - 10, y + 100, x + 20, y);
}

void drawCloud(int x, int y) {
  noStroke();
  fill(210,220,250);
  
  ellipse(x      ,y + 50 ,75 ,50);
  
  ellipse(x + 25 ,y + 25 ,75 ,50);
  ellipse(x + 25 ,y + 75 ,75 ,50);
  
  ellipse(x + 75 ,y      ,75 ,50);
  ellipse(x + 75 ,y + 100,75 ,50);
  
  ellipse(x + 125,y      ,75 ,50);
  ellipse(x + 125,y + 100,75 ,50);
  
  ellipse(x + 175,y + 25 ,75 ,50);
  ellipse(x + 175,y + 75 ,75 ,50);
  
  ellipse(x + 200,y + 50 ,75 ,50);
  
  ellipse(x + 100,y + 50 ,200 ,75);
  
  
}


void drawWave2(int x, int y) {
  strokeWeight(4);
  point(x + 150, y + 50);
  point(x + 250, y + 60);
  point(x + 300, y + 200);
  strokeWeight(1);
  beginShape();
  curveVertex(x + 0, y + 300);
  curveVertex(x + 100, y + 200);
  curveVertex(x + 150, y + 50);
  curveVertex(x + 200, y + 60);
  curveVertex(x + 225, y + 100);
  curveVertex(x + 250, y + 150);
  curveVertex(x + 200, y + 150);
  curveVertex(x + 200, y + 200);
  curveVertex(x + 300, y + 200);
  endShape();
  
  
  
  //beginShape();
  //curveVertex(x + 100,y + 100);
  //curveVertex(x + 200,y + 200);
  //endShape();
}

void drawWave(int x, int y, int scale) {
  noStroke();
  fill(100,100,250);
  ellipse(x , y, 20 * scale, 20 * scale);
  fill(200,200,200);
  ellipse(x + 8 * scale, y + 2 * scale, 13 * scale, 13 * scale);
}

/*
void drawWave(int x, int y) {
  fill(0,0,255);
  beginShape();
  curveVertex(100,100);
  circle(100,100,50);
  beginContour();
  circle(120,120,50);
  endContour();
  endShape();
}
*/
