#Marcus Jones Jr.
#Ch 14 Lab 1
import vehicle as vhcl

vehicle1 = vhcl.vehicle()
for num in range(2):
    vehicle1.accelerate()
    vehicle1.display_speed()
print()
for num in range(2):
    vehicle1.decelerate()
    vehicle1.display_speed()
