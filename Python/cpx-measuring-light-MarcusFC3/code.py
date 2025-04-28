#Marcus Jones Jr.
#Chapter 5
#lab 1
from adafruit_circuitplayground import cp
import time
MAX = 313
def main():
    while True:
        light = cp.light
        time.sleep(.05)
        light_index = scale(light)
        reset_pixels(light_index)
        if light_index != 0:
            for index in range(light_index):
                cp.pixels[index] = (0,45,45)
        time.sleep(.5)

def scale(light):
    index = int(light/MAX * 10)
    return index

def reset_pixels(index):
    for num in range(10 - index):
        cp.pixels[num] = (0,0,0)

main()
