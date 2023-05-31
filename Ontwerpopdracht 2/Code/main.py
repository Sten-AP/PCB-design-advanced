from digitalio import DigitalInOut, Direction
from rotaryio import IncrementalEncoder
import board
import time
import usb_hid
from adafruit_hid.keyboard import Keyboard
from adafruit_hid.keyboard_layout_us import KeyboardLayoutUS
from adafruit_hid.keycode import Keycode
from adafruit_hid.consumer_control import ConsumerControl
from adafruit_hid.consumer_control_code import ConsumerControlCode

macropad = Keyboard(usb_hid.devices)
cc = ConsumerControl(usb_hid.devices)

# Gekozen knoppen
knoparray = [
                [Keycode.LEFT_CONTROL, Keycode.UP_ARROW, Keycode.SPACEBAR, ConsumerControlCode.MUTE],
                [Keycode.LEFT_ARROW, Keycode.DOWN_ARROW, Keycode.RIGHT_ARROW, ConsumerControlCode.PLAY_PAUSE]
            ]

# Opgeslagen waardes van de knoppen
knopvalue = [
                [False, False, False, False],
                [False, False, False, False]
            ]

# Rijen initialiseren
rij1 = DigitalInOut(board.GP17)
rij1.direction = Direction.INPUT
rij2 = DigitalInOut(board.GP16)
rij2.direction = Direction.INPUT

# Rijen in een array zetten
rijen = [rij1, rij2]

# Kolommen initialiseren
kolom1 = DigitalInOut(board.GP12)
kolom1.direction = Direction.OUTPUT
kolom1.value = True
kolom2 = DigitalInOut(board.GP11)
kolom2.direction = Direction.OUTPUT
kolom2.value = True
kolom3 = DigitalInOut(board.GP10)
kolom3.direction = Direction.OUTPUT
kolom3.value = True
kolom4 = DigitalInOut(board.GP4)
kolom4.direction = Direction.OUTPUT
kolom4.value = True

# kolommen in een array zetten
kolommen = [kolom1, kolom2, kolom3, kolom4]

# Rotarys initialiseren
rotary1 = IncrementalEncoder(board.GP26, board.GP27)
rotary2 = IncrementalEncoder(board.GP2, board.GP3)

last_position_1 = 0
last_position_2 = 0

while True:
    # Knoppen uitlezen
    for i, rij in enumerate(rijen):
        for j, kolom in enumerate(kolommen):
            kolom.value = False
            if not rij.value:
                knopvalue[i][j] = True
            else:
                knopvalue[i][j] = False
            kolom.value = True
                
    # Waarde sturen naar computer
    for i, knoppen in enumerate(knopvalue):
        for j, value in enumerate(knoppen):
            if value:
                if j != 3:
                    macropad.press(knoparray[i][j])
                else:
                    cc.send(knoparray[i][j])
                    time.sleep(0.2)
            else:
                macropad.release(knoparray[i][j])
                
    # Rotary 1 uitlezen
    position1 = rotary1.position
    if position1 > last_position_1:
        cc.send(ConsumerControlCode.VOLUME_INCREMENT)
    elif position1 < last_position_1:
        cc.send(ConsumerControlCode.VOLUME_DECREMENT)
    last_position_1 = position1

        # Rotary 2 uitlezen
    position2 = rotary2.position
    if position2 > last_position_2:
        cc.send(ConsumerControlCode.BRIGHTNESS_INCREMENT)
    elif position2 < last_position_2:
        cc.send(ConsumerControlCode.BRIGHTNESS_DECREMENT)
    last_position_2 = position2

    
