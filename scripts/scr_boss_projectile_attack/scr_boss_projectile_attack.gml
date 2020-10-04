// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boss_projectile_attack(speed,direction,physics_boss_speed,physics_boss_radius_control,
	physics_boss_logic_projectile_movement_left,obj_boss_projectile_attack,obj_boss_projectile_control,
	physics_boss_speed_increment){
	var tAlarm = 0;
	speed = physics_boss_speed/physics_boss_radius_control;
	direction += ( physics_boss_logic_projectile_movement_left ) ?  -1 : 1;
	
	if ( direction == 90 and physics_boss_logic_projectile_movement_left ){
	
		physics_boss_logic_projectile_movement_left = ! physics_boss_logic_projectile_movement_left;
	}else if ( direction == 90 and !physics_boss_logic_projectile_movement_left ){
	
		physics_boss_logic_projectile_movement_left = ! physics_boss_logic_projectile_movement_left;
		physics_boss_radius_control -= physics_boss_speed_increment;
		obj_boss_projectile_control --;
	}
	
	if ( obj_boss_projectile_control == 0 ){
		
		speed = 0;
		obj_boss_projectile_attack = false;
		tAlarm = 120;
		
	}
	var temp = [obj_boss_projectile_attack,
				obj_boss_projectile_control, 
				physics_boss_radius_control,
				physics_boss_logic_projectile_movement_left,
				speed,
				direction,
				tAlarm];
	return temp;
}