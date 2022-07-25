//Global Variables
float sandX, sandY, sandWidth, sandHeight;
float seaX, seaY, seaWidth, seaHeight;
float skyX, skyY, skyWidth, skyHeight;
float ellipseDisplayX, ellipseDisplayY, ellipseDisplayXdiameter, ellipseDisplayYdiameter;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float rectX1, rectY1, rectWidth1, rectHeight1;
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float rectDisplayX1, rectDisplayY1, rectDisplayWidth1, rectDisplayHeight1;
Boolean button1ON=false, button2ON=false, buttonText2ON=false, button3ON=false, buttonText3ON=false, button4ON=false, buttonText4ON=false, button5ON=false, buttonText5ON=false, button6ON=false, buttonText6ON=false, button7ON=false, buttonText7ON=false, rectDisplayText1ON=false, rectDisplayText3ON=false, rectDisplayText5ON=false, rectDisplayText6ON=false, rectDisplayText7ON=false, ellipseDisplayON=false, seaON=false, skyON=false, sandON=false;
float rectX2, rectY2, rectWidth2, rectHeight2;
float rectDisplayX3, rectDisplayY3, rectDisplayWidth3, rectDisplayHeight3;
float buttonX4, buttonY4, buttonWidth4, buttonHeight4;
float rectX3, rectY3, rectWidth3, rectHeight3;
float rectDisplayX6, rectDisplayY6, rectDisplayWidth6, rectDisplayHeight6;
float buttonX7, buttonY7, buttonWidth7, buttonHeight7;
float rectX4, rectY4, rectWidth4, rectHeight4;
float rectDisplayX7, rectDisplayY7, rectDisplayWidth7, rectDisplayHeight7;
float rectX5, rectY5, rectWidth5, rectHeight5;
float rectDisplayX4, rectDisplayY4, rectDisplayWidth4, rectDisplayHeight4;
float buttonX5, buttonY5, buttonWidth5, buttonHeight5;
float rectX6, rectY6, rectWidth6, rectHeight6;
float rectDisplayX5, rectDisplayY5, rectDisplayWidth5, rectDisplayHeight5;
float buttonX6, buttonY6, buttonWidth6, buttonHeight6;
float rectX7, rectY7, rectWidth7, rectHeight7;
float rectX8, rectY8, rectWidth8, rectHeight8;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float rectDisplayX2, rectDisplayY2, rectDisplayWidth2, rectDisplayHeight2;
float rectX9, rectY9, rectWidth9, rectHeight9;
float buttonX3, buttonY3, buttonWidth3, buttonHeight3;
color black=#000000, white=#FFFFFF, wink=#CCCCFF, resetWhite=#FFFFFF, lilac=#C8A2C8, yellow=#FDE64B, sky=#00BFFF, sand=#C2B280, sea=#006994, rose=#F6B8D0, green=#BADFB4, leaf=#FF853F;
color blue=#AEC6CF, pink=#F8C8DC, resetButtonColour=#C3B1E1, buttonFill;
//
String quitButtonText= "Quit";
String buttonText1= "Start";
String buttonText2= "Click Me!";
String buttonText3= "Click Here!";
String buttonText4= "Click Me!";
String buttonText5= "Next!";
String buttonText6= "Click Me!";
String buttonText7= "Click Here!";
String rectDisplayText1= "Roses are Red, Violets are Blue.";
String rectDisplayText3= "The ocean breeze is cool in summer.";
String rectDisplayText5= "The leaves are falling from the sky.";
String rectDisplayText6= "Having fun, before it snows.";
String rectDisplayText7= "Awaiting the day's of Spring to come.";
PFont buttonFont;
color purple = #2C08FF; 
//
void setup() 
{
  size(600, 400); //Landscape
  println (width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) { //CANVAS in Display Checker
    //CANVAS Too Big
    appWidth = displayWidth;
    appHeight = displayHeight;
    println("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in Display Checker
  //Display Orientation
  String ls="Landscape or Square", p="portraint", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth>=appHeight ) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populate a variable
  println( DO, orientation );
  if ( orientation==ls ) { //Test for chosen display orientation
    println("Good to Go");
  } else {
    appWidth *= 0; //asignment operator, works like appWidth=appWidth*0
    appHeight *= 0;
    println(instruct);
  }
  //
  //Population
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  rectX1 = width*200/600;
  rectY1 = height*133.3/400;
  rectWidth1 = width*200/600;
  rectHeight1 = height*133.3/400;
  buttonX1 = width*200/600;
  buttonY1 = height*133.3/400;
  buttonWidth1 = width*200/600;
  buttonHeight1 = height*133.3/400;
  rectX2 = width*400/600;
  rectY2 = height*133.3/400;
  rectWidth2 = width*200/600;
  rectHeight2 = height*133.3/400;
  rectDisplayX3 = width*400/600;
  rectDisplayY3 = height*133.3/400;
  rectDisplayWidth3 = width*200/600;
  rectDisplayHeight3 = height*133.3/400;
  buttonX4 = width*400/600;
  buttonY4 = height*100/400;
  buttonWidth4 = width*270/600;
  buttonHeight4 = height*90/400;
  rectX3 = width*0;
  rectY3 = height*133.3/400;
  rectWidth3 = width*200/600;
  rectHeight3 = height*133.3/400;
  rectDisplayX6 = width*0;
  rectDisplayY6 = height*133.3/400;
  rectDisplayWidth6 = width*200/600;
  rectDisplayHeight6 = height*133.3/400;
  buttonX7 = width*0;
  buttonY7 = height*133.3/400;
  buttonWidth7 = width*100/600;
  buttonHeight7 = height*80/400;
  rectX4 = width*200/600;
  rectY4 = height*266.6/400;
  rectWidth4 = width*200/600;
  rectHeight4 = height*133.3/400;
  rectDisplayX7 = width*200/600;
  rectDisplayY7 = height*266.6/400;
  rectDisplayWidth7 = width*200/600;
  rectDisplayHeight7 = height*133.3/400;
  rectX5 = width*0;
  rectY5 = height*266.6/400;
  rectWidth5 = width*200/600;
  rectHeight5 = height*133.3/400;
  sandX = width*0;
  sandY = height*266.6/400;
  sandWidth = width*200/600;
  sandHeight = height*133.3/400;
  seaX = width*0;
  seaY = height*266.6/400;
  seaWidth = width*200/600;
  seaHeight = height*100/400;
  skyX = width*0;
  skyY = height*266.6/400;
  skyWidth = width*200/600;
  skyHeight = height*70/400;
  rectDisplayX4 = width*0;
  rectDisplayY4 = height*266.6/400;
  rectDisplayWidth4 = width*200/600;
  rectDisplayHeight4 = height*133.3/400;
  buttonX5 = width*0;
  buttonY5 = height*266.6/400;
  buttonWidth5 = width*200/600;
  buttonHeight5 = height*60/400;
  rectX6 = width*400/600;
  rectY6 = height*266.6/400;
  rectWidth6 = width*200/600;
  rectHeight6 = height*133.3/400;
  rectDisplayX5 = width*400/600;
  rectDisplayY5 = height*266.6/400;
  rectDisplayWidth5 = width*200/600;
  rectDisplayHeight5 = height*133.3/400;
  buttonX6 = width*400/600;
  buttonY6 = height*266.6/400;
  buttonWidth6 = width*200/600;
  buttonHeight6 = height*200/400;
  rectX7 = width*200/600;
  rectY7 = height*0;
  rectWidth7 = width*200/600;
  rectHeight7 = height*133.3/400;
  quitButtonX = width*200/600;
  quitButtonY = height*0;
  quitButtonWidth = width*133.3/400;
  quitButtonHeight = height*200/600;
  rectX8 = width*400/600;
  rectY8 = height*0;
  rectWidth8 = width*200/600;
  rectHeight8 = height*133.3/400;
  rectDisplayX1 = width*400/600;
  rectDisplayY1 = height*0;
  rectDisplayWidth1 = width*200/600;
  rectDisplayHeight1 = height*133.3/400;
  buttonX2 = width*400/600;
  buttonY2 = height*0;
  buttonWidth2 = width*80/600;
  buttonHeight2 = height*70/400; 
  rectX9 = width*0;
  rectY9 = height*0;
  rectWidth9 = width*200/600;
  rectHeight9 = height*133.3/400;
  ellipseDisplayX = width*3/20;
  ellipseDisplayY = height*4/20;
  ellipseDisplayXdiameter = width/8;
  ellipseDisplayYdiameter = height/6;
  rectDisplayX2 = width*0;
  rectDisplayY2 = height*0;
  rectDisplayWidth2 = width*200/600;
  rectDisplayHeight2 = height*133.3/400;
  buttonX3 = width*0;
  buttonY3 = height*0;
  buttonWidth3 = width*200/600;
  buttonHeight3 = height*60/400;
  //
  //Text Setup
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  buttonFont = createFont ("times new roman", 15);
  //
}//End setup
//
void draw() 
{
  background(black);
  rect( buttonX1, buttonY1, buttonWidth1, buttonHeight1 );
  rect( buttonX2, buttonY2, buttonWidth2, buttonHeight2 );
  rect( buttonX3, buttonY3, buttonWidth3, buttonHeight3 );
  rect( buttonX4, buttonY4, buttonWidth4, buttonHeight4 );
  rect( buttonX5, buttonY5, buttonWidth5, buttonHeight5 );
  rect( buttonX6, buttonY6, buttonWidth6, buttonHeight6 );
  rect( buttonX7, buttonY7, buttonWidth7, buttonHeight7 );
  fill(wink);
  rect( rectX1, rectY1, rectWidth1, rectHeight1 );
  fill(resetWhite);
  fill(lilac);  
  rect( rectX2, rectY2, rectWidth2, rectHeight2 );
  fill(resetWhite);
  fill(lilac);
  rect( rectX3, rectY3, rectWidth3, rectHeight3 );
  rect( rectX4, rectY4, rectWidth4, rectHeight4 );
  fill(resetWhite);
  fill(sea);
  rect( seaX, seaY, seaWidth, seaHeight );
  fill(resetWhite);
  fill(sky);
  rect( skyX, skyY, skyWidth, skyHeight );
  fill(resetWhite);
  fill(sand);
  rect( sandX, sandY, sandWidth, sandHeight );
  fill(resetWhite);
  fill(lilac);
  rect( rectX5, rectY5, rectWidth5, rectHeight5 );
  rect( rectX6, rectY6, rectWidth6, rectHeight6 );
  rect( rectX7, rectY7, rectWidth7, rectHeight7 );
  rect( rectX8, rectY8, rectWidth8, rectHeight8 );
  fill(resetWhite);
  fill(yellow);
  ellipse( ellipseDisplayX, ellipseDisplayY, ellipseDisplayXdiameter, ellipseDisplayYdiameter );
  fill(resetWhite);
  fill(lilac);
  rect( rectX9, rectY9, rectWidth9, rectHeight9 );
  fill(resetWhite);
  fill(rose);
  if ( button1ON==true ) rect( rectDisplayX1, rectDisplayY1, rectDisplayWidth1, rectDisplayHeight1 ); //Button 1
  fill(resetWhite);
  fill(sky);
  if ( button2ON==true ) rect( rectDisplayX2, rectDisplayY2, rectDisplayWidth2, rectDisplayHeight2 ); //Button 2
  fill(resetWhite);
  fill(sea);
  if ( button3ON==true ) rect( rectDisplayX3, rectDisplayY3, rectDisplayWidth3, rectDisplayHeight3 ); //Button 3
  fill(resetWhite);
  fill(wink);
  if ( button4ON==true ) rect( rectDisplayX4, rectDisplayY4, rectDisplayWidth4, rectDisplayHeight4 ); //Button 4
  fill(resetWhite);
  fill(leaf);
  if ( button5ON==true ) rect( rectDisplayX5, rectDisplayY5, rectDisplayWidth5, rectDisplayHeight5 ); //Button 5
  fill(resetWhite);
  fill(white);
  if ( button6ON==true ) rect( rectDisplayX6, rectDisplayY6, rectDisplayWidth6, rectDisplayHeight6 ); //Button 6
  fill(resetWhite);
  fill(green);
  if ( button7ON==true ) rect( rectDisplayX7, rectDisplayY7, rectDisplayWidth7, rectDisplayHeight7 ); //Button 7
  fill(resetWhite);
  fill(sand);
  if (sandON==true) rect( sandX, sandY, sandWidth, sandHeight);
  fill(resetWhite);
  fill(sea);
  if ( seaON==true ) rect( seaX, seaY, seaWidth, seaHeight );
  fill(resetWhite);
  fill(sky);
  if ( skyON==true ) rect( skyX, skyY, skyWidth, skyHeight );
  fill(resetWhite);
  fill(yellow);
  if ( ellipseDisplayON==true ) ellipse(  ellipseDisplayX, ellipseDisplayY, ellipseDisplayXdiameter, ellipseDisplayYdiameter ); //Sun
  fill(resetWhite);
  if ( buttonText2ON==true ) {
  fill(black); 
  textAlign (CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 15); 
  //
  //Specific Text per button
  text(buttonText2, buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  fill(resetWhite); //Will change the fill() on all shapes the second time repeated in draw()
  }
  if ( buttonText3ON==true ) {
  fill(black); 
  textAlign (CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 15); 
  //
  //Specific Text per button
  text(buttonText3, buttonX3, buttonY3, buttonWidth3, buttonHeight3);
  fill(resetWhite); //Will change the fill() on all shapes the second time repeated in draw()
  } 
  if ( buttonText4ON==true ) {
  fill(white); 
  textAlign (CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 15); 
  //
  //Specific Text per button
  text(buttonText4, buttonX4, buttonY4, buttonWidth4, buttonHeight4);
  fill(resetWhite); //Will change the fill() on all shapes the second time repeated in draw()
  }
  if ( buttonText5ON==true ) {
  fill(black); 
  textAlign (CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 15); 
  //
  //Specific Text per button
  text(buttonText5, buttonX5, buttonY5, buttonWidth5, buttonHeight5);
  fill(resetWhite); //Will change the fill() on all shapes the second time repeated in draw()
  }
  if ( buttonText6ON==true ) {
  fill(black); 
  textAlign (CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 15); 
  //
  //Specific Text per button
  text(buttonText6, buttonX6, buttonY6, buttonWidth6, buttonHeight6);
  fill(resetWhite); //Will change the fill() on all shapes the second time repeated in draw()
  }
  if ( buttonText7ON==true ) {
  fill(black); 
  textAlign (CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 15); 
  //
  //Specific Text per button
  text(buttonText7, buttonX7, buttonY7, buttonWidth7, buttonHeight7);
  fill(resetWhite); //Will change the fill() on all shapes the second time repeated in draw()
  }
  if ( rectDisplayText1ON==true ) {
  fill(black); 
  textAlign (CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 15); 
  //
  //Specific Text per button
  text(rectDisplayText1, rectDisplayX1, rectDisplayY1, rectDisplayWidth1, rectDisplayHeight1);
  fill(resetWhite); //Will change the fill() on all shapes the second time repeated in draw()
  }
  if ( rectDisplayText3ON==true ) {
  fill(white); 
  textAlign (CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 15); 
  //
  //Specific Text per button
  text(rectDisplayText3, rectDisplayX3, rectDisplayY3, rectDisplayWidth3, rectDisplayHeight3);
  fill(resetWhite); //Will change the fill() on all shapes the second time repeated in draw()
  }
  if ( rectDisplayText5ON==true ) {
  fill(black); 
  textAlign (CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 15); 
  //
  //Specific Text per button
  text(rectDisplayText5, rectDisplayX5, rectDisplayY5, rectDisplayWidth5, rectDisplayHeight5);
  fill(resetWhite); //Will change the fill() on all shapes the second time repeated in draw()
  }
  if ( rectDisplayText6ON==true ) {
  fill(black); 
  textAlign (CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 15); 
  //
  //Specific Text per button
  text(rectDisplayText6, rectDisplayX6, rectDisplayY6, rectDisplayWidth6, rectDisplayHeight6);
  fill(resetWhite); //Will change the fill() on all shapes the second time repeated in draw()
  }
  if ( rectDisplayText7ON==true ) {
  fill(black); 
  textAlign (CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 15); 
  //
  //Specific Text per button
  text(rectDisplayText7, rectDisplayX7, rectDisplayY7, rectDisplayWidth7, rectDisplayHeight7);
  fill(resetWhite); //Will change the fill() on all shapes the second time repeated in draw()
  }
  //Text Draw, General Code for any text
  //Note: visualization rectangle is in main program
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 25); //Change the number until it fits, largest font size
  //
  //Specific Text per button
  text(buttonText1, buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  fill(resetWhite); //Will change the fill() on all shapes the second time repeated in draw()
  //Hover-over
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonFill = green;
  } else {
    buttonFill = lilac;
  }//End Hover-Over
  //
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetButtonColour);
  //
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 25); //Change the number until it fits, largest font size
  //
  //Specific Text per button
  text(quitButtonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetWhite); //Will change the fill() on all shapes the second time repeated in draw()
  //  
}//End draw
//
//void keyPressed() {}//End keyPressed
//
void mousePressed() {
  button1ON=false;
  button2ON=false;
  buttonText2ON=false;
  button3ON=false;
  buttonText3ON=false;
  button4ON=false;
  buttonText4ON=false;
  button5ON=false;
  buttonText5ON=false;
  button6ON=false;
  buttonText6ON=false;
  button7ON=false;
  buttonText7ON=false;
  rectDisplayText1ON=false;
  rectDisplayText3ON=false;
  rectDisplayText5ON=false;
  rectDisplayText6ON=false;
  rectDisplayText7ON=false;
  ellipseDisplayON=false;
  seaON=false;
  skyON=false;
  sandON=false;
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  if ( mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1 ) button1ON=true;
  if ( mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1 ) buttonText2ON=true;
  if ( mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1 ) rectDisplayText1ON=true;
  if ( mouseX>=buttonX2 && mouseX<=buttonX2+buttonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+buttonHeight2 ) rectDisplayText1ON=true;
  if ( mouseX>=buttonX2 && mouseX<=buttonX2+buttonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+buttonHeight2 ) ellipseDisplayON=true;
  if ( mouseX>=buttonX2 && mouseX<=buttonX2+buttonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+buttonHeight2 ) button2ON=true;
  if ( mouseX>=buttonX2 && mouseX<=buttonX2+buttonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+buttonHeight2 ) button1ON=true;
  if ( mouseX>=buttonX2 && mouseX<=buttonX2+buttonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+buttonHeight2 ) buttonText2ON=true;
  if ( mouseX>=buttonX2 && mouseX<=buttonX2+buttonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+buttonHeight2 ) buttonText3ON=true;
  if ( mouseX>=buttonX3 && mouseX<=buttonX3+buttonWidth3 && mouseY>=buttonY3 && mouseY<=buttonY3+buttonHeight3 ) rectDisplayText1ON=true;
  if ( mouseX>=buttonX3 && mouseX<=buttonX3+buttonWidth3 && mouseY>=buttonY3 && mouseY<=buttonY3+buttonHeight3 ) ellipseDisplayON=true;
  if ( mouseX>=buttonX3 && mouseX<=buttonX3+buttonWidth3 && mouseY>=buttonY3 && mouseY<=buttonY3+buttonHeight3 ) rectDisplayText3ON=true;
  if ( mouseX>=buttonX3 && mouseX<=buttonX3+buttonWidth3 && mouseY>=buttonY3 && mouseY<=buttonY3+buttonHeight3 ) button3ON=true;
  if ( mouseX>=buttonX3 && mouseX<=buttonX3+buttonWidth3 && mouseY>=buttonY3 && mouseY<=buttonY3+buttonHeight3 ) buttonText3ON=true;
  if ( mouseX>=buttonX3 && mouseX<=buttonX3+buttonWidth3 && mouseY>=buttonY3 && mouseY<=buttonY3+buttonHeight3 ) button2ON=true;
  if ( mouseX>=buttonX3 && mouseX<=buttonX3+buttonWidth3 && mouseY>=buttonY3 && mouseY<=buttonY3+buttonHeight3 ) button1ON=true;
  if ( mouseX>=buttonX3 && mouseX<=buttonX3+buttonWidth3 && mouseY>=buttonY3 && mouseY<=buttonY3+buttonHeight3 ) buttonText2ON=true;
  if ( mouseX>=buttonX3 && mouseX<=buttonX3+buttonWidth3 && mouseY>=buttonY3 && mouseY<=buttonY3+buttonHeight3 ) buttonText4ON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) seaON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) skyON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) sandON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) rectDisplayText1ON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) rectDisplayText3ON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) button3ON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) buttonText3ON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) button2ON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) button1ON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) buttonText2ON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) button4ON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) button1ON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) buttonText4ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) buttonText5ON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) buttonText5ON=true;
  if ( mouseX>=buttonX4 && mouseX<=buttonX4+buttonWidth4 && mouseY>=buttonY4 && mouseY<=buttonY4+buttonHeight4 ) ellipseDisplayON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) seaON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) skyON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) sandON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) ellipseDisplayON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) rectDisplayText1ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) rectDisplayText3ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) rectDisplayText5ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) button3ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) buttonText3ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) button2ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) button1ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) buttonText2ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) button4ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) button1ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) buttonText4ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) button5ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) buttonText5ON=true;
  if ( mouseX>=buttonX5 && mouseX<=buttonX5+buttonWidth5 && mouseY>=buttonY5 && mouseY<=buttonY5+buttonHeight5 ) buttonText6ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) ellipseDisplayON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) seaON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) skyON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) sandON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) rectDisplayText1ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) rectDisplayText3ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) rectDisplayText5ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) rectDisplayText6ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) button6ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) button3ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) buttonText3ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) button2ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) button1ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) buttonText2ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) button4ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) button1ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) buttonText4ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) button5ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) buttonText5ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) buttonText6ON=true;
  if ( mouseX>=buttonX6 && mouseX<=buttonX6+buttonWidth6 && mouseY>=buttonY6 && mouseY<=buttonY6+buttonHeight6 ) buttonText7ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) seaON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) skyON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) sandON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) ellipseDisplayON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) rectDisplayText1ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) rectDisplayText3ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) rectDisplayText5ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) rectDisplayText6ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) rectDisplayText7ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) buttonText7ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) button7ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) button6ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) button3ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) buttonText3ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) button2ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) button1ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) buttonText2ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) button4ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) button1ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) buttonText4ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) button5ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) buttonText5ON=true;
  if ( mouseX>=buttonX7 && mouseX<=buttonX7+buttonWidth7 && mouseY>=buttonY7 && mouseY<=buttonY7+buttonHeight7 ) buttonText6ON=true;
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
}//End mousePressed
//
//End MAIN Program