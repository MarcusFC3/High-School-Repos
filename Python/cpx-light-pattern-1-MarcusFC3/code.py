#Marcus Jones Jr.
#Chapter 5
#lab 1
from adafruit_circuitplayground import cp
import time
import random

def main():
    pattern = [4,0,2,1,3,8,5,7,6,9]
    while True:
        for pixel in pattern:
            cp.pixels[pixel] = pixel_color()
            time.sleep(.2)
            cp.pixels[pixel] = (0,0,0)


def pixel_color():
    red = random.randint(0,255)
    green = random.randint(0,255)
    blue = random.randint(0,255)
    return (red, green, blue)

main()
