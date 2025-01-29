/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR shell = 0
VAR shell_in_inventory = 0



-> seashore

== seashore ==
You are sitting on the beach. \

It is { advance_time() } 

+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

It is { advance_time() } 

* {shell_in_inventory == 1} [Check Shell Rarity] -> Rarity_Check

+ [Pick up some seashells] -> shells

+ [Stroll back up the beach] -> seashore

+ [Pass the time] -> Time_Pass

== shells ==
You pick up a shell
* {time == 0} [Investigate the morning shell] -> Morning_Shell
* {time == 1} [Investigate the noon shell] -> Noon_Shell
* {time == 2} [Investigate the night shell] -> Night_Shell

+ [Go back] -> beach2

== Morning_Shell ==
The shell is cracked and ugly.
~ shell = 0
~ shell_in_inventory = 1
+ [Go back] -> beach2

== Noon_Shell ==
The shell is colorful and pretty.
~ shell = 1
~ shell_in_inventory = 1
+ [Go back] -> beach2

== Night_Shell ==
The shell has a rainbow pattern and lights up the dark.
~ shell = 2
~ shell_in_inventory = 1
+ [Go back] -> beach2

== Rarity_Check ==
You have a { shell_rarity() }
+ [Go back] ->beach2

== Time_Pass ==
You have passed the time
+ [Go back] -> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    ~ return time
   
   == function shell_rarity ==
    {    
        - shell == 0:
            ~ return "Common shell"
        
        - shell == 1:
            ~ return "Rare shell"
        
        - shell == 2:
            ~ return "One of a kind shell"
    
    }    
        

    
    
    
