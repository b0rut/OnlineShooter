/// @function					Aura_Shadow_Caster_Circle_Init(precision, radius);
/// @description				Create a circular shadow caster
/// @param {real}	precision	The precision with which to generate the shadow caster vertex data (min: 4)
/// @param {real}	radius		The radius of the shadow caster

// It is assumed that the x/y of the shadow caster instance sprite is centered
// (if you use a sprite, but this is not required) and a precision of 8 is usually fine
// but you may need to make it higher for larger sprites / circles.

// Initialise instance variables
aura_shadow_points = 0;

// Set base circle vars
var a_prec = argument0;
var a_rad = argument1;
var a_ang = 360 / a_prec;
var a_xx = 0;
var a_yy = 0;

// Add vertices
for (var i = 0; i <= 360; i += a_ang;)
{
aura_shadow_x[aura_shadow_points] = lengthdir_x(a_rad, i);
aura_shadow_y[aura_shadow_points] = lengthdir_y(a_rad, i);
++aura_shadow_points;
}
