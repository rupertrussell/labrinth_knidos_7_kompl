// Thanks to: https://blogmymaze.wordpress.com/2020/10/18/the-complementary-transposed-classical-7-circuit-labyrinth-in-knidos-style/
// https://blogmymaze.files.wordpress.com/2020/10/knidos_7_kompl_mymaze_2020_en.pdf
// Copyright©: Erwin Reißmann (mymaze)
// This drawing is licensed under the Creative Commons license:
// CC BY-NC-SA 4.0
// Processing 3.5 Java Code by Rupert Russell
// 19 October 2020 - Looking for work outside of the University Sector.


int scale = 50;

void setup() {
  size(1000, 1000);
  noLoop();
  background(255);
}

void draw() {
  translate(width/2, height/2);
  fill(0);
  stroke(0);
  ellipse(0, 0, 5, 5); //m1



  ellipse(-1.5 * scale, 2.60 * scale, 5, 5); //m2

  ellipse(-2.5 * scale, (2.60 + 3.87) * scale, 5, 5); //m4
  ellipse(2.5 * scale, 3.12 * scale, 5, 5); //m3
  ellipse(1.5 * scale, (3.12+ 3.87) * scale, 5, 5); //m5

 
  line(-9 * scale, 8.45 * scale, 9* scale, 8.45* scale);// Bottom horozontal line 

  line(-9 * scale, -9   * scale, 9* scale, -9* scale);// Top horozontal line 
  line(-9 * scale, -9 * scale, -9 * scale, 8.45* scale); // left verticle
  line( 9 * scale, -9 * scale, 9* scale, 8.45* scale); // right verticle



  stroke(255, 0, 0);
  line(0, -9 * scale, 0, 8.45 * scale);  // Center verticle line
  line(-9 * scale, 0, 9 * scale, 0);  // Center horozontal line
  stroke(0);
  
  
  println("m1 - m2 = " + dist(0, 0, -1.5 * scale, 2.6 * scale) /scale);
  println("m2 - m4 = " + dist(-1.5 * scale, 2.6 * scale, -2.5 * scale, (2.60 + 3.87) * scale) /scale);
  println("m2 - m3 = " + dist(-1.5 * scale, 2.60 * scale, 2.5 * scale, 3.12 * scale) /scale);
  println("m3 - m5 = " + dist(2.5 * scale, 3.12 * scale, 1.5 * scale, (3.12+ 3.87) * scale) /scale);
  
  


}
