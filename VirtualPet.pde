import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup(){
  size(400,400);
  background(193,193,193);
  arduino=new Arduino(this, Arduino.list()[1],57600); //change value in bracket to satisfy your arduino
}

void draw(){
    //noFill();
  background(193,193,193);
    //TAIL
  rotate(PI/4);
  noFill();
  strokeWeight(8);
  stroke(130,134,116);
  arc(110, 70, 150, 150, 0, PI/2 );
  rotate(-PI/4);
  stroke(0,0,0);
  strokeWeight(1);
  fill(169,140,109);
  ellipse(267,230,75,40); //closer backfoot
  ellipse(150,232,75,40); //farther backfoot
  triangle(280,75,280,185,385,115); //head
  ellipse(200,175,250,125);
  ellipse(135,232,75,40); //closer back foot
  ellipse(252,230,75,40); //closer front foot
  fill(255,255,255);
  ellipse(320,115,25,25); //eye
  fill(0,0,0);
  ellipse(321,111,10,10); //eyeball
  fill(255,255,255);
  triangle(347,140,337,164,337,150); //teeth
  triangle(328,153,344,144,328,170);
  int angle = arduino.analogRead(5);
  
  if (angle >=295 ){
    strokeWeight(5); //hat
    fill(0,0,0);
    line(245,90, 325,90);
    rect(261,40,50,50);
    stroke(130,134,116);
    line(261,73,311,73);
  }
  else {
    translate(245,90);
    //double angle=0;
    rotate(0.01*-(295-angle));
    rotate(0);
    strokeWeight(5); //hat
    fill(0,0,0);
    line(0,0, 80,0);
    rect(16,-50,50,50);
    stroke(130,134,116);
    line(16,-17,66,-17);
  }
}
