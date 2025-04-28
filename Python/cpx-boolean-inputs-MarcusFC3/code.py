#Marcus Jones Jr.
#Chapter 3
#lab 1
from adafruit_circuitplayground import cp
import time
print("Hello World!")

while True:
    if cp.switch:
        cp.red_led = True
    else:
        cp.red_led = False
    if cp.button_a:
        cp.play_file("elec_blip2.wav")
    if cp.button_b:
        cp.play_file("bass_hit_c.wav")
    if cp.touch_A1:
        cp.pixels[1] = (255,255,255)
    else:
        cp.pixels[1] = (0,0,0)
