void setup(){
  size(400,400);
  background(193,193,193);
}

void draw(){
    //noFill();
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
  strokeWeight(5); //hat
  fill(0,0,0);
  line(245,90, 325,90);
  rect(263,40,52,50);
  stroke(130,134,116);
  line(263,73,315,73);
}

