#include <tinyNeoPixel.h>
#ifdef AVR
#include <avr/power.h>
#endif

#define PINU PA5 //PA5 LEDS uren
#define PINM PA6 //PA6 LEDS minuten
#define NUM_LEDS 12

int mosfet = 13; //PA4 MOSFET_PIN

tinyNeoPixel leds = tinyNeoPixel(NUM_LEDS, PINU, NEO_GRB);
void setup() {
  pinMode(mosfet, OUTPUT);
  digitalWrite(mosfet, HIGH);

  leds.begin();
  leds.setPixelColor(0,255,0,0); // first LED full RED
  leds.show();                   // LED turns on.
}



void loop() {
  // FastLED.clear();
  // RGB_LEDS[index] = CHSV(360, 100, 100);
  // FastLED.show();

  // index++;
  // if (index >= NUM_LEDS) index = 0;
  // delay(250);
}