/*
Right now castSpell uses one argument, being the spell's name.
Depending on the system of spell scaling, however, more arguments might need to be added:
(For numbers to explanation, check Brainstorm (Q&As) document.)
1. Algorithm is handled through the database where the damage of the spell is defined.
2. Level will be an argument of castSpell to know which level spell is cast.
3. Will not use additional arguments, as this should be handled in database.

This >MIGHT< be coded in now, just in case.
*/

var name = argument0;
//var level = argument1;

spellDB(name, "name");
show_debug_message(spellArray);

