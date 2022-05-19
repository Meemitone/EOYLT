
tadpole son;
String[] namespace = {"Kevin", "Bartholemew", "Phoenix", "Trenchcoat", "Children", "String", "int", "boolean", "char", "new", "Smell", "Lasagne", "Sport", "Required", "A single recursive class"};

void setup()
{
  fullScreen();
  strokeWeight(3);
  son = new tadpole(3,true,'h',4,"SVEN",#FF00FF);//(int l, boolean limb, char propa, int seers, String name, color tint)
  randomise();
  noFill();
}


void draw()
{
  background(0);
  son.render();
}

void randomise()
{
  int len = int(random(1,11));
  boolean lim = boolean(int(random(0,2))-1);
  int chartyp =  int(random(0,4));
  char gen = 'l';
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
    name+= namespace[int(random(0,namespace.length-1))];
    if(!((i+1)==namelen))
    name+=" ";
  }
  son = new tadpole(len,lim,gen,eye,name,col);//(int l, boolean limb, char propa, int seers, String name, color tint)
  println(len);
}


void keyReleased()
{
  if(key == ' ')
  {
    randomise();
  }
}
