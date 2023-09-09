//link video https://youtu.be/GeKBROKTbBQ
let fondo;
let personajeImg;
let huevosImg;
let personaje;
let huevos = [];
let puntaje = 0;
let vidas = 3;
let juegoTerminado = false;
let juegoIniciado = false;

function preload() {
  
  personajeImg = loadImage('assets/gallina.png');
  huevosImg = loadImage('assets/huevos.png');
  fondo = loadImage('assets/fondogranja.jpg');
}

function setup() {
  createCanvas(800, 800);
  personaje = new Personaje();
}

function draw() {
  background(fondo);

  if (juegoIniciado) {
    if (juegoTerminado) {
      textSize(32);
      fill(0);
      text("GAME OVER", width / 2, height / 2 - 70);
      // Botón replay
      fill(0, 200, 0); 
      ellipse(width / 2, height / 2, 100, 100); 
      fill(0);
      textSize(25);
      textAlign(CENTER, CENTER);
      text("REPLAY", width / 2, height / 2);
    } else {
      
      personaje.mostrar();
      personaje.mover();

      if (frameCount % 60 === 0) {
        huevos.push(new Huevo(random(width), 0));
      }

      for (let i = huevos.length - 1; i >= 0; i--) {
        huevos[i].mostrar();
        huevos[i].caer();

        if (personaje.agarrar(huevos[i])) {
          puntaje++;
          huevos.splice(i, 1);
        } else if (huevos[i].fueraDePantalla()) {
          huevos.splice(i, 1);
          vidas--;
          if (vidas === 0) {
            juegoTerminado = true;
          }
        }
      }
      fill(255);
      rect(12, 20, 120, 22);
      rect(20, 50, 100, 22);
      textSize(24);
      fill(0);
      stroke(5);
      text("Puntaje: " + puntaje, 70, 30);
      text("Vidas: " + vidas, 70, 60);
    }
  } else {
    // Botón de inicio
    fill(0, 200, 0); 
    ellipse(width / 2, height / 2, 100, 100); 
    fill(0);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("PLAY", width / 2, height / 2);
    textSize(24);
    stroke(5);
    text("Haz clic para comenzar", width / 2, height / 2 - 70);
  }
}

class Personaje {
  constructor() {
    this.x = width / 2;
    this.y = 650;
    this.ancho = 200;
  }

  mostrar() {
    image(personajeImg, this.x - this.ancho / 2, this.y - this.ancho / 2, this.ancho, this.ancho);
  }

  mover() {
    this.x = mouseX;
    this.x = constrain(this.x, this.ancho / 2, width - this.ancho / 2);
  }

  agarrar(huevo) {
    let distancia = dist(this.x, this.y, huevo.x, huevo.y);
    return distancia < this.ancho / 2 + huevo.radio / 2;
  }
}

class Huevo {
  constructor(x, y) {
    this.x = x;
    this.y = y;
    this.radio = 50;
    this.velocidad = random(3, 5);
  }

  mostrar() {
    image(huevosImg, this.x - this.radio, this.y - this.radio, this.radio * 2, this.radio * 2);
  }

  caer() {
    this.y += this.velocidad;
  }

  fueraDePantalla() {
    return this.y > height + this.radio;
  }
}

function mousePressed() {
  if (!juegoIniciado) {
    // empieza el juego
    iniciarJuego();
  } else if (juegoTerminado) {
    // reinicia el juego 
    reiniciarJuego();
  }
}

function iniciarJuego() {
  
  puntaje = 0;
  vidas = 3;
  juegoTerminado = false;
  
  // Marca que el juego ha sido iniciado
  juegoIniciado = true;
}

function reiniciarJuego() {
  
  puntaje = 0;
  vidas = 3;
  juegoTerminado = false;
  
  
  juegoIniciado = false;
}
