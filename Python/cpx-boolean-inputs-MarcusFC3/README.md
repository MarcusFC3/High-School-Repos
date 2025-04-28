# CPX - Boolean Inputs

### Introduction
The Circuit Playground Express has a nice collection of input sensors. In this lab we will be
looking at three different types: the slider switch, A and B push buttons, and the capacitive touch
pads. All of these are Boolean inputs because they have two states. This lab will have you
attaching different capabilities to each style of input and also leverages a little file access as
well!

### Procedure

#### Part 1 - Slider Switch
- The slider switch state can be accessed using the code in this image:  
  ![bool1](boolean1.jpg)
- Code an ‘if-else’ statement to test the state of the switch
- Turn the red LED on if it is True and off if False

#### Part 2 - Push Buttons A and B
- The state of a buttons can be accessed using the code in this image:  
  ![bool2](boolean2.jpg)
  - Note! To test the B button, just replace the lowercase ‘a’ with a ‘b’
- When a button is pressed have a sound play from a sound file
- The CPX can natively play a WAV file.
- A small selection has been included in this repo
- Copy as many of the sound files over to the CPX’s drive as you like
  - You actually only need two, but you have room for them all!
- A WAV file can be played using this command:  
  ![bool3](boolean3.jpg)
- Create an ‘if’ statement for each button to see if it has been pressed
- If it’s pressed (in a True state) then play a selected WAV file
  - The actual WAV file must be copied to the CPX’s drive
  - The example assumes it’s at the top of drive and not in a folder
  
#### Part 3 - Capacitive Touch Pads
- There are six capacitive touch pads around the edge of the CPX
- They are labeled A1 - A6
- Here is a sample to test pad A1:  
  ![bool4](boolean4.jpg)
- Create an 'if' statement that will turn on a pixel when a touch pad is touched
- The pixel should turn off when the touch pad is not touched.

#### Turn-ins
- The actual code for your project added to this repo (code.py)
- A video demonstrating the operation (If done remotely)

#### Grading
Proper use of comments  
Code the switch using the red LED  
Code the two buttons with a sound file    
Code one capacitive button as described  
A video demonstrating your operation  
