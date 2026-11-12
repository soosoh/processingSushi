class Plate {
  public int x, y;
  
  public Plate(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public void render() {
    noStroke();
    fill(230, 209, 185);
    ellipse(x, y, 160, 120);
  }
  
  public void translate(int x, int y) {
    this.x += x;
    this.y += y;
  }
}
