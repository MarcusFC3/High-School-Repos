# Image Gallery

In this exercise, you’ll develop an Image Gallery application that displays different images when the user clicks on the links at the top of the page. This works like the Image Swap application of figure 8-13 in the text.  

![image](https://user-images.githubusercontent.com/17011204/206769879-794f33ac-257f-43a4-a239-b39c62cad6a3.png)


### Instructions

- This repo contains an empty JavaScript file named image_gallery.js. You can add your code to this file.
- In the JavaScript file, add an event handler for the ready() event method.
- Use the each() method to run a function for each <a> element in the unordered list of items. Then, add jQuery code that gets the URL and caption for each image and preloads the image. 
  - You can get the URL from the href attribute of the <a> element
  - You can get the caption from the title attribute.
- Add an event handler for the click() event method of each link. The function for this event handler should accept a parameter named evt. 
  - The jQuery code for this event handler should display the image and caption for the link that was clicked. 
  - It should also use the evt parameter to cancel the default action of the link.
- Add a jQuery statement that moves the focus to the first link on the page when the page is loaded.

### Evaluation Criteria
  
- Event handler for the ready() event method
- use of each() method
- <a> elements updated
- URL and captions retrieved properly
- Images preloaded
- Images and captions displayed properly
- Focus set properly
- Formatting, comments, whitespace, etc..
  
