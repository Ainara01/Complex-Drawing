void setup() {
  size (600,600);
  noStroke();
  new Sea(500,2).draw();
  new Cloud(60,30).draw();
  new Cloud(340,30).draw();
  new Lightning(130,150).draw();
  new Lightning(400,180).draw();
}

class Sea {
  int y,scale;
  ArrayList<Wave> waves = new ArrayList();
  Sea(int y, int scale) {
    this.y = y;
    this.scale = scale;
    for (int i = 0; i < width + 50; i += 20 * scale) {
      waves.add(new Wave(i,y));
    }
  }
  void draw() {
  for (Wave wave : waves) {
    wave.draw();
  }
  fill(100,100,250);
  rect(0,503,3000,150);
  }
  class Wave {
    int x,y;
    Wave(int x, int y) {
      this.x = x;
      this.y = y;
    }
    void draw() {
      fill(100,100,250);
      ellipse(x,y,20 * scale,20 * scale);
      fill(200,200,200);
      ellipse(x + 8 * scale,y + 2 * scale,13 * scale,13 * scale);
    }
  }
}

class Lightning {
  int x,y;
  Lightning(int x, int y) {
      this.x = x;
      this.y = y;
  }
  void draw() {
    fill(255,255,0);
    triangle(x + 20, y + 100, x + 40, y, x, y + 100);
    x += 20;
    y += 90;
    triangle(x, y, x - 10, y + 100, x + 20, y);
  }
}

class Cloud {
  int x,y;
  Cloud(int x, int y) {
      this.x = x;
      this.y = y;
  }
  void draw() {
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
}
