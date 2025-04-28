#Marcus Jones Jr.
#Chapter 5
#lab 1
from adafruit_circuitplayground import cp
def main():
    while True:
        if cp.touch_A1:
            pixels_on()
        else:
            pixels_off()

def pixels_on():
    for index in range(10):
        cp.pixels[index] = (3,3,3)
def pixels_off():
    for index in range(10):
        cp.pixels[index] = (0,0,0)

main()

