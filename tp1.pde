PImage foto;
PImage foto2;
PImage foto3;
PImage foto4;
String estado = "inicio";
int cuentaFotograma = 0;  



void setup(){
  size(640,480);
  frameRate(60);
  foto = loadImage("mariposa (1).jpg");
  foto2 = loadImage("download (1).jpg");
  foto3 = loadImage("download (2).jpg");
  foto4 = loadImage("download (3).jpg");
}

void draw(){
  
  //pantalla de inicio
  background(0);
  if(estado.equals("inicio")) {
    fill(150,0,150);
  noStroke();
  ellipse(width/2,height/2,100,100);
  fill(0);
  stroke(255);
  triangle(298,217,298,267,351,245);
  fill(255);
  textAlign(CENTER);
  textSize(50);
  text("Mariposas",320,170);

  }
  else if(estado.equals("pantalla 1")) {
    //pantalla 1
    
   background(foto);
   
    fill(255);
    textAlign(CENTER);
    textSize(30);
    text("Los lepidópteros son un orden de insectos",width/2,cuentaFotograma+30);
    text("holometábolos, casi siempre voladores,",width/2,cuentaFotograma+60);
    text("conocidos comúnmente como mariposas.",width/2,cuentaFotograma+90);
    cuentaFotograma++;
    if (cuentaFotograma>= 500 ){
      estado = "pantalla 2";
      cuentaFotograma = 0;
    }
  }
  else if (estado.equals("pantalla 2")){
    // pantalla 2
    background(foto2);
    fill(255);
    textAlign(CENTER);
    textSize(30);
    text("Las más conocidas son las mariposas",width/2,cuentaFotograma+30);
    text("diurnas, pero la mayoría de las especies",width/2,cuentaFotograma+60);
    text("son nocturnas y pasan muy inadvertidas.",width/2,cuentaFotograma+90);
    cuentaFotograma++;
    if (cuentaFotograma>= 500 ){
      estado = "pantalla 3";
      cuentaFotograma = 0;
    }
  }
  else if (estado.equals("pantalla 3")){
    // pantalla 3
    background(foto3);
    fill(255);
    textAlign(CENTER);
    textSize(30);
    text("Sus larvas se conocen como orugas y se",width/2,cuentaFotograma+30);
    text("alimentan típicamente de materia vegetal,",width/2,cuentaFotograma+60);
    text("con lo que algunas especies pueden ser",width/2,cuentaFotograma+90);
    text("plagas muy dañinas para la agricultura.",width/2,cuentaFotograma+120);
    cuentaFotograma++;
    if (cuentaFotograma>= 500 ){
      estado = "pantalla 4"; 
    cuentaFotograma = 0; }
  }
      else if (estado.equals("pantalla 4")){
    // pantalla 4
    background(foto4);
    fill(255);
    textAlign(CENTER);
    textSize(30);
    text("Muchas especies cumplen el papel de",width/2,cuentaFotograma+30);
    text("polinizadoras de plantas y cultivos.",width/2,cuentaFotograma+60);
    cuentaFotograma++;
    if (cuentaFotograma>= 500 ) {
      estado = "pantalla 5"; 
    cuentaFotograma = 0; }
      }
  
   else if (estado.equals("pantalla 5")){
    // pantalla 5
    
    background(0);
    textAlign(CENTER);
    textSize(35);
    fill(150,0,150);
    rect(295,300,50,50);
    fill(255);
    text("volver",320,240);
    noStroke();
  
  
   }
  }    
void mousePressed (){
   if (estado.equals("pantalla 1")) {
     estado = "pantalla 2";}
      if(dist(mouseX,mouseY,320,240)<50){ 
      estado = "pantalla 1"; 
     cuentaFotograma= 0;
     } else if (estado.equals("pantalla 2")) {
     estado = "pantalla 3";
     cuentaFotograma= 0;
     } else if (estado.equals("pantalla 3")) {
     estado = "pantalla 4";
     cuentaFotograma= 0;
     } else if (estado.equals("pantalla 4")) {
     estado = "pantalla 5";
     } else if (estado.equals("pantalla 5")) {
     estado = "inicio";}
    else if(dist(mouseX,mouseY,295,300)<100){ 
      estado = "inicio"; }
     
  
}
