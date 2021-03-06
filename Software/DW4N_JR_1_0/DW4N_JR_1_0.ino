/*
 * This is the software pack for the Dreamwever 4N Jr
 * Realtime sequencer from Cyber City Circuits.
 * David Ray - www.CyberCityCircuits.com
 * Chris Williamson - www.CyberCityCircuits.com
 * 
 */
 
#include "pitches.h"  //pitches.h should be in the same folder as this file

//Below is a list of all the pins used in the Dreamweaver 4N
//Pin  1 - Serial Data
//Pin  2 - Serial Data
//Pin  3 - N/C
//Pin  4 - N/C
//Pin  5 - SPEAKER
//Pin  6 - LED 2
//Pin  7 - LED 3
//Pin  8 - LED 4
//Pin  9 - LED 1
//Pin 10 - Button 4
//Pin 11 - Button 3
//Pin 12 - Button 2
//Pin 13 - Button 1
//Pin 14 - Duration Knob
//Pin 15 - Spacing Knob
//Pin 16 - Value 4 Knob (Knob 4)
//Pin 17 - Value 3 Knob (Knob 3)
//Pin 18 - Value 2 Knob (Knob 2), 
//Pin 19 - Value 1 Knob (Knob 1)
//Pin 20 - N/C
//Pin 21 - N/C
//Pin 22 - N/C

//define pins for controller
int sw_1     = 13;
int sw_2     = 12;
int sw_3     = 11;
int sw_4     =  10;

int led_1    =  9;
int led_2    =  6;
int led_3    =  7;
int led_4    =  8;

int io1      =  5; 
int io2      =  3;
int io3      =  4;
int io4      = 20;

int knob_1   = 19;
int knob_2   = 18;
int knob_3   = 17;
int knob_4   = 16;
int knob_5   = 14;
int knob_6   = 15;

//set starting values for RGB lights
int r = 0;
int g = 0;
int b = 0;
int brightness_default = 64;  //31,32,33,35 36, 25 cause error
int brightness = brightness_default;

//define push buttons
int button_pins[4] = {sw_1, sw_2, sw_3, sw_4};
int state_buttons_last[9];
int state_buttons[9] = {0,0,0,0,0,0,0,0,0};  
unsigned long lastDebounceTime[9];
unsigned long debounceDelay = 50; //Debounce is 50ms

//define analog knobs
int knob_pins[6] = {knob_1, knob_2, knob_3, knob_4, knob_5, knob_6};
int value_knobs[6];

//define the audio output
int speaker = io1;

//setup storage values for different things
int note_1;
int note_2;
int note_3;
int note_4;
int length;
int spread;
int state_note[4];  //Is the note on or off? 0 = off
int state_beat;
unsigned long timer_length;
unsigned long timer_spread;
unsigned long timer_light;
int index_note;

/* To change the scale or mode of the Dreamweaver 4N, comment out the
 *  current scale or mode and uncomment the one you want to use.
 */

/*
//Chromatic
int notes[] = {
//    C1, CS1, D1, DS1, E1, F1, FS1, G1, GS1, A1, AS1, B1,
    C2, CS2, D2, DS2, E2, F2, FS2, G2, GS2, A2, AS2, B2,
    C3, CS3, D3, DS3, E3, F3, FS3, G3, GS3, A3, AS3, B3,
    C4, CS4, D4, DS4, E4, F4, FS4, G4, GS4, A4, AS4, B4,
    C5, CS5, D5, DS5, E5, F5, FS5, G5, GS5, A5, AS5, B5,  
    C6, CS6, D6, DS6, E6, F6, FS6, G6, GS6, A6, AS6, B6  
};
*/

/*
//Major
int notes[] = {
//    C1, D1, E1, F1, G1, A1, B1,
    C2, D2, E2, F2, G2, A2, B2,
    C3, D3, E3, F3, G3, A3, B3,
    C4, D4, E4, F4, G4, A4, B4,
    C5, D5, E5, F5, G5, A5, B5,  
    C6, D6, E6, F6, G6, A6, B6,  
    C7
};
*/

//Minor
int notes[] = {
//    C1, D1, E1, F1, G1, A1, B1,
    C2, D2, DS2, F2, G2, GS2, AS2,
    C3, D3, DS3, F3, G3, GS3, AS3,
    C4, D4, DS4, F4, G4, GS4, AS4,
    C5, D5, DS5, F5, G5, GS5, AS5,
    C6, D6, DS6, F6, G6, GS6, AS6,
    C7
};

//Minor
int notes5[] = {
//    C1, D1, E1, F1, G1, A1, B1,
    G2, GS2, AS2, C3, D3, DS3, F3, 
    G3, GS3, AS3, C4, D4, DS4, F4, 
    G4, GS4, AS4, C5, D5, DS5, F5, 
    G5, GS5, AS5, C6, D6, DS6, F6, 
    G6, GS6, AS6, C7, D7, DS7, F7
};

//This is used to determine how wide to space notes apart from eachother
//along the linear knob.  This is based on how many notes you have in the 
//notes array.
int notes_size = (sizeof(notes) / sizeof(notes[0]));;
int max_knob_value = 980;
float conv_factor = ((max_knob_value * 1.00) / (notes_size * 1.00));


void setup(){
  Serial.begin(115200);
  Serial.print("Size of Notes: "); Serial.println(notes_size);
  Serial.print("Conversion Factor: "); Serial.println(conv_factor);
  
  for (int i = 0; i < 9; i++){
    pinMode(button_pins[i], INPUT_PULLUP);
  }

  pinMode(led_1,   OUTPUT);
  pinMode(led_2,   OUTPUT);
  pinMode(led_3,   OUTPUT);
  pinMode(led_4,   OUTPUT);

  digitalWrite(led_1, HIGH); delay(50); digitalWrite(led_1, LOW);
  digitalWrite(led_2, HIGH); delay(50); digitalWrite(led_2, LOW);
  digitalWrite(led_3, HIGH); delay(50); digitalWrite(led_3, LOW);
  digitalWrite(led_4, HIGH); delay(50); digitalWrite(led_4, LOW);
  digitalWrite(led_3, HIGH); delay(50); digitalWrite(led_3, LOW);
  digitalWrite(led_2, HIGH); delay(50); digitalWrite(led_2, LOW);
  digitalWrite(led_1, HIGH); delay(50); digitalWrite(led_1, LOW);
  
  //delay(250);  
}

void loop(){
  check_knobs();
  check_buttons();
  play_knobs();
  //check_state();

  //if(millis() > (timer_light)) {
  //  brightness = brightness - 2;
  //  if(brightness < (brightness_default / 2)) { 
  //    brightness = (brightness_default / 2); 
  //  }
  //}

  //Serial.print(" Brightness: ");
  //Serial.println(brightness);

}

void check_state(){
  Serial.print("Time: "); Serial.print(millis());
  
  /*
  for(int i=0; i<6; i++){
    Serial.print(" P"); Serial.print(i); Serial.print(": "); Serial.print(value_knobs[i]);    
  }
  */
  
  /*
  for(int i=0; i<9; i++){
    Serial.print(" "); Serial.print(i); Serial.print(": "); Serial.print(state_buttons[i]);
  }
  */

  //Serial.print(" Note 1: ");   Serial.print(note_1); Serial.print(" - "); Serial.print(state_note[0]);
  //Serial.print(" Note 2: ");   Serial.print(note_2); Serial.print(" - "); Serial.print(state_note[1]);
  //Serial.print(" Note 3: ");   Serial.print(note_3); Serial.print(" - "); Serial.print(state_note[2]);
  //Serial.print(" Note 4: ");   Serial.print(note_4); Serial.print(" - "); Serial.print(state_note[3]);
  //Serial.print(" Length: ");  Serial.print(length);
  Serial.print(" Spread: ");  Serial.print(spread);
  Serial.print(" Timer Spread: ");  Serial.print(timer_spread);
  Serial.print(" Timer Length: ");  Serial.print(timer_length);
  Serial.println();
}

void check_buttons(){
  int reading;
  for(int i = 0; i < 4; i++) {
    reading = digitalRead(button_pins[i]);
    if(reading != state_buttons_last[i]) {
      lastDebounceTime[i] = millis() + debounceDelay;
    }
    if(millis() > lastDebounceTime[i]) {
      if(reading != state_buttons[i]) {
        state_buttons[i] = reading;
        Serial.print("Button: ");
        Serial.print(i);
        if(state_buttons[i] == 0) {
          Serial.println(" pressed");
          //Below this is a switch statement to determine what state the button is actually in. We use this to turn on, or turn off, each specific note.
          switch (i) {
            case 0:  //Button 1
              if(state_note[0] == 0) {
                state_note[0] = 1;
              } else {
                state_note[0] = 0;
              }
              break;
            case 1:  //Button 2
              if(state_note[1] == 0) {
                state_note[1] = 1;
              } else {
                state_note[1] = 0;
              }
              break;              
            case 2:  //Button 3
              if(state_note[2] == 0) {
                state_note[2] = 1;
              } else {
                state_note[2] = 0;
              }
              break;
            case 3:  //Button 4
              if(state_note[3] == 0) {
                state_note[3] = 1;
              } else {
                state_note[3] = 0;
              }
              break;              
          }
        } 
        else {
          //Serial.println(" released");
        }
      }
    }
    state_buttons_last[i] = reading;
  }
}




void check_knobs(){

  //Lets check all of the knob values, and determine what we need to control
  
  for (int i=0; i<6; i++){
    value_knobs[i] = analogRead(knob_pins[i]);
  }
  
  note_1   = value_knobs[0] / conv_factor;
  note_2   = value_knobs[1] / conv_factor;
  note_3   = value_knobs[2] / conv_factor;
  note_4   = value_knobs[3] / conv_factor;
  length = value_knobs[4] + 15;
  //Serial.print("Length: ");
  //Serial.println(length);
  spread  = value_knobs[5];
 
}

void playNote(int note, int led) {
  digitalWrite(led, HIGH);
  if(millis() > timer_spread) { 
    //if the note is outside the defined array, play the highest note
    if (note >= notes_size-1){
      tone(speaker, notes[notes_size-1], length);
    }
    else{
      tone(speaker, notes[note], length);
    }
    timer_spread = millis() + spread;
    timer_light  = millis() + length;
  }
}


void play_knobs(){
  if(millis() > timer_length) {
    digitalWrite(led_1, LOW);
    digitalWrite(led_2, LOW);
    digitalWrite(led_3, LOW);
    digitalWrite(led_4, LOW);
    switch (index_note) {
      case 0:
        if(state_note[0] == 1) { playNote(note_1, led_1);}    
        index_note = 1;
        if(state_beat == 1) {
          if(state_note[1] == 0) { index_note = 2; }
          if(state_note[1] == 0 && state_note[2] == 0) { index_note = 3; }
          if(state_note[1] == 0 && state_note[2] == 0 && state_note[3] == 0) { index_note = 0; }
        }
        break;
      case 1:
        if(state_note[1] == 1) { playNote(note_2, led_2);}
        index_note = 2;
        if(state_beat == 1) {
          if(state_note[2] == 0) { index_note = 3; }
          if(state_note[2] == 0 && state_note[3] == 0) { index_note = 0; }
          if(state_note[2] == 0 && state_note[3] == 0 && state_note[0] == 0) { index_note = 1; }
        }
        break;
      case 2:
        if(state_note[2] == 1) { playNote(note_3, led_3);}
        index_note = 3;
        if(state_beat == 1) {
          if(state_note[3] == 0) { index_note = 0; }
          if(state_note[3] == 0 && state_note[0] == 0) { index_note = 1; }
          if(state_note[3] == 0 && state_note[0] == 0 && state_note[1] == 0) { index_note = 2; }
        }
        break;
      case 3:
        if(state_note[3] == 1) { playNote(note_4, led_4);}
        index_note = 0;
        if(state_beat == 1) {
          if(state_note[0] == 0) { index_note = 1; }
          if(state_note[0] == 0 && state_note[1] == 0) { index_note = 2; }
          if(state_note[0] == 0 && state_note[1] == 0 && state_note[2] == 0) { index_note = 3; }
        }
        break;
    }
    timer_length = millis() + length + spread;
  }
}

/*
void setledcolor(int color, int index) {
  //Color can be 0 to 1000
  //Convert this number to RGB Value
  
  float color_factor = 0.7806;
  int temp_value = (max_knob_value * color_factor) / 2;   
  int temp_color = color * color_factor;                  //Set a variable to what 'color' the current tone is. 
    
  if(temp_color <= temp_value) {                          //If the value is under halfway, it'll be a redish hue
    r = 255 - temp_color;
    b = temp_color;
    g = 0;
  } 
  else {                                                  //Else we go over to the blue and then into the green spectrum the 'higher' pitched the note is
    r = 0;
    b = 255 - (temp_color - temp_value);
    g = temp_color - temp_value;    
  }

  //Set up the bounds for all of the colors. Minimum is 0 (off), maximum is 255 (wide open)
  if(r < 0) { r = 0; }
  if(r > 255) { r = 255; }
  if(g < 0) { g = 0; }
  if(g > 255) { g = 255; }
  if(b < 0) { b = 0; }
  if(b > 255) { b = 255; }

  //WE CANNOT DRIVE THE LEDS AT MAX BRIGHTNESS
  //We need to take all of these numbers and lower the brightness. Division by 4 seems to work best
  r = r / 4;
  g = g / 4;
  b = b / 4;
  
  for(int x = 0; x < 8; x++) {
    strip.setPixelColor(x, strip.Color(r,g,b));         //  Set pixel's color (in RAM)        
  }

  int white = 255;  //Set up a white color variable
  white = white / 8; //Change the white brightness down as well. Division by 8 seems to work best
  
  strip.setPixelColor(index * 2, strip.Color(white,white,white));           //Find the current tone that the board is on, and set this pixel
  strip.setPixelColor((index * 2) + 1, strip.Color(white,white,white));     //and the next pixel to our white value, to show where the sequencer is
  
  brightness = brightness_default;  //max out our brightness variable before
  strip.setBrightness(brightness);  //physically set this brightness on the board
  strip.show();                     //send all the data to the LEDs

  /*
   * Everything below this is for debugging color values

  Serial.print("R: ");
  Serial.print(r);
  Serial.print(" G: ");
  Serial.print(g);
  Serial.print(" B: ");
  Serial.println(b);
   */

//}
