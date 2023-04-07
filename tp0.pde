PImage gato;

void setup(){
  size(800,400);
  gato = loadImage("gato.jpg");
  background(255);
  fill(200);
  noStroke();
  triangle(162,100,180,50,200,100); //oreja izquierda
  noStroke();
  fill(200);
  triangle(200,100,220,50,238,100); //oreja derecha
  fill(200);
  curve(185,220,180,290,100,150,220,130); // cola
  ellipse(200,230,80,150); //cuerpo
  fill(255);
  triangle(166,104,180,54,196,104);
  triangle(204,104,220,54,234,104);
  fill(200);
  circle(200,125,90); //cabeza
  fill(180);
  ellipse(185,250,10,100); //pata derecha
  ellipse(180,300,30,20); //pata derecha
  ellipse(215,250,10,100); //pata izquierda
  ellipse(220,300,30,20); //pata izquierda
  fill(0);
  triangle(190,130,200,140,210,130); // nariz
  circle(180,120,10); // ojo derecho
  circle(220,120,10); // ojo izq
  rect(199,139,2,7);
  rect(193,145,15,2);
  fill(0,200,0);
  rect(175,162,50,5);
  fill(100);
  circle(200,172,10);
  
}
  void draw(){
    image(gato,400,0);
  }
