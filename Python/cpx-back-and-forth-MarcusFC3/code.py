#Marcus Jones Jr.
#Chapter 3
#lab 2
from adafruit_circuitplayground import cp
import time
BLACK = (0,0,0)
DELAY = .3

while True:
    for num in range(10):
        print(num)
        cp.pixels[num] = (0,45,0)
        time.sleep(DELAY)
        cp.pixels[num] = BLACK
        time.sleep(DELAY)
    for num in range(9, -1, -1):
        cp.pixels[num] = (45,0,0)
        print(num)
        time.sleep(DELAY)
        cp.pixels[num] = BLACK
        time.sleep(DELAY)
