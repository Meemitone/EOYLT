class Segment
{
  float radius;
  PVector position;
  PVector velocity;
  PVector target;
  float turn, turnRate;
  boolean limbs;
  char gender;
  int eyes;
  int len;
  Segment next=null;
  
  Segment(float rad, PVector pos, PVector vel, boolean lim, char gen, int eye, int len, PVector target)
  {
    this.target = target;
    radius = rad;
    position = pos;
    velocity = vel;
    limbs = false;//head never has limbs
    if(len == 1)
    gender = gen;
    else
    gender = 'n';
    eyes = eye;
    PVector disp = new PVector(0, rad*2);
    disp.add(pos);
    if(len > 1)
    next = new Segment(rad, disp, vel.copy(), lim, gen, len-1, pos);
    
  }
  Segment(float rad, PVector pos, PVector vel, boolean lim, char gen, int len, PVector target)
  {
    this.target = target;
    radius = rad;
    position = pos;
    velocity = vel;
    limbs = lim;
    if(len == 1)
    gender = gen;
    else
    gender = 'n';
    eyes = 0;
    PVector disp = new PVector(0, rad*2);
    disp.add(pos);
    if(len > 1)
    next = new Segment(rad, disp, vel.copy(), lim, gen, len-1, pos);
  }
  
  void render()
  {
    velocity = target.copy();
    velocity.sub(position);
    velocity = PVector.fromAngle(velocity.heading());
    velocity.mult(2);
    float a = target.x-position.x;
    float b = target.y-position.y;
    a*=a;
    b*=b;
    if((a+b)>(radius*radius*4))
    {
    position.add(velocity);
    turn = velocity.heading()+HALF_PI;
    }
    
    pushMatrix();
    translate(position.x, position.y);
    rotate(turn);
    circle(0, 0, radius*2);
    float eyeangle = TWO_PI/3/eyes;
    for(int i = 0; i < eyes; i++)
    {
      pushMatrix();
      //if(eyes%2==0)
      rotate(eyeangle/2);
      
      rotate(-TWO_PI/6+eyeangle*i);
      line(0, -radius, 0, -radius*2);
      
      circle(0,-radius*2-radius/4,radius/2);
      popMatrix();
    }
    if(limbs)
    {
      line(radius,0,radius*2,0);
      line(-radius,0,-radius*2,0);
    }
    if(gender != 'n')
    {
      if(gender == 'f' || gender == 'h')
      {
        circle(0,0,radius);
      }
      if(gender == 'm' || gender == 'h')
      {
        line(0,radius,0,radius*2);
        circle(0,radius*2+radius/4,radius/2);
      }
    }
    popMatrix();
    if(next!=null)
    next.render();
  }
}
