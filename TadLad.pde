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
  tadpole(int l, boolean limb, char propa, int seers, String name, color tint)
  {
    len = l;
    limbs = limb;
    genda = propa;
    eyes = seers;
    this.name = name;
    col = tint;
    
    
    head = new Segment(40, new PVector(270,0), new PVector(0,0), limb, propa, seers, l);//(float rad, PVector pos, PVector vel, boolean lim, char gen, int eye, int len)
  }
  
  tadpole()
  {
    len = 1;
    limbs = false;
    genda = 'n';
    eyes = 0;
    this.name = "Seven Squirrels in a Trenchcoat";
    col = #FFFFFF;
    head = new Segment(40, new PVector(270,0), new PVector(0,0), limbs, genda, eyes, len);
  }
  
  void render()
  {
    stroke(col);
    head.render();
  }
}
