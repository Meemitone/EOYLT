class tadpole
{
  int len; //this is length
  boolean limbs;
  char genda;
  //0 and 5 is 0 (bitwise operation)
  int eyes;
  String name;
  color col;
  
  Segment head;
  
  
  //PVector head; //ideas are brewing
  tadpole(int l, boolean limb, char propa, int seers, String name, color tint, PVector targ)
  {
    len = l;
    limbs = limb;
    genda = propa;
    eyes = seers;
    this.name = name;
    col = tint;
    
    
    head = new Segment(35, new PVector(1920/2,270), new PVector(0,0), limb, propa, seers, l, targ);//(float rad, PVector pos, PVector vel, boolean lim, char gen, int eye, int len)
  }
  
  tadpole()
  {
    len = 1;
    limbs = false;
    genda = 'n';
    eyes = 0;
    this.name = "Seven Squirrels in a Trenchcoat";
    col = #FFFFFF;
    PVector targ = new PVector(0,0);
    head = new Segment(40, new PVector(1920/2,270), new PVector(0,0), limbs, genda, eyes, len, targ);
  }
  
  void render()
  {
    stroke(col);
    pushMatrix();
    fill(col);
    translate(width/2, 100);
    textSize(40);
    rectMode(CENTER);
    textAlign(CENTER);
    text(name, 0,0);
    noFill();
    popMatrix();
    head.render();
  }
}
