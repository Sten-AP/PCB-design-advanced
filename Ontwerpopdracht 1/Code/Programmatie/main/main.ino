// #include <tinyNeoPixel.h>

// #define LED_PIN 3
// #define NUM_LEDS 12

// tinyNeoPixel pixels(NUM_LEDS, PIN_PA5, NEO_GRB);
// int mosfet = 9;
// // #define mosfet 9 //PB0 MOSFET_PIN

// void setup() {
//   pinMode(mosfet, OUTPUT);
//   digitalWrite(mosfet, HIGH); 

//   pixels.begin();
//   pixels.setPixelColor(0, pixels.Color(0, 10, 0));
//   // pixels.setPixelColor(1, pixels.Color(0, 255, 0));

//   pixels.show();
// }

// void loop() {
//   // Code hier
// }




#include <Adafruit_NeoPixel.h>

#define PIN_UREN 10 //PA5 LEDS uren
#define PIN_MINUTEN 13 //PA3 LEDS minuten
#define AANTAL_LEDS 12

int mosfet = 9; //PB0 MOSFET_PIN

Adafruit_NeoPixel LEDS_UREN(AANTAL_LEDS, PIN_UREN, NEO_GRB + NEO_KHZ800);
// Adafruit_NeoPixel LEDS_MINUTEN(AANTAL_LEDS, PIN_MINUTEN, NEO_GRB + NEO_KHZ800);

void setup() {
  pinMode(mosfet, OUTPUT);

  LEDS_UREN.begin();
  LEDS_UREN.setPixelColor(1, 150, 0, 0);
  LEDS_UREN.show();

  digitalWrite(mosfet, HIGH); 
}

void loop() {
}