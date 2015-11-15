import processing.sound.*;

//Declare soundfile
SoundFile DnB;
//Declare FFT class
FFT fft;
//Audiodevice
AudioDevice device;


float getrate;


//declare scaling factor
int scale = 5;

//# of FFT bands
int bands = 128;

void setup() {
  
  DnB = new SoundFile(this, "DnB.mp3");

  DnB.loop();

  size(600, 600);

  background(0);

  fill(255);
  textSize(20);
  text(DnB.duration() + " Seconds", 350, 50);
  text(DnB.sampleRate() + " Hz", 350, 70);
  text(DnB.frames() + " Frames", 350, 90);
}
void draw() {
   DnB.rate(map(mouseX, 0, width, 0.5, 2.0));
   
     DnB.amp(map(mouseY, 0, width, 0.2, 1.0)); 
}


void keyPressed() {
  if (key == ']') {
    DnB.rate(4);
  }
  if (key == '[') {
    DnB.rate(0.5);
  }

  if (key == 'p') {
    DnB.rate(1);
  }
}