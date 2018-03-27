/// @description Insert description here
// You can write your code in this editor

can_shoot=false;
global.secondary_bullets -= clipsize - global.primary_bullets;
global.primary_bullets+=clipsize - global.primary_bullets;
can_shoot=true;