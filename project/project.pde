import processing.sound.*;
SoundFile song;
boolean isPlaying;
float angle=5;
float xpos;
float ypos;
void setup() {
  size(1000, 1000, P3D);
  noStroke();
  xpos= width/2;
  ypos=width/2;
  noFill();
   song  = new SoundFile(this, "TenetSong.mp3");
  song.play();
  isPlaying = true;
}
void draw() 
{
  background(0,0,0);
  xpos= width/2;
  ypos=width/2;
  topcircle();  
  bottomcircle();
  leftcircle(); 
  rightcircle();
  topsquares();
  leftsquares();
  rightsquares();
  bottomsquares();
  noFill();//makes the sphere see through//
  stroke(#FC0A8C);
  translate(width/2, height/2, 0);  
  rotateY(radians(angle));
  scale(1, 1, 1);          
  sphere(100);           
  angle = angle + 50;
}
void topsquares() {
  for (int topsquares=0; topsquares<10; topsquares+=1) {
    for (int topsquares2=0; topsquares2<2; topsquares2+=1) {
      if ((topsquares + topsquares2 + 1) % 2 == 0) {
        fill(random(621), random(50), random(221));// a random color is picked for the squares on the top // 
      } else {
        fill(random(873), random(50), random(211));// a random color is picked for the squares on the top //
      }
      rect(topsquares*100+random(15)+25, topsquares2*100+random(15)+25, random(50, 10), random(50, 10));// random size is picked for the squares at the top 
    }
  }
}
void leftsquares() {
  for (int leftsquares=0; leftsquares<2; leftsquares+=1) {
    for (int leftsquares2=0; leftsquares2<10; leftsquares2+=1) {
      if ((leftsquares + leftsquares2 + 1) % 2 == 0) {
        fill(random(621), random(50), random(221));// a random color is picked for the squares on the left side //
      } else {
        fill(random(873), random(50), random(211));// a random color is picked for the squares on the left side //
      }
      rect(leftsquares*100+random(15)+25, leftsquares2*100+random(15)+25, random(50, 10), random(50, 10));// a roandom size is picked for the squares on the left side// 
    }
  }
}
void rightsquares() {
  for (int rigthtsquares=0; rigthtsquares<2; rigthtsquares+=1) {
    for (int rigthtsquares2=0; rigthtsquares2<10; rigthtsquares2+=1) {
      if ((rigthtsquares + rigthtsquares2 + 1) % 2 == 0) {
        fill(random(621), random(50), random(221));// a random color is picked for the squares on the right side //
      } else {
        fill(random(873), random(50), random(211));// a random color is picked for the squares on the right side //
      }
      rect(rigthtsquares*100+random(15)+825, rigthtsquares2*100+random(15)+25, random(50, 10), random(50, 10));// a random size is picked for the squares on the right side of the screen//
    }
  }
}
void bottomsquares() {
  for (int bottomsquares=0; bottomsquares<10; bottomsquares+=1) {
    for (int bottomsquares2=0; bottomsquares2<2; bottomsquares2+=1) {
      if ((bottomsquares+ bottomsquares2 + 1) % 2 == 0) {
        fill(random(621), random(50), random(221));// a random color is picked for the squares on the bottom //
      } else {
        fill(random(873), random(50), random(211));// a random color is picked for the squares on the bottom //
      }
      rect(bottomsquares*100+random(15)+25, bottomsquares2*100+random(15)+825, random(50, 10), random(50, 10));// a random size is picked for the squares at the bottom
    }
  }
}
void rightcircle() {
  for (int rightcircle=0; rightcircle<2; rightcircle+=1) {
    for (int rightcircle2=0; rightcircle2<6; rightcircle2+=1) {
      if ((rightcircle+ rightcircle2 + 1) % 2 == 0) {
        fill(random(621), random(50), random(221));// a random color is picked for the circles on the right side //
      } else {
        fill(random(873), random(50), random(211));// a random color is picked for the circles on the right side //
      }
      ellipse(rightcircle*100+random(15)+650, rightcircle2*100+random(15)+250, random(50, 10), random(50, 10));// a random size is picked for the circles on the right side
    }
  }
}
void leftcircle() {
  for (int leftcircle=0; leftcircle<2; leftcircle+=1) {
    for (int leftcircle2=0; leftcircle2<6; leftcircle2+=1) {
      if ((leftcircle+ leftcircle2 + 1) % 2 == 0) {
        fill(random(621), random(50), random(221));// a random color is picked for the circles on the left side //
      } else {
        fill(random(873), random(50), random(211));// a random color is picked for the circles on the left side //
      }
      ellipse(leftcircle*100+random(15)+250, leftcircle2*100+random(15)+250, random(50, 10), random(50, 10));// a random size is picked for the circles on the left side//
  
  
    }
  }
}
void topcircle() {
  for (int topcircle=0; topcircle<2; topcircle+=1) {
    for (int topcircle2=0; topcircle2<2; topcircle2+=1) {
      if ((topcircle+ topcircle2 + 1) % 2 == 0) {
        fill(random(621), random(50), random(221));// a random color is picked for the circles on the top//
      } else {
        fill(random(873), random(50), random(211));// a random color is picked for the circles on the top //
      }
      ellipse(topcircle*100+random(15)+450, topcircle2*100+random(15)+250, random(50, 10), random(50, 10));//a random size is picked for the circles on the top
    }
  }
}
void bottomcircle() {
  for (int bottomcircle=0; bottomcircle<2; bottomcircle+=1) {
    for (int bottomcircle2=0; bottomcircle2<2; bottomcircle2+=1) {
      if ((bottomcircle+ bottomcircle2 + 1) % 2 == 0) {
        fill(random(621), random(50), random(221));// a random color is picked for the circles on the bottom//
      } else {
        fill(random(873), random(50), random(211));// a random color is picked for the circles on the bottom //
      }
      ellipse(bottomcircle*100+random(15)+450, bottomcircle2*100+random(15)+650, random(50, 10), random(50, 10));//a random size is picked forthe cicrles on the bottom//
    }
