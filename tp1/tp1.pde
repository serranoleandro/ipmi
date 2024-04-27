PImage imagengod;
//Serrano Leandro Martin 95509/5

void setup(){
  size(800,400);
  imagengod=loadImage("arnold.png");

}
void draw(){
  background(53,51,59);
  image(imagengod,0,0,400,400);
  fill(211,130,109);
  line(1200,350,605,200);
  line(550,200,399,250);
  rect(540,185,100,70);
   beginShape();
  //mitad de la cara izquierda
    vertex(500,80);
    vertex(530,180);
    vertex(575,210);
    vertex(613,210);
    
    //mitad de la cara derecha
    vertex(650,180);
    vertex(690,80);
    ellipse(592,100,200,150);
    vertex(500,800,5,5);
   
   
     endShape();
     //ojos
     fill(255);
      rect(540,120,25,8);
      rect(620,120,25,8);
      fill(70,70,70);
      ellipse(632,124,8,8);
      ellipse(554,124,8,8);
      //boca
      fill(177,87,75);
      rect(567,172,50,7);
      //nariz
      fill(211,130,109);
      rect(585,127,10,20);
      rect(579,139,23,10);
      //cejas
      fill(116,89,81);
      rect(537,110,26,6);
      rect(621,110,26,6);
      //traje
      fill(238,230,237);
      rect(535,240,110,200);
      fill(255);
      rect(570,240,35,200);
      //pelo
      fill(116,89,81);
      rect(499,113,20,20);
      rect(497,100,20,20);
      rect(496,90,20,20);
       rect(495,80,20,20);
        rect(494,70,20,20);
         rect(495,60,20,20);
          rect(496,50,20,20);
       rect(500,40,20,20);
       rect(507,33,20,20);
       rect(514,30,20,20);
        rect(523,24,20,20);
        rect(537,22,20,20);
        rect(540,21,20,20);
        rect(554,20,20,20);
        rect(568,22,20,20);
        rect(580,20,35,20);
         rect(590,20,27,20);
          rect(600,20,28,20);
           rect(610,20,29,20);
           rect(620,25,30,20);
            rect(630,30,31,20);
            rect(640,35,32,20);
            rect(650,40,33,20);
            rect(660,45,25,20);
            rect(665,53,25,20);
             rect(670,63,25,20);
             rect(673,70,20,20);
             rect(672,80,22,20);
             rect(672,90,21,20);
             rect(672,100,20,20);
             rect(670,105,20,20);
             rect(668,113,20,20);
             rect(667,100,20,20);
             rect(666,90,20,20);
             rect(666,80,20,20);
             rect(668,87,20,20);
             rect(668,80,20,20);
             rect(668,73,20,20);
             rect(665,67,20,20);
             rect(662,60,20,20);
             rect(580,15,35,20);
             rect(560,15,35,20);
             rect(545,17,35,20);
             rect(599,20,35,20);
             rect(580,30,35,20);
             rect(555,29,35,20);
             rect(530,33,35,20);
             rect(600,30,35,20);
             rect(505,45,25,20);




}
