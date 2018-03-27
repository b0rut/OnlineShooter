/// @function						Aura_Light_Set_Radius(light_instance, radius);
/// @description					Set the radius of a light caster instance
/// @param {real}	light_instance	The instance to set the radius of
/// @param {bool}	radius			The new radius value

// This setter script permits you to set the radius variable for a light caster.
// You supply the light instance to set, and then the radius value, which must be
// greater than 0. If the funtion fails because the instance given doesn't exist, 
// then it will return "noone" (-4), or if the instance doesn't have the variable
// (ie: it is not a light caster instance) it will return -1. If it is successful 
// then it will return "true" (1), and if it fails because the surface couldn't be 
// initialised it returns "false".

// Note, when you change the light radius yu are destroying and recreating the 
// light surface and as such the variable "aura_light_update" will be set to 
// true as well so the surface gets the updated shadow mesh for the new radius.

if instance_exists(argument0)
{
if variable_instance_exists(argument0, "aura_light_radius")
	{
	with (argument0)
		{
		aura_light_radius = argument1;
		if surface_exists(aura_light_surface)
			{
			surface_free(aura_light_surface);
			}
		aura_light_surface = surface_create(aura_light_radius * 2 ,aura_light_radius * 2);
		if surface_exists(aura_light_surface)
			{
			surface_set_target(aura_light_surface);
			draw_clear_alpha(c_black, 1);
			surface_reset_target();
			}
		else return false;
		aura_light_update = true;
		}
	return true;
	}
else return -1;
}
else return noone;