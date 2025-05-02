# HjadCode Documentation

Here you will read what hjadcode functions exist and other stuff to start with this useless language

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

## Statements
### if mem _{memory slot}_ check _{value}_ _{true return}_
Compares a memory value with one you gave it and saves the result to the next open memory slot.<br>
If its True it will return the true return value you gave it, if its false it just returns False.<br>
Example: <code>if mem 1 check Yes Right Answer</code>, <code>if mem 3 check Confirm Action Confirmed</code>

_© 2025 HjadCode Family. All Rights Reserved_
