
tadpole son;
String[] namespace = {"Kevin", "Bartholemew", "Phoenix", "Trenchcoat", "Children", "String", "int", "boolean", "char", "new", "Smell", "Lasagne", "Sport", "Required", "A class containing a recursive class", "an", "Somebody", "Once", "Told", "Me", "The", "Who", "First"};
PVector target; //this is mousepos

void setup()
{
  fullScreen();
  strokeWeight(3);
  target = new PVector(mouseX, mouseY);
  son = new tadpole(3,true,'h',4,"SVEN",#FF00FF, target);//(int l, boolean limb, char propa, int seers, String name, color tint)
  randomise();
  noFill();
}


void draw()
{
  background(0);
  target.x = mouseX;//update mouse
  target.y = mouseY;
  son.render();
}

void randomise()
{
  int len = int(random(1,11));
  boolean lim = boolean(int(random(0,2))-1);
  int chartyp =  int(random(0,4));
  char gen = 'l';//generate variables to remake the wurm
  switch(chartyp)
  {
    case 0:
    gen = 'f';
    break;
    case 1:
    gen = 'm';
    break;
    case 2:
    gen = 'n';
    break;
    case 3:
    gen = 'h';
    break;
  }
  int eye = int(random(0,9));
  color col = color(random(100,255),random(100,255),random(100,255));
  int namelen = int(random(1,6));
  String name = "";
  for(int i = 0; i < namelen; i++)
  {
    name+= namespace[int(random(0,namespace.length))];
    if(!((i+1)==namelen))
    name+=" ";
  }
  son = new tadpole(len,lim,gen,eye,name,col,target);//Unfortunately this resets the position of the wurm
  println(len);
}


void keyReleased()
{
  if(key == ' ')
  {
    randomise();//easy as
  }
}
