# AutomationTestCineplex

Automation Testing for Cineplex website

#Library

- Robot Framework 
- Selenium2Library 

#Requirement 

- Python 2.7 or higher 
- Robot Framework
- WxPython
- Visual Studio Code or Any IDE 

# Installation

## Step 1: Install Python
Visit the following website to download Python software.

https://www.python.org/downloads/

Download the latest version for your operating system (eg: Windows)

##  Step 2: Configure Environment Variables
After installing Python and pip, you should configure environment variables by adding the path. 

Go to System – > Advanced System Settings – > Advanced – > Environment Variables
environmental variables

Add the path of the folder where Python is installed to the system variables section and user variables section. Here, you see that path is already updated as this option is selected while installing Python.

## Step 3: Install Robot Framework
Open the command prompt and navigate to the python folder and type the following command:
- pip install robotframework

Once robot Framework is successfully installed. You can check it using the version command.
- robot –version

## Step 4: Install wxPython
Download wxPython software from the following link:

Open the command prompt and type the following command:

- pip install –U wxPython

Now, wxPython is successfully installed.

## Step 5: Install Selenium Library
To automate website application, we need to download this library. Open the command prompt and navigate to the python folder and type the following command :
- pip install --upgrade robotframework-seleniumlibrary

## Step 6: Install Visual Studio Code
For downloading this IDE, we can go through this link :
https://code.visualstudio.com/download

# How to use

There are 2 ways if we want to run the test scenario:
1. Run from the visual studio code through Testing sidebar menu by downloading Test Explorer UI extensions
2. Go to the file path location and run from terminal by typing : ```robot teststories1.robot```