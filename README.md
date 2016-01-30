# rbnd-colorizr
Colorizr gem to add colour options to the String class
## Overview
This gem adds color methods to the String class to provide the ability to
apply color to strings
## Usage
The gem adds a list of methods to the string class automatically.
The list of methods added can be obtained in an array by calling the class
method: String.colors.
A sample of each color can be printed out be calling the class method:
String.sample_colors

To use the color methods, use the color methods listed by String.colors
as follows:
test = 'test-green'
puts test.green   # will print out the string 'test green' in green

Some sample code is contained in the test_colorixr.rb script.
## Installation
Download the gem by cloning the repository as follows:
$ git clone https://github.com/mikeyjcat/rbnd-colorizr.git
The gem is installed by running the command:
$ gem install colorizr-0.9.0.gem

