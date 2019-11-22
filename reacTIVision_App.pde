/* Importar la libreria de TUIO */
import TUIO.*;
import java.util.ArrayList;
color back, cloud;
int size, index, rain, speed;
int[] x, y;
int[] justice, justiceY, vel;


/* declarar el cliente TuioProcessing */
TuioProcessing tuioClient;

void setup() {

  /* Inicializar el cliente TUIO para obtener los metodos en esta clase */
  tuioClient  = new TuioProcessing(this);
  fullScreen();

  back = #13C7D6;
  cloud = #FFFFFF;
  size=20;
  rain=20;
  speed=5;

  x=new int[size];
  y=new int[size];
  justice=new int[rain];
  justiceY=new int[rain];
  vel=new int[rain];


  for (int s=0; s<x.length; s++)
  {
    x[s]=(int)random(80, width);
    y[s]=(int)random(100, 400);
  }

  for (int j=0; j<justice.length; j++)
  {
    justice[j]=(int)random(-230, +230);
    justiceY[j]=(int)random(-30, +30);
    vel[j]=(int)random(5, 7);
  }
}

/* Dentro del metodo draw se crea un arreglo de tipo TuioObject 
 tomado desde el cliente para manejar el conjunto de símbolos a dibujar */
void draw() {



  /*Dibuje aquí las cosas estáticas del dibujo*/

  background(back);

  strokeWeight(8);
  stroke(#0D8E1B);
  fill(#3B8315);

  beginShape();

  vertex(0, 940);
  vertex(0, 1080);
  vertex(1920, 1080);
  vertex(1920, 540);
  curveVertex(2000, 600);
  curveVertex(1920, 540);
  curveVertex(1200, 440);
  curveVertex(0, 540);
  curveVertex(0, 300);

  endShape(CLOSE);

  /////



  ArrayList tuioObjectList = tuioClient.getTuioObjectList();

  for (int i=0; i<tuioObjectList.size(); i++) {

    TuioObject tobj = (TuioObject)tuioObjectList.get(i);
    int posX = tobj.getScreenX(width);
    int posY = tobj.getScreenY(height);
    float angle = tobj.getAngle();
    int id = tobj.getSymbolID();


    switch (id) {
    case 0:
      /*dibuje aquí lo correspondiente al fiducial 0*/


      //pool

      strokeWeight(2);
      stroke(#000000);
      fill(#ABACAD);
      quad(1150, 500, 920, 615, 680, 480, 920, 380);
      fill(#1595D3);
      quad(1000, 540, 860, 460, 780, 500, 920, 580);
      //line(1000,540,1000,560);
      line(860, 460, 860, 480);
      //line(780,500,780,520);
      //line(920,580,920,600);

      line(980, 550, 860, 480);
      line(860, 480, 800, 510);


      strokeWeight(5);
      stroke(#000000);



      line(680, 480, 680, 460);
      line(920, 380, 920, 360);
      line(920, 615, 920, 595);
      line(1150, 500, 1150, 480);

      line(680, 460, 920, 360);
      line(680, 460, 920, 595);
      line(920, 595, 1150, 480);
      line(1150, 480, 920, 360);



      //TOWER
      //strokeWeight(3);
      //point(800,180);




      fill(#000000);
      stroke(#000000);
      strokeWeight(2);
      //atras heliport
      quad(1060, 140, 1200, 110, 1380, 205, 1160, 270);
      strokeWeight(3);
      stroke(#000000);
      line(1200, 110, 1200, 80);
      line(1379, 205, 1379, 175);


      strokeWeight(2);
      stroke(#000000);
      fill(#17B9E8);
      ellipse(1379, 175, 15, 15);
      fill(#FF0009);
      ellipse(1200, 80, 15, 15);
      fill(#ABACAD);
      quad(1160, 190, 1010, 270, 1070, 350, 1160, 320);

      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);
      quad(900, 270, 1010, 270, 1070, 350, 990, 350);
      quad(1070, 350, 990, 350, 990, 480, 1070, 520);

      quad(1070, 350, 1360, 250, 1240, 380, 1070, 450);
      quad(1160, 270, 1380, 205, 1380, 250, 1160, 320);




      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);
      quad(800, 180, 950, 130, 1060, 220, 880, 220);
      quad(1080, 130, 950, 130, 1060, 220, 1160, 190);

      strokeWeight(2);
      fill(#000000);
      stroke(#000000);
      quad(1070, 155, 1100, 175, 1145, 175, 1105, 145);
      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);
      triangle(1070, 155, 1100, 175, 1100, 145);
      line(1100, 175, 1140, 175);

      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);
      quad(930, 185, 905, 160, 1010, 115, 1045, 140);
      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);
      triangle(930, 185, 1050, 170, 1045, 140);


      strokeWeight(3);
      stroke(#FFE308);
      line(1200, 110+40, 1380-100, 205-10);
      line(1200-50, 110+40+10, 1380-100-50, 205-10+10);
      line(1190, 180, 1230, 170);

      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);
      //line(990,480,1170,570);
      quad(1070, 450, 1240, 380, 1340, 470, 1170, 570);
      strokeWeight(5);
      fill(#1595D3);
      stroke(#000000);
      quad(1070+40, 450+10, 1240+5, 380+20, 1340-25, 470-10, 1170+10, 570-30);
      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);
      quad(1070, 450, 1170, 570, 1170, 750, 1070, 700);
      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);

      quad(1340, 470, 1170, 570, 1170, 750, 1340, 650);
      strokeWeight(5);
      fill(#1595D3);
      stroke(#000000);
      quad(1340, 530, 1170, 630, 1170, 680, 1340, 580);

      strokeWeight(5);
      fill(#1595D3);
      stroke(#000000);

      quad(1070, 500, 1140, 580, 1140, 660, 1070, 620);

      line(1050, 820, 1340, 650);


      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);
      triangle(1170, 750, 1050, 820, 1140, 660);

      //TOWER WINDOWS
      strokeWeight(5);
      fill(#1595D3);
      stroke(#000000);
      quad(880, 220, 880, 270, 1060, 270, 1060, 220);
      quad(1060, 220, 1160, 190, 1160, 240, 1060, 270);
      fill(#1595D3);
      stroke(#000000);
      strokeWeight(5);
      quad(800, 180, 880, 220, 880, 270, 800, 230);


      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);
      //wall next door1
      quad(1070, 540, 1070, 730, 920, 815, 920, 615);
      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);

      quad(920, 815, 920, 615, 720, 820, 720, 930);

      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);

      quad(920, 615, 680, 480, 460, 680, 720, 820);

      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);


      quad(460, 680, 720, 820, 720, 930, 460, 790);

      strokeWeight(5);
      fill(#1595D3);
      stroke(#000000);

      //windows
      quad(920-59, 615+60, 680-65, 480+60, 460+88, 680-80, 720+78, 820-80);

      strokeWeight(5);
      fill(#1595D3);
      stroke(#000000);

      quad(460, 710+5, 720, 850+5, 720, 910-5, 460, 770-5);

      strokeWeight(5);
      fill(#1595D3);
      stroke(#000000);

      quad(920-59, 615+60, 720+78, 820-80, 720+78, 740+100, 920-59, 675+130);


      strokeWeight(2);
      fill(#ABACAD);
      stroke(#000000);


      quad(1070, 620, 1140, 660, 1050, 820, 980, 780);
      fill(#FF0000);
      rect(1150, 580, 10, 20, 5, 5, 5, 5);



      //door1
      strokeWeight(3);
      stroke(#FFFFFF);
      fill(#FF0000);

      quad(1070, 540, 1140, 580, 1140, 660, 1070, 620);
      line(1105, 560, 1105, 640);

      strokeWeight(5);
      stroke(#000000);

      line(1050, 820, 1050, 780);
      line(1140, 660, 1140, 620);
      line(1050, 780, 1140, 620);

      strokeWeight(3);
      stroke(#FFFFFF);
      fill(#FF0000);


      quad(1000, 485, 1000, 425, 1060, 455, 1060, 515);
      line(1030, 440, 1030, 500);

      strokeWeight(2);
      stroke(#FFFFFF);
      fill(#000000);

      triangle(1330-85, 440, 1330-40, 480, 1330-25, 440);
      arc(1330, 440, 85, 100, radians(70), radians(290), CLOSE);

      strokeWeight(2);
      stroke(#000000);
      fill(#FFFFFF);
      ellipse(1340, 470-30, 50, 100);

      strokeWeight(3);
      fill(#000000);
      stroke(#000000);
      line(1320, 470-30, 1380, 470-30);

      strokeWeight(3);
      fill(#000000);
      stroke(#000000);
      ellipse(1380, 470-30, 10, 10);

      strokeWeight(2);
      stroke(#000000);
      fill(#FFFFFF);



      break;
    case 1:
      /*dibuje aquí lo correspondiente al fiducial 1*/
      //SUN
      if (posX>0+200&&posX<width-200)

      {

        back = #13C7D6;

        strokeWeight(4);
        stroke(#FF7003);
        fill(#FFF303);
        ellipse(posX, 200, 200, 200);

        triangle(posX-20, 90, posX+20, 90, posX, 50);
        triangle(posX-20, 310, posX+20, 310, posX, 350);
        triangle(110+posX, 180, 110+posX, 220, 150+posX, 200);
        triangle(posX-110, 180, posX-110, 220, posX-150, 200);
      } else
      {

        back = #131646;

        for (int s=0; s<x.length; s++)

        {



          strokeWeight(3);
          stroke(#5e89ea);
          fill(#FFFFFF);


          beginShape();

          vertex(x[s]-10, y[s]-10);
          vertex(x[s], y[s]-40);
          vertex(x[s]+10, y[s]-10);
          vertex(x[s]+40, y[s]);
          vertex(x[s]+10, y[s]+10);
          vertex(x[s], y[s]+40);
          vertex(x[s]-10, y[s]+10);
          vertex(x[s]-40, y[s]);
          vertex(x[s]-10, y[s]-10);


          endShape();
        }
      }

      break;
    case 2:
      /*dibuje aquí lo correspondiente al fiducial 2*/


      back = #131646;



      if (degrees(angle)>90&&degrees(angle)<270)
      {
        strokeWeight(3);
        stroke(#626A69);
        fill(#D8D8D8);
        beginShape();
        ellipse(405, posY, 280, 280);

        //println(angle);
/*
        strokeWeight(8);
        stroke(#0D8E1B);
        fill(#3B8315);

        beginShape();

        vertex(0, 940);
        vertex(0, 1080);
        vertex(1920, 1080);
        vertex(1920, 540);
        curveVertex(2000, 600);
        curveVertex(1920, 540);
        curveVertex(1200, 440);
        curveVertex(0, 540);
        curveVertex(0, 300);

        endShape(CLOSE);
        
        */
      } else
      {

        strokeWeight(3);
        stroke(#626A69);
        fill(#D8D8D8);
        beginShape();

        vertex(420, 120+posY-250);
        bezierVertex(120, 160+posY-250, 340, 540+posY-250, 530, 310+posY-250);
        bezierVertex(360, 360+posY-250, 310, 200+posY-250, 420, 120+posY-250);

        endShape(CLOSE);

/*
        strokeWeight(8);
        stroke(#0D8E1B);
        fill(#3B8315);

        beginShape();

        vertex(0, 940);
        vertex(0, 1080);
        vertex(1920, 1080);
        vertex(1920, 540);
        curveVertex(2000, 600);
        curveVertex(1920, 540);
        curveVertex(1200, 440);
        curveVertex(0, 540);
        curveVertex(0, 300);

        endShape(CLOSE);
        */
      }


      break;
    case 3:
      /*dibuje aquí lo correspondiente al fiducial 3*/

      speed=speed+5;


      float value = degrees(angle);
      float m = map(value, 0, 360, 255, 0);


      println(m);
      println(degrees(angle));

      strokeWeight(3);
      stroke(#000000);
      fill(m);

      point(posX, posY);

      beginShape();

      vertex(posX, posY-50);
      quadraticVertex(posX+50, posY-100, posX+100, posY-50);
      quadraticVertex(posX+150, posY-100, posX+200, posY-50);
      quadraticVertex(posX+250, posY, posX+200, posY+50);
      quadraticVertex(posX+150, posY+100, posX+100, posY+50);
      quadraticVertex(posX+50, posY+100, posX, posY+50);
      quadraticVertex(posX-50, posY+100, posX-100, posY+50);
      quadraticVertex(posX-150, posY+100, posX-200, posY+50);
      quadraticVertex(posX-250, posY, posX-200, posY-50);
      quadraticVertex(posX-150, posY-100, posX-100, posY-50);
      quadraticVertex(posX-50, posY-100, posX, posY-50);

      endShape(CLOSE);

      for (int j=0; j<rain; j++)
      {


        justiceY[j]=justiceY[j]+5;
        strokeWeight(2);
        stroke(#292B83);
        fill(#00D6FA);

        //point(posX+justice[j], posY);

        beginShape();

        vertex(posX+justice[j], posY-25+justiceY[j]);
        quadraticVertex(posX+justice[j]+7, posY-8+justiceY[j], posX+justice[j], posY+justiceY[j]);
        quadraticVertex(posX+justice[j]-7, posY-8+justiceY[j], posX+justice[j], posY-25+justiceY[j]);
        endShape(CLOSE);



        if (justiceY[j]>250)
        {

          justice[j] = (int)random(-240, +240);
          justiceY[j] = (int)random(-30, +30);
        }
      }   


      break;
    default:
      break;
    }
  }
}

/* Estos métodos son llamados cuando ocurre un evento TUIO. 
 Hay eventos cuando se agrega, actualiza o elimina un objeto TUIO. 
 Al terminar de dibujar todos los objetos, se llama al metodo refresh*/

void addTuioObject(TuioObject tobj) {
}

void updateTuioObject (TuioObject tobj) {
}

void removeTuioObject(TuioObject tobj) {
}

void refresh(TuioTime frameTime) {
  redraw();
}