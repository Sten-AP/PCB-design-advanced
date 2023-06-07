// // Pin voor de LED-aansturing
// #define LED_PIN_PA5 PIN_PA5
// #define LED_PIN_PA3 PIN_PA3
// // Aantal LED's in de rij
// #define NUM_LEDS 12

// #define MOSFET PIN_PB0

// // Functie om een enkele LED aan te sturen
// void setPixelColor(uint8_t ledIndex, uint8_t LED_PIN, uint8_t red, uint8_t green, uint8_t blue, uint8_t brightness) {
//   // Pas de helderheid aan voor elk kleurkanaal
//   red = (red * brightness) / 255;
//   green = (green * brightness) / 255;
//   blue = (blue * brightness) / 255;

//   // Bereken de startindex van de LED in de gegevensbuffer
//   int startIndex = ledIndex * 3;

//   // Stuur de gegevens naar de LED's door een puls te genereren
//   // Hier moet je de timingvereisten van de LED volgen (bijvoorbeeld 50 μs laag gevolgd door 750 μs hoog)
//   for (int i = startIndex; i < startIndex + 3; i++) {
//     for (int bit = 7; bit >= 0; bit--) {
//       // Stuur een puls voor elk bit in de kleurwaarde
//       if (green & (1 << bit)) {
//         // Stuur een puls die de "1" vertegenwoordigt voor het groene kanaal
//         digitalWrite(LED_PIN, HIGH);
//         delayMicroseconds(50);
//         digitalWrite(LED_PIN, LOW);
//         delayMicroseconds(750);
//       } else {
//         // Stuur een puls die de "0" vertegenwoordigt voor het groene kanaal
//         digitalWrite(LED_PIN, HIGH);
//         delayMicroseconds(200);
//         digitalWrite(LED_PIN, LOW);
//         delayMicroseconds(600);
//       }

//       // Herhaal hetzelfde voor het rode en blauwe kanaal
//       if (red & (1 << bit)) {
//         digitalWrite(LED_PIN, HIGH);
//         delayMicroseconds(50);
//         digitalWrite(LED_PIN, LOW);
//         delayMicroseconds(750);
//       } else {
//         digitalWrite(LED_PIN, HIGH);
//         delayMicroseconds(200);
//         digitalWrite(LED_PIN, LOW);
//         delayMicroseconds(600);
//       }

//       if (blue & (1 << bit)) {
//         digitalWrite(LED_PIN, HIGH);
//         delayMicroseconds(50);
//         digitalWrite(LED_PIN, LOW);
//         delayMicroseconds(750);
//       } else {
//         digitalWrite(LED_PIN, HIGH);
//         delayMicroseconds(200);
//         digitalWrite(LED_PIN, LOW);
//         delayMicroseconds(600);
//       }
//     }
//   }
// }


// void setup() {
//   // Initialiseer de pin voor LED-aansturing
//   pinMode(LED_PIN_PA5, OUTPUT);
//   pinMode(LED_PIN_PA3, OUTPUT);

//   pinMode(MOSFET, OUTPUT);
//   digitalWrite(MOSFET, LOW);

//   for (int i = 0; i < NUM_LEDS; i++) {
//     setPixelColor(i, LED_PIN_PA5, 0, 0, 255, 10); // Stel LED op index 'i' in op blauw
//   }
//   for (int i = 0; i < NUM_LEDS; i++) {
//     setPixelColor(i, LED_PIN_PA3, 0, 255, 0, 10); //
//   }
// }

// void loop() {

// }




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

