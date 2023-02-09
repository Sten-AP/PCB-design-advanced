#include "FastLED.h"

#define NUM_LEDS 4
#define PIN_LED 3

CRGB RGB_LEDS[NUM_LEDS];
int index = 0;
void setup() {
  FastLED.addLeds<WS2812B, PIN_LED>(RGB_LEDS, NUM_LEDS);
}

void loop() {
  FastLED.clear();
  RGB_LEDS[index] = CHSV(250, 255, 100);
  FastLED.show();

  index++;
  if (index >= NUM_LEDS) index = 0;
  delay(250);
}
