# HjadCode Documentation

Here you will read what hjadcode functions exist and other stuff to start with this useless language.<br>
**HjadCod2 is NOT released yet, I've decided to update the docs before releasing**

## Default Functions

### _{comments}_
You can use # and $ for comments, $ should be extra highlighted.<br>
Example: <code># I'm a normal comment</code>, <code>$ I'm a cooler comment</code>

### use
<code>use</code> defines what version of hjad you are using, it must always be ontop of the file.<br>
Example: <code>use 1</code>

### remember
_Only works in RunTime mode_<br>
Sets the runtime to remember mode which stops the program when it errors.<br>
Example: <code>remember</code>

### forget
_Only works in RunTime mode_<br>
Sets the runtime to forget mode which ignores all errors and continues execution without any error message.<br>
Example: <code>forget</code>

### debug
_Only works in RunTime mode_<br>
Opens a window that allows you to see what mode the script is running and edit the memory values, then return to the execution when you're done.<br>
Example: <code>debug</code>

### _{maths}_
_You call maths by just entering math equations_
You can just put any math down and it will save the result to the first open memory slot.<br>
Example: <code>1+4</code>, <code>5^24+(5-2)</code>, <code>1%(5*9)</code>

### sleep _{time}_
_Added in HjadCod2_<br>
Delays code exection for _time_ many seconds.<br>
Example: <code>sleep 1</code>, <code>sleep 5.3</code>

## Core Functions
_Core Functions are called by the "core" tag and can only be used by hjad versions higher then 2_

### core defaults
_Added in HjadCod2_<br>
Resets all core values to the default ones.<br>
Example: <code>core defaults</code>

### core condition _{value}_
_Added in HjadCod2_<br>
If "False" is returned from any function like _If_, it returns the value you set it to. (Default Value: "False")<br>
Example: <code>core condition Nuh Uh</code>, <code>core condition Thats Not True</code>

### core copyright _{message}_
_Added in HjadCod2_<br>
Shows a copyright message at the start of the execution, the © is already added. (Default Value: _None_)<br>
Example: <code>mysoftware, All Rights Served</code>, <code>mysoftware, MIT License</code>

### core halt
_Added in HjadCod2_<br>
Quits Code Execution, I know sounds kinda misleading for "halting" xd.<br>
Example: <code>core halt</code>

## Memory Management
_Memory Functions are called by the "mem" tag_

### mem save _{text}_
Saves an item in the next free memory slot.<br>
Example: <code>mem save hello</code>, <code>mem save hell yeah</code>

### mem load _{slot}_
Shows a memory slot value of choice, slot 1 is equal to 1.<br>
Example: <code>mem load 1</code>, <code>mem load 2</code>

### mem clear
Clears the memory, really simple.<br>
Example: <code>mem clear</code>

## Terminal Commands
_Terminal Commands are called by the "AHS" tag_

### AHS sh _{command}_ / AHS shell _{command}_
Runs a shell command, result is saved to the first open memory slot.<br>
Example: <code>AHS sh echo "hello <33" > ~/Documents/echores.txt</code>, <code>AHS shell curl wortelarchief.netlify.app</code>

### AHS apple _{command}_
Runs a applescript command, result is saved to the first open memory slot.<br>
Example: <code>AHS apple display alert \"should work\"</code>

## User Info and Confirmation
### msg _{message}_
Shows a window with the text you like to show the user.<br>
Example: <code>msg Hi I'm a user window</code>, <code>msg Welcome to my Software app</code>

### conf _{option 1}_ _{option 2}_ _{message}_
Prompts the user with a choice, result is saved to the first open memory slot.<br>
Example: <code>conf Yes No Do you wish to continue?</code>

### inp _{message}_
_Added in HjadCod2_<br>
Prompts the user with an text input window, result is saved to the first open memory slot.<br>
Example: <code>inp Enter your name</code>, <code>inp Enter text to save</code>

### pass _{message}_
_Added in HjadCod2_<br>
Exact same function as the <code>inp</code> command except text input is hidden, result is saved to the first open memory slot.<br>
Example: <code>inp Enter your account key</code>, <code>inp Enter your password</code>

### notif _{message}_
_Added in HjadCod2_<br>
Sends the user a notification<br>
Example: <code>notif Reminder! Do your taxes</code>, <code>notif Hi there</code>

## Statements
### if mem _{memory slot}_ check _{value}_ _{true return}_
Compares a memory value with one you gave it and saves the result to the next open memory slot.<br>
If its True it will return the true return value you gave it, if its false it returns the the value stored in the condition core.<br>
Example: <code>if mem 1 check Yes Right Answer</code>, <code>if mem 3 check Confirm Action Confirmed</code>

### if mem _{memory slot}_ not _{value}_ _{true return}_
_Added in HjadCod2_<br>
Compares a memory value with one you gave it and checks if its not equal to each, saves the result to the next open memory slot.<br>
If its True it will return the true return value you gave it, if its false it returns the the value stored in the condition core.<br>
Example: <code>if mem 1 not Confirm Action canceled</code>, <code>if mem 8 not 12 Slot 8 is NOT equal to 12</code>

### if mem _{memory slot}_ bits _{number value}_ _{true return}_
_Added in HjadCod2_<br>
Compares a memory value with one you gave it and checks if its length is higher then the number value you gave it, saves the result to the next open memory slot.<br>
If its True it will return the true return value you gave it, if its false it returns the the value stored in the condition core.<br>
Example: <code>if mem 4 bits 2 Slot 4's value has a bigger length of 2</code>

### if mem _{memory slot}_ hex _{hex value (0xFF}_ _{true return}_
_Added in HjadCod2_<br>
Compares a memory value with one you gave it and checks if its equal to its hexadecimal value, saves the result to the next open memory slot.<br>
If its True it will return the true return value you gave it, if its false it returns the the value stored in the condition core.<br>
Example: <code>if mem 1 hex 0xFF Thats equal 255</code>, <code>if mem 3 hex 0x01 Value equal 1</code>


## File System
_File System Functions are called by the "fs" tag and can only be used by hjad versions higher then 2_

### fs sav mem _{memory slot}_ _{filename}__
_Added in HjadCod2_<br>
Creates an file (overwrites) and saves data from any memory slot to it.<br>
**NOTE: HjadCode has its own folder for files thats always available at path <code>~/.hjadcode</code>**<br>
Example: <code>fs sav mem 1 ~/Documents/hjadfile.txt</code>, <code>fs sav mem 1 ~/.hjadcode/passwords.dat</code>

### fs append mem _{memory slot}_ _{filename}__
_Added in HjadCod2_<br>
Appends memory data to an file.<br>
**NOTE: HjadCode has its own folder for files thats always available at path <code>~/.hjadcode</code>**<br>
Example: <code>fs append mem 1 ~/Documents/hjadfile.txt</code>, <code>fs append mem 1 ~/.hjadcode/passwords.dat</code>

### fs read _{filename}__
_Added in HjadCod2_<br>
Reads a file and stores the result in the next available memory slot<br>
**NOTE: HjadCode has its own folder for files thats always available at path <code>~/.hjadcode</code>**<br>
Example: <code>fs read ~/Documents/hjadfile.txt</code>, <code>fs read ~/.hjadcode/passwords.dat</code>

### fs delete _{filename}__
_Added in HjadCod2_<br>
Deletes an file.<br>
**NOTE: HjadCode has its own folder for files thats always available at path <code>~/.hjadcode</code>**<br>
Example: <code>fs del ~/Documents/hjadfile.txt</code>, <code>fs del ~/.hjadcode/passwords.dat</code>

_© 2025 HjadCode Family. All Rights Reserved_
