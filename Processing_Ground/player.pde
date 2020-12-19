class Player {
  float x;
  float y;
  float size;
  color c;
  
  float health;
  
  float lastX;
  float lastY;
  
  int type;
  
  Player(float tempHealth, float tempX, float tempY, float tempSize, color tempC, int tempType) {
    health = tempHealth;
    x = tempX;
    y = tempY;
    size = tempSize;
    c = tempC;
    
    type = tempType;
    
    if (type == 1) {
      lastX = 0;
      lastY = 0;
    }
    else if (type == 2) {
      lastX = width - size;
      lastY = height - size;
    }
  }
  
  public void move() {
    if (keyPressed) {
      if (type == 1) {
          if (key == 'w' || key == 'W') {
            y -= world.chunk;
            if (x == player2.x && y == player2.y) {
              x = lastX;
              y = lastY;
            }
            else {
              lastX = x;
              lastY = y;
            }
            delay(100);
          }
          else if (key == 's' || key == 'S') {
            y += world.chunk;
            if (x == player2.x && y == player2.y) {
              x = lastX;
              y = lastY;
            }
            else {
              lastX = x;
              lastY = y;
            }
            delay(100);
          }
          else if (key == 'd' || key == 'D') {
            x += world.chunk;
            if (x == player2.x && y == player2.y) {
              x = lastX;
              y = lastY;
            }
            else {
              lastX = x;
              lastY = y;
            }
            delay(100);
          }
          else if (key == 'a' || key == 'A') {
            x -= world.chunk;
            if (x == player2.x && y == player2.y) {
              x = lastX;
              y = lastY;
            }
            else {
              lastX = x;
              lastY = y;
            }
            delay(100);
          }
      }
      else if (type == 2) {
          if (key == 'i' || key == 'I') {
            y -= world.chunk;
            if (x == player.x && y == player.y) {
              x = lastX;
              y = lastY;
            }
            else {
              lastX = x;
              lastY = y;
            }
            delay(100);
          }
          else if (key == 'k' || key == 'K') {
            y += world.chunk;
            if (x == player.x && y == player.y) {
              x = lastX;
              y = lastY;
            }
            else {
              lastX = x;
              lastY = y;
            }
            delay(100);
          }
          else if (key == 'l' || key == 'L') {
            x += world.chunk;
            if (x == player.x && y == player.y) {
              x = lastX;
              y = lastY;
            }
            else {
              lastX = x;
              lastY = y;
            }
            delay(100);
          }
          else if (key == 'j' || key == 'J') {
            x -= world.chunk;
            if (x == player.x && y == player.y) {
              x = lastX;
              y = lastY;
            }
            else {
              lastX = x;
              lastY = y;
            }
            delay(100);
          }
      }
    }
    x = constrain(x, 0, width - size);
    y = constrain(y, 0, height - size);
  }
  
  public void display() {
    fill(c);
    noStroke();
    ellipse(x + size/2, y + size/2, size, size);
  }
}
