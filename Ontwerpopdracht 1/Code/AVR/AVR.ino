#include <util/delay.h>
#include <avr/io.h>
#include "Arduino.h"

void setup() {
DDRB |= (1 << DDB5);
}

void loop () {
  PINB ^= (1 << PINB5);
  _delay_ms(500);
}
