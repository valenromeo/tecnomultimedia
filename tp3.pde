PImage[] fotos = new PImage[14];
String estado;


void setup() {
  size(600, 600);

 
  estado = "inicio";
  fotos[0] = loadImage("castillo.jpg");
  fotos[1] = loadImage("blancanievesventana.jpg");
  fotos[2] = loadImage("reinamalvadablancanieves.jpg");
  fotos[3] = loadImage("reinacazador.jpg");
  fotos[4] = loadImage("cazador.jpg");
  fotos[5] = loadImage("final1.jpg");
  fotos[6] = loadImage("casaenanos.jpg");
  fotos[7] = loadImage("reinavieja.jpg");
  fotos[8] = loadImage("desmayada.jpg");
  fotos[9] = loadImage("final2.jpg");
  fotos[10] = loadImage("desmayadafuneral.jpg");
  fotos[11] = loadImage("beso.jpg");
  fotos[12] = loadImage("final3.jpg");
  fotos[13] = loadImage("creditos.jpg");
}

void draw() {
  if (estado.equals("inicio")) {
    // Pantalla de inicio
    background(fotos[0]);
    fill(255);
    textSize(55);
    text("Blancanieves", 150, 300);
    textSize(35);
    text("y los 7 enanitos", 190, 330);
    textSize(10);
    text("iniciar", 300, 390);
    fill(155);
    noStroke();
    ellipse(300, 390, 80, 80);
    fill(255);
    stroke(255);
    textSize(20);
    text("iniciar", 275, 395);
  } else if (estado.equals("pantalla 1")) {
    // Pantalla 1
    background(fotos[1]);
    text("Había una vez una hermosa princesa llamada Blancanieves.", width - 590, 50);
  } else if (estado.equals("pantalla 2")) {
    // Pantalla 2
    background(fotos[2]);
    text("Vivía en un castillo con su malvada madrastra, la Reina Malvada,", width - 590, 50);
    text("quien estaba obsesionada con su propia belleza y", width - 590, 70);
    text("envidiaba la juventud de Blancanieves.", width - 590, 90);
  } else if (estado.equals("pantalla 3")) {
    // Pantalla 3
    background(fotos[3]);
    text("Un día, la Reina Malvada llamó a su fiel cazador", width - 590, 50);
    text("y le ordenó que matara a Blancanieves en el bosque.", width - 590, 70);
  } else if (estado.equals("pantalla 4")) {
    // Pantalla 4
    background(fotos[4]);
    textSize(30);
    fill(255);
    text("¿Qué hace el cazador?", 180, 50);
    
    miFuncion(150, 300, 80, 50, color(100));
    textSize(20);
    fill(255);
    text("matarla", 158, 330);
    
    miFuncion(350, 300, 80, 50, color(100));
    textSize(20);
    fill(255);
    text("dejarla ir", 353, 330);
  } else if (estado.equals("pantalla 5")) {
    // Pantalla 5
    background(fotos[5]);
    textSize(20);
    text("El cazador asesina a Blancanieves y", width-590,50); 
    text("le entrega su corazón a la Reina Malvada.", width - 590, 70);
    textSize(50);
    text("FIN.",250,width/2); 
  } else if (estado.equals("pantalla 6")){
    //pantalla 6
    background(fotos[6]);
    text("Blancanieves escapa, se encuentra con", width-590,50); 
    text("la casa de unos enanitos y se queda ", width-590,70); 
    text("a vivir con ellos ", width-590,90);  
  } else if (estado.equals("pantalla 7")){
    //pantalla 7 
    background (fotos[7]);
    text("Un día una anciana la vio y le regaló una manzana.",110,50); 
    miFuncion(150, 300, 90, 50, color(100));
    textSize(20);
    fill(255);
    text("aceptarla", 158, 330);    
    miFuncion(350, 300, 90, 50, color(100));
    textSize(20);
    fill(255);
    text("rechazarla", 353, 330);
  } else if (estado.equals("pantalla 8")){
    //pantalla 8
    background (fotos[8]);
    text("Esa manzana estaba envenenada, ya que la anciana era",width-590,50); 
    text("la reina malvada.",width-590,70);
  } else if (estado.equals("pantalla 9")){
    //pantalla 9
    background (fotos[9]);
    textSize(20);
    text("La anciana se transforma en la reina malvada",width-590,50); 
    text("y apuñala a blancanieves.",width-590,70);
    textSize(50);
    text("FIN.",250,width/2);
  } else if (estado.equals("pantalla 10")){
    //pantalla 10
    background (fotos[10]);
    textSize(20);
    text("Los enanitos encuentran a blancanieves y le hacen un funeral",width-590,50); 
    text("pero justo aparece un principe...",width-590,70); 
  } else if (estado.equals("pantalla 11")){
    //pantalla 11
    background (fotos[11]);
    text("El principe besa a Blancanieves y",width-590,50); 
    text("ella despierta",width-590,70); 
  } else if (estado.equals("pantalla 12")){
    //pantalla 12
    background (fotos[12]);
    textSize(20);
    text("Se casan y viven felices por siempre",width-590,30); 
    textSize(50);
    text("FIN.",250,width/2); 
  } else if (estado.equals("creditos")){
    //creditos
    background(0);
    textSize(50);
    text("CRÉDITOS",120,100);
    textSize(30);
    text("Valentina Romeo",120,200);
    text("Comisión 2",120,250);
    text("Autor de la obra:",120, 300);
    text ("Jacob Grimm y Wilhelm Grimm",120,350);
    miFuncion(250, 400, 80, 50, color(100));
    textSize(20);
    fill(255);
    text("volver", 263, 433);
  }
}

void mousePressed() {
  if (estado.equals("inicio")) {
    if (dist(mouseX, mouseY, 300, 390) < 40) {
      estado = "pantalla 1";
    }
  } else if (estado.equals("pantalla 1")) {
    estado = "pantalla 2";
  } else if (estado.equals("pantalla 2")) {
    estado = "pantalla 3";
  } else if (estado.equals("pantalla 3")) {
    estado = "pantalla 4";
  } else if (estado.equals("pantalla 4")) {
    if (dist(mouseX, mouseY, 150 + 40, 300 + 25) < 40) {
      estado = "pantalla 5";
    } else if (dist(mouseX, mouseY, 350 + 40, 300 + 25) < 40) {
      estado = "pantalla 6"; 
    }
  } else if (estado.equals("pantalla 5")) {
    estado = "creditos";
  } else if (estado.equals("pantalla 6")) {
    estado = "pantalla 7";
  } else if (estado.equals("pantalla 7")) {
    if (dist(mouseX, mouseY, 150 + 40, 300 + 25) < 40) {
      estado = "pantalla 8";
    } else if (dist(mouseX, mouseY, 350 + 40, 300 + 25) < 40) {
      estado = "pantalla 9"; 
    } 
  } else if (estado.equals("pantalla 8")) {
    estado = "pantalla 10";
  } else if (estado.equals("pantalla 9")) {
    estado = "pantalla 10"; 
  } else if (estado.equals("pantalla 10")) {
    estado = "pantalla 11";
  } else if (estado.equals("pantalla 11")) {
    estado = "pantalla 12";
  } else if (estado.equals("pantalla 12")) {
    estado = "creditos";
  } else if (estado.equals("creditos")) {
    if (dist(mouseX, mouseY, 250 + 40, 400 + 25) < 40) {
      estado = "inicio"; 
    }
  }
}
