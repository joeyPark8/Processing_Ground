Player player;
Player player2;
World world;
MagneticField field;

void setup() {
  size(1000, 800);
  
  player = new Player(100, 0, 0, 50, color(#FF03FB), 1);
  player2 = new Player(100, width - 50, height - 50, 50, color(#5359F2), 2);
  world = new World(50);
  field = new MagneticField(500, 400, 7);
}

void draw() {
  background(255);
  
  if (keyPressed) {
    if (key == 'c' || key == 'C') {
      world.debug_chunk_switch();
      delay(100);
    }
  }
  world.debug_chunk_show();
  
  player.move();
  player.display();
  
  player2.move();
  player2.display();
}
