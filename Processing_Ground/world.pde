class World {
  float chunk;
  
  boolean chunkDebug = false;
  
  World(float tempChunk) {
    chunk = tempChunk;
  }
  
  public void debug_chunk_switch() {
    if (chunkDebug == false) {
      chunkDebug = true;
      println("[debug] see chunk " + chunkDebug);
    }
    else {
      chunkDebug = false;
      println("[debug] see chunk " + chunkDebug);
    }
  }
  
  public void debug_chunk_show() {
    if (chunkDebug == true) {
      for (int i = 0; i < width; i+=chunk) {
        for (int j = 0; j < height; j+=chunk) {
          noFill();
          stroke(0);
          rect(i, j, chunk, chunk);
        }
      }
    }
  }
  
}
