

import processing.sound.*;
 
float C4, D4, E4, F4, G4, A4, B4;
char currentNote;
SinOsc soundOutput;

void setup()
{
    // Fill in note frequencies here 
    
    C4 = 261.626;     //Middle C (C4)
    D4 = 293.665;
    E4 = 329.628;
    A4 = 359.780;
    B4 = 339.846;
       
    size(200,200);
    textSize(64);
    fill(0);
   currentNote = '?';
    soundOutput = new SinOsc(this); 
    soundOutput.play();
    soundOutput.freq(0);      //start playing nothing (0 frequency)
}

void draw() 
{
    background(255);
    text(currentNote, width/2-18, height/2+18);
}

void keyPressed()
{
    if (key != CODED)              //change display
      currentNote = key;           //only if necessary
    if (key == 'd')
      soundOutput.freq(1);
    if (key == 'f')
      soundOutput.freq(10);
    if (key == 'g')
      soundOutput.freq(100);
    if (key == 'h')
      soundOutput.freq(1000);
    if (key == 'j')
      soundOutput.freq(10000);
    if (key == 'k')
      soundOutput.freq(100000);
    if (key == 'l')
      soundOutput.freq(1000000);
}

void keyReleased()
{
    if (key == currentNote)
    {
      currentNote = '?';
      soundOutput.freq(0);
    }
}
 
