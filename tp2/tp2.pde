//Serrano Leandro
//45559732

//variables utilizadas
PImage HW, HW2, HW3, HW4, HW5;

String estado = "inicio";
String texto, texto2, texto3, texto4;

int contador;
int Variable;
int fotograma = 0;

float x=0,velx=10;
float y=0;

PFont fuente;

void setup(){
  size (640,480);
  background (#FFFFFF);
  texto = "\n \n  Hello World!\n es una obra de arte digital\n interactiva creada por\n el artista\n Rafael Lozano-Hemmer";
  y=150;
  texto2 = "\n La obra utiliza luces y\n sonido generados por\n computadora para crear\n una experiencia\n participativa en la que las\n personas pueden enviar\n mensajes a través de internet\n que se proyectan en un\n espacio público.";
  texto3 = "La obra toma su nombre de\n la frase comúnmente\n utilizada en programación\n para indicar el inicio de\n un programa informático, en la\n cual nosotros interactuamos. ";
  texto4 = "En Hello World, los visitantes\n pueden enviar mensajes cortos\n a través de una interfaz\n en línea, y estos mensajes\n se convierten en texto\n proyectado en un\n gran espacio público,\n como una fachada\n de un edificio o un\n espacio abierto.";
  
  fuente = loadFont("SegoeUIBlack-Italic-48.vlw");
   HW = loadImage("Hello World1.jpg");
   HW2 = loadImage("Hello World2.jpg");
   HW3 = loadImage("Hello World3.jpg");
   HW4 = loadImage("Hello World4.jpg");
   HW5 = loadImage("Hello World5.jpg");
  textSize(50);
  Variable = 1000;
  println(frameCount);
  contador = 0; 
  
}
void draw(){
  println(Variable);
  
  background (#000000);
  
  
  
  Variable = fotograma;
 
  
  textSize(18);
  textAlign(LEFT);
  text(fotograma,20,40);
  text(estado,20,45);
  
  
  
  if (estado.equals("inicio") ){
  //pantalla de inicio
  fill(#FFFFFF);
 image(HW, 1,1,700,500);
  textSize(50);
 textAlign(CENTER);
 textFont(fuente);
 text("Hello World!\n INICIAR",width/2, height/3);
 fill(#EA3B3B);
 ellipse(width/2,300,100,100);
 
 
  }
  
 else if (estado.equals("pantalla 1") ) {
 //pantalla 1
  fill(#FFFFFF);
  image(HW4, 1,1,700,500);
 textAlign(CENTER);
 textSize(42);
 fill(#FFFFFF,map(Variable,0,200,-50,200));
 text(texto,310,50);
 
 //incremnto del contador:
 fotograma++;
 if(fotograma>= 400) {
  estado = "pantalla 2";
  fotograma = 0;

   
 }
  
 }
 else if (estado.equals("pantalla 2") ) {
 //pantalla 2
  fill(#FFFFFF);
  image(HW5, 1,1,700,500);
 textAlign(CENTER);
 textSize(35);
 text(texto2,Variable-1,28);
 
  //incremnto del contador:
 fotograma++;
 if(fotograma>= 530) {
  estado = "pantalla 3";
  fotograma = 0;
   
 }
  
 }
 
 else if(estado.equals("pantalla 3") ) {
  //pantalla 3
  fill(#FFFFFF);
  image(HW3, 1,1,650,500);
 textAlign(CENTER);
 textSize(37);
 text(texto3,310,430-Variable);
 
 //incremnto del contador:
 fotograma++;
 if(fotograma>= 500) {
  estado = "pantalla 4";
   fotograma = 0;
 }
 
 
 
}
else if(estado.equals("pantalla 4") ) {
  //pantalla 4
  fill(#FFFFFF);
  image(HW2, -20, -10,800,500);
 textAlign(CENTER);
 textSize(35);
  text(texto4, 600-Variable, 45);
  
  //incremnto del contador:
 fotograma++;
 if(fotograma>= 585) {
  estado = "inicio";
  fotograma = 0;
   
}
}

}

  
void mousePressed() { 
if (estado.equals("inicio") ){
  if(dist(mouseX,mouseY,width/2,300)<50) {
  Variable = 1000;
  contador = 0; 
  estado = "pantalla 1";
  fotograma = 0;
   y=150;
   x=0;
   velx=3;
  }
}  else if (estado.equals("pantalla 1") ) {
  estado = "pantalla 2";
  fotograma = 0;
}  else if (estado.equals("pantalla 2") ) {
  estado = "pantalla 3";
  fotograma = 0;
}  else if (estado.equals("pantalla 3") ) {
  estado = "pantalla 4";
  fotograma = 0;
}  else if (estado.equals("pantalla 4") ) {
  estado = "inicio";
  fotograma = 0;

}

}
