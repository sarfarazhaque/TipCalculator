
# Pre-work - TipCalculator

TipCalculator is a tip calculator application for iOS.

Submitted by: Sarfaraz Haque

Time spent: 6 hours spent in total

## User Stories

The following **required** functionality is complete:

* [Y] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [Y] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [Y] UI animations
* [N] Remembering the bill amount across app restarts (if <10mins)
* [Y] Using locale-specific currency and currency thousands separators.
* [Y] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [Y] List anything else that you can get done to improve the app functionality!
* Additional- On Settings you can set the 3 tip percentages, that you want to show on the Tipview. So, User can setup the tip percentages that he wants to show to customers. The tip percentages are not hardcoded, rather it is set from the 3 values set from the settings.

New theme and background added, with UI option to change color using Animations.
  
## Video Walkthrough 

Here's a walkthrough of implemented user stories:

http://imgur.com/JOiYBKh

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** Only working for few hours on iOS app development platform and it really seems very much fascinating to me. I think I would be hooked to it. The difference between Outlet and Action would be- Outlet would allow you to change something that you show on the screen, that is you would want to change some properties of a Control. You can use Label, update fonts, color, size etc on that Label. 

On the other hand, Action would allow you to look for changes or inputs from the user. From the action, you can trigger your functions or code to work. In Summary, outlet is used when you want to change some properties and action is used when you are expecting the user or app to something. 

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** Swift uses ARC to track and manage your app's memory usage. So, when a new instance of class is created ARC allocates a chunk of memory. It makes sure, it does not use up memory when it is not used. ARC basically tracks the properties, constants, and variables are currently referring to each class instance. ARC will not deallocate if it has one active reference. For that, when assigning a class instance a strong reference is preferred.
The issue with garbage collection is that there may still be some references left to an object which can end up crashing the software. In Swift, the concept of weak reference is also important, it is a reference to an object which does not keept the object alive.

