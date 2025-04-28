from adafruit_circuitplayground import cp
import time
print("Hello World!")


while True:
    cp.red_led = True
    time.sleep(.5)
    cp.red_led = False
    time.sleep(.5)
    cp.pixels[0] = (0,100,0)
    cp.pixels[1] = (100,0,0)
    cp.pixels[2] = (0,0,100)
    time.sleep(.5)
    cp.pixels[0] = (0,0,0)
    cp.pixels[1] = (0,0,0)
    cp.pixels[2] = (0,0,0)
    time.sleep(.5)

