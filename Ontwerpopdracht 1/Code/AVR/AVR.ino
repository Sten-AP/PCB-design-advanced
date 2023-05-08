#include <Adafruit_NeoPixel.h>
#ifdef AVR
#include <avr/power.h>
#endif

#define PINU 3 //PA5 LEDS uren
#define PINM 13 //PA3 LEDS minuten
#define NUMPIXELS 12

int mosfet = 9; //PB0 MOSFET_PIN

Adafruit_NeoPixel pixels(NUMPIXELS, PINU, NEO_GRB + NEO_KHZ800);
#define DELAYVAL 500

void setup() {
  pinMode(mosfet, OUTPUT);
  digitalWrite(mosfet, HIGH);

  #if defined(AVR_ATtiny85) && (F_CPU == 16000000) //416 16000000 van (16Mhz)
    clock_prescale_set(clock_div_1);
  #endif

  pixels.begin();
}

void loop() {
  pixels.clear();

  for(int i=0; i<NUMPIXELS; i++) {
    pixels.setPixelColor(i, pixels.Color(50, 0, 0));
    pixels.show();
    delay(DELAYVAL);
  }
}