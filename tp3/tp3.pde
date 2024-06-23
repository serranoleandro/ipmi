int cant = 10;
PImage ilu;
void setup() {
  size(800, 400);
ilu = loadImage ("ilusion.png");
}
void draw() {
  background(250,255,13);
 
 // cada cuadrado se rotara de 0 a 360 grados con cada movimiento del mouse
  float rotacion = map(mouseX, 0, width/2, 0, 360);
  
  fill (255);
  //ciclo for anidado
  for(int i=0;i<2;i++){
    for(int j=0;j<2;j++){
  
  cuadrado(500*i/2.5+500,300*j/1.5+100, 10, rotacion, cant); 
  }}
 
  

  image(ilu, 1, 0, 400, 400);
 
}
// Al presionar click repetidamente se agregan cuadrados dentro de los mismos infinitamente
void mousePressed() { 
  cant++;
}
// Al presionar R restablecemos la ilusion desde el comienzo 
void keyPressed() { 
  cant = 10;
}


void cuadrado(float x, float y, int ancho, float rotar, int cantidad) { 
  for (int i=0; i<cantidad; i++) {
    push();
    translate(x, y);
    rotate(radians(rotar));

    rectMode(CENTER);
     noFill();
    

    float tam = map(i, 0, cantidad-1, ancho, -200);
    float opacidad = map(i, 0, cantidad-1, 30, 300);
    //se cambio la opacidad y se agrego efectos con mouseX y diferentes colores
    if (i % 2 == 0){
    stroke(mouseX, 18, 18, opacidad);
    strokeWeight(3.80);
    
      
    }else {
    stroke(255);
    
    }
    rect(0, 0, tam, tam);

    pop();
  
  }
}
