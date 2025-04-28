# Fishing Slide Show

In this exercise, you'll enhance the Slide Show application by adding buttons to start and pause the slide show.

![image](https://user-images.githubusercontent.com/17011204/206747108-6c9ff3df-a113-46f9-81db-6c9963892563.png)

### Instructions

- Open the application in Chrome to test it. Notice the slideshow isn't running. the Pause button is disabled, and nothing happens when you click the Start button.
- Use your editor to open the files. Review the code in the index.html file and notice that the disabled attribute of the Pause button is set to true. That makes sense because the user shouldn't be able to click this button if the show isn't running.
- Review the code in the slide_show.js file and note that the code for running the slide show is coded in a function named runSlideShow(). Also note that some of the variables and constants are global so they can be accessed by the runSlideShow() function and the DOMContentLoaded() event handler.
- Within the DOMContentLoaded() event handler, add the code to the click event handler of the Start button that creates a timer that runs the slide show and changes the slide every two seconds. In addition, add the code that disables the Start button and enables the Pause button. To disable a button, you can set its disabled attribute to true. To enable a button, set its disabled attribute to false.
- Test the application again and click the Start button to make sure the slide show is working. Notice that there is a delay of 2 seconds before the next slide is displayed.
- Add code to the click event handler of the Start button that calls the runSlideShow() function before the timer is started. Then, test the application again to see that the next slide is displayed immediately when the Start button is clicked.
- Add code to the click event handler of the Pause button that cancels the timer. In addition, add code that enables the Start button and disables the Pause button.
- Test the application again, click the Start button to start the slide show, and then click the Pause button to pause the slide show. Click the Start button again to restart the slide show.
- Push your completed code.

### Evaluation Criteria

- Code was modified and created in the specified functions
- Timer works correctly for 2 second intervals
- Start button and pause buttons work as intended
  - Slide show starts immediately after Start button clicked
  - Buttons enabled and disabled as required
- Formatting, comments, whitespace, etc..
