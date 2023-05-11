from machine import Pin
import time
from rotary_irq_rp2 import RotaryIRQ
# from keyboard import Keyboard
# from keycode import Keycode
import board

rijen = [Pin(17, Pin.IN), Pin(16, Pin.IN)]
kolommen = [Pin(12, Pin.OUT), Pin(11, Pin.OUT), Pin(10, Pin.OUT), Pin(4, Pin.OUT)]

r1 = RotaryIRQ(
    pin_num_clk=27,
    pin_num_dt=26,
    min_val = 0,
    max_val = 100,
    reverse=False,
    incr=1,
    range_mode=RotaryIRQ.RANGE_BOUNDED,
    pull_up=False,
    half_step=False,
)

r2 = RotaryIRQ(
    pin_num_clk=3,
    pin_num_dt=2,
    min_val = 0,
    max_val = 100,
    reverse=False,
    incr=1,
    range_mode=RotaryIRQ.RANGE_BOUNDED,
    pull_up=False,
    half_step=False,
)

while True:
    for rij in rijen:
        a = ""
        for kolom in kolommen:
            kolom.off()            
            a += str(rij.value())
            kolom.on()
        print(a)
    print(r1.value(), r2.value())
    time.sleep(0.1)
