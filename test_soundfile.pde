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
float playbackRate = 1;
float volume = 1;

void setup() {

  DnB = new SoundFile(this, "tf.mp3");

  DnB.loop();

  size(600, 600);

  background(0);

  fill(255);
  textSize(20);
}
void draw() {
  background(0);
  
  playbackRate =  map(mouseX, 0, width, 0.5, 2.0);
  DnB.rate(playbackRate);


volume = (map(mouseY, 0, width, 0.2, 1.5)); 
  DnB.amp(volume);

  text(DnB.duration() + " Seconds", 350, 50);
  text(DnB.sampleRate() + " Hz", 350, 70);
  text(DnB.frames() + " Frames", 350, 90);
  text(playbackRate + " Rate", 350, 110);
  text(volume + " Volume", 350, 130);
}


void keyPressed() {
 
  
  
}