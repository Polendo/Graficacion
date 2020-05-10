Circulo circulo;
String q="";
int id=-1;
int w =0;
ArrayList <Circulo> list;

void setup(){
  size(720, 720);
  list = new ArrayList<Circulo>();
   
  for(int i=0; i<30; i++){
     list.add(new Circulo(random(width), random(height), 50,i));
  }
}

void draw(){
  background(0,0,0);
  
  for(Circulo c : list){
    c.dibujar();
  }
    
  textSize(24);
  fill(#DB145D);
  if (id != -1)
    text(id,width/2-10,30);
     fill(255);
}
    
void mousePressed(){
  for(Circulo c : list){
    if (c.isAdentro(mouseX, mouseY)){
      if(c.id > id){
         id = c.id; 
      }
    }
  }
  q+= id;
}
  
void mouseReleased(){
  q = "";
  id = -1; // no se está seleccionando nigún círculo.
}

void mouseDragged(){
  for(Circulo c : list){
    if(c.id == id){
      c.x = mouseX;
      c.y = mouseY;
    }
  }
}
