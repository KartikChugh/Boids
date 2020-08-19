ArrayList<Boid> boids;
float globalScale = .91;
int POPULATION = 20;

void setup() {
   size(1024, 576);  
   textSize(16);
   boids = new ArrayList<Boid>();
   for (int i = 0; i < POPULATION; i++) {
      boids.add(new Boid(random(width), random(height))); 
   }
}

void draw() {
  //noStroke();
  //colorMode(HSB);
  //fill(0, 100);
  //rect(0, 0, width, height);
  background(51);
  
  for (int i = 0; i < boids.size(); i++) {
    boids.get(i).draw();
  }
}
