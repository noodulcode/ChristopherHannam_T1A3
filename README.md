## Terminal Application - Pocer Primacara 4SRGT Vehicle Configurator

#### Github repository link: https://github.com/noodulcode/ChristopherHannam_T1A3

### About
The Pocer Primacara carconfigurator is a an app designed to let a new car buyer choose the specification they would like for their car. It offers a range of no cost, premium cost and special options to add to the vehicle, some of which are not compatible with others. When running the app the user can choose to select information about the car, the base price and then a menu to add their options. Each option chosen will display a price. The My Spec menu allows the user to see their chosen specification and is supposed to show the full cost fo their spec as well as the total cost for their car.

### Feature Implementation

##### Feature 1:  
Feature 1 is to have a menu system you can navigate through with the help of TTY Prompt. 
Using TTY Prompt a selection of vehicle options will be displayed. A basic option list will consist of a few items, where only one item can be chosen. A case statement will take the user input from each vehicle option item list and add it to a fully specified car object which will contain each option item and the price. 


##### Feature 2:
Feature 2 adds the ability to add a specification on top of another. In order to specify the color of your wheels, you first need to select wheels. If you select a color first, the configurator will offer you a wheel choice to begin with, then color. Also, this feature has the ability to ensure incompatible options are not chosen, in this case Carbon Fibre wheels are not compatible with yellow rim borders. If you select these options the program will tell you they are not compatible and lets you reselect another color. 


##### Feature 3:
The fully optioned car object will have each items cost added to create a total cost which will be added to the base price of the car. The full specification and total cost will be given to the user to save in a database, download for themselves and send a confirmation to the dealer to begin the build process of the vehicle.
(I built this app with classes as it just didn't make sense to try without, we've already done that in the workbook. Evidently I coud not fully grasp how to use them, my instance variables don't seem to work, inheritance doesn't work etc so I was unable to get this feature to work)


### Installation Instructions:

1. Install The latest version of [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
2. Open Ubuntu/Mac Terminal
3. Type: ./run_configurator.sh


### Project Management File

Terminal App Project Mangement PDF file in Docs Folder


### Styling Guide

Code is formatted with [Rubocop](https://github.com/airbnb/ruby), a styling gem based on the [Ruby Style Guide](https://rubystyle.guide/)

### Other Gems Used:

[TTY-Prompt and TTY Progress Bar](https://ttytoolkit.org/) have been utilised in this program for menus and a loading bar.

[Colorize](https://github.com/fazibear/colorize) was used for aesthetic purposes.