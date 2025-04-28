#Marcus Jones Jr.
#Chapter 7
#lab 2
from adafruit_circuitplayground import cp
import time
import random

def main():
    pattern_file = open("pixelpattern.txt", "r")
    pattern = pattern_file.readline().split(',')
    while True:
        for pixel in pattern:
            cp.pixels[int(pixel)] = pixel_color()
            time.sleep(.2)
            cp.pixels[int(pixel)] = (0,0,0)

def pixel_color():
    red = random.randint(0,255)
    green = random.randint(0,255)
    blue = random.randint(0,255)
    return (red, green, blue)

main()
