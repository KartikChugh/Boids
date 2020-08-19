class Boid {

  PVector pos, vel;
  float shade;

  Boid(float posX, float posY) {
    vel = new PVector(0, 0);
    pos = new PVector(posX, posY);
    shade = random(255);
  }

  void tick() {
    pos.x = (pos.x + width) % width;
    pos.y = (pos.y + height) % height;
    pos.add(vel);
  }

  void draw() {
    fill(shade, 90, 200);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(vel.heading());
    beginShape();
    vertex(15 * globalScale, 0);
    vertex(-7* globalScale, 7* globalScale);
    vertex(-7* globalScale, -7* globalScale);
    endShape(CLOSE);
    popMatrix();
  }
}
