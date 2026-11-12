public interface Scene {
  public void render();
}

public class Start implements Scene {
  ArrayList<Plate> plates = new ArrayList<>();
  int initial = -1;
  
  public Start() {
    plates.add(new Plate(200, 450));
    plates.add(new Plate(500, 450));
    plates.add(new Plate(800, 450));
    plates.add(new Plate(1100, 450));
  }
  
  public void render() {
    if(initial == -1) initial = frameCount;
    
    background(175, 134, 101);
    
    fill(148, 109, 76);
    ellipse(550, 500, 1700, 500);
    
    if((frameCount - initial) % 60 == 0) {
      plates.add(new Plate(-100, 450));
    }
    
    for(Plate plate : plates) {
      plate.translate(5, 0);
      plate.render();
    }
    
    fill(230, 209, 185);
    textFont(big);
    textAlign(CENTER, TOP);
    text("Sushi Master", 550, 100);
  }
}
