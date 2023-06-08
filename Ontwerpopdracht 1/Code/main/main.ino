#include <tinyNeoPixel.h>

#define MOSFET PIN_PB0
#define LED_PIN_UREN PIN_PA5
#define LED_PIN_MINUTEN PIN_PA3
#define KNOP_RECHTS PIN_PA6
#define KNOP_MIDDEN PIN_PA7
#define KNOP_LINKS PIN_PB1

#define NUM_LEDS 12

tinyNeoPixel UREN(NUM_LEDS, LED_PIN_UREN, NEO_GRB);
tinyNeoPixel MINUTEN(NUM_LEDS, LED_PIN_MINUTEN, NEO_GRB);

void setup() {
  // Leds en mosfet initialiseren als output
  pinMode(MOSFET, OUTPUT);
  pinMode(LED_PIN_UREN, OUTPUT);
  pinMode(LED_PIN_MINUTEN, OUTPUT);

  // Knoppen initialiseren als input
  pinMode(KNOP_RECHTS, INPUT);
  pinMode(KNOP_MIDDEN, INPUT);
  pinMode(KNOP_LINKS, INPUT);

  // Mosfet aan zetten
  digitalWrite(MOSFET, HIGH); 
  UREN.begin();
}

void loop() {
  if (digitalRead(KNOP_RECHTS)) {
    UREN.clear();
    for (byte i = 0; i < NUM_LEDS; i++){
      UREN.setPixelColor(i, UREN.Color(0, 0, 255));
    }
    delay(500);
    UREN.show();
  }
  else if (digitalRead(KNOP_MIDDEN)){
    UREN.clear();
    for (byte i = 0; i < NUM_LEDS; i++){
      UREN.setPixelColor(i, UREN.Color(0, 255, 0));
    }
    delay(500);
    UREN.show();
  }
  else if (digitalRead(KNOP_LINKS)){
    UREN.clear();
    for (byte i = 0; i < NUM_LEDS; i++){
      UREN.setPixelColor(i, UREN.Color(255, 0, 0));
    }
    delay(500);
    UREN.show();
  }
}

