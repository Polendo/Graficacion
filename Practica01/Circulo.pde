class Circulo{
   float x;
   float y;
   float diametro;
   int id;
   boolean mover;
   
   Circulo(float a, float b, float c, int d){
     x = a;
     y = b;
     diametro = c;
     id = d;
     ellipseMode(CENTER);
     mover = false;
   }
  
  void dibujar(){
    ellipse(x,y,diametro,diametro);
  }
  
  boolean isAdentro(float mousex, float mousey){
    if( dist(mousex,mousey,x,y) < diametro/2)
      return true;
    else
      return false;
  }
}
