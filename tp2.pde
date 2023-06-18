//link del video https://youtu.be/lXC30YXVEgk
PImage imagen; // Declaración de la variable imagen
float r, g, b; // Variables para almacenar los valores de color

void setup() {
  size(800, 400);
  imagen = loadImage("cuadrado.jpg");
  imagen.resize(400, 400);
  image(imagen, 400, 0);
}

void draw() {
  cuadrados(0, 200, 200, 200);
  cuadrados(200, 0, 200, 200);
  cuadrados(0, 0, 200, 200);
  cuadrados(200, 200, 200, 200);

  if (mouseX < 400 && mouseY < 400) {
    int numCols = 400; // número de columnas para el degradado

    for (int col = 0; col < numCols; col++) {
      float inter = map(col, 0, numCols, 0, 1);

      r = map(mouseX, mouseY, 400, 0, 255);
      g = map(mouseX, mouseY, 400, 0, 255);
      b = map(mouseX, mouseY, 200, 0, 255);

      for (int row = 1; row < 400; row++) {
        stroke(r, g, b);
        point(col, row);
      }
    }
  }
}
