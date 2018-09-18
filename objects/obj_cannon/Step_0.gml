/// @desc: Fire Cannon Control

event_inherited();

if(alarm[0] <= 0){
	alarm[0] = delay_fire;
}