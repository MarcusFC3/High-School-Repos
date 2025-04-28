#Marcus Jones Jr.
#Chapter 15
#lab 2
from adafruit_circuitplayground import cp
import time

class Region():
    def __init__(self, color, leds, tone):
        self.__color = color
        self.__leds = leds
        self.__tone = tone

    def set_color(self, color):
        self.__color = color
    def set_leds(self, leds):
        self.__leds = leds
    def set_tone(self, tone):
        self.__tone = tone
    def get_color(self):
        return self.__color
    def get_leds(self):
        return self.__leds
    def get_tone(self):
        return self.__tone
    def all_on(self):
        for light in self.__leds:
            cp.pixels[light] = self.__color
    def all_off(self):
        for light in self.__leds:
            cp.pixels[light] = (0,0,0)
    def play_tone(self, duration):
        cp.start_tone(self.__tone)
        time.sleep(duration)
        cp.stop_tone()
    def __str__(self):
        return f"color={self.__color} leds={self.__leds} tone={self.__tone}"

def main():
    region_dict = {
        'yellow' : Region((15,15,0), (5,6,7),252),
        'blue' : Region((0,0,15), (2,3,4), 209),
        'red' : Region((15,0,0),(7,8,9), 310),
        'green' : Region((0,15,0), (0,1,2), 415)
    }
    while True:
        for region in region_dict.values():
            region.all_on()
            region.play_tone(2)
            region.all_off()

main()
