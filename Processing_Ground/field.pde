class MagneticField {
  float x;
  float y;
  float scale;
  
  MagneticField(float tempX, float tempY, float tempScale) {
    x = tempX;
    y = tempY;
    scale = tempScale;
  }
  
  public void setCenter(float num1, float num2) {
    x = num1;
    y = num2;
  }
  
  public void expansion() {
    
  }
  
  public void shrink() {
    
  }
  
  public void display() {
    fill(#5062FF, 50);
    rect(0, 0, width, height);
    
    for (int i = int(x - scale * world.chunk); i < width; i+=world.chunk) {
      
    }
  }
}
