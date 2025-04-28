# Animals

### Instructions

Create the following classes including fields specified, associated constructors, getters and setters, and toString() methods. Implement the appropriate interfaces for each animal from the list of interfaces below. In your driver class, create instances of each animal and add them to Lists created for each different interface and subclass of Animal. Iterate through each of the lists and call the obvious/associated methods.

Animal Class
	Field: name

Bird Class (Inherits from Animal)
	Field: wingspan

Mammal Class (Inherits from Animal)
	Field: bodyTemp

Fish Class (Inherits from Animal)
	Field: isSaltWater


Ostrich, Penguin and Eagle classes – Inherit from Bird
Dolphin, Lion, and Bat classes – Inherit from Mammal
Shark, Bass and FlyingFish classes – Inherit from Fish

Interfaces:
- IFly – fly() method
- IWalk – walk() method
- ISwim – swim() method
- IMakeSound – makeSound() method

Lists:
- Animals
- Birds
- Mammals
- Fishes
- Flyers
- Walkers
- Swimmers
- SoundMakers 
 

### Grading

#### Object and Abstract Classes
8 - ABSTRACT classes Animal, Bird, Mammal, Fish using proper inheritance from Animal  
8 - IFly, I Walk, ISwim and IMakeSound Interfaces with proper methods defined  
9 - Specific animal classes that inherit from parents  
4 - Classes make use of super constructors  
6 - Appropriate interfaces implemented in each specific class  

#### Driver Class:
5 - Instantiated example of each non-abstract class  
7 - Lists based on classes and interfaces with appropriate objects added  
5 - For loops to process each list and call appropriate methods  
5 - All classes and methods tested  
2 - All test results output to console.  
2 - Compiles, Comments, Runs, Etc  
