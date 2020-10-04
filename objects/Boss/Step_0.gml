/// @description Insert description here
// You can write your code in this editor

#region
	//attack
	if(obj_boss_projectile_attack){
		var temp = scr_boss_projectile_attack(
									speed, 
									direction, 
									physics_boss_speed,
									physics_boss_radius_control,
									physics_boss_logic_projectile_movement_left,
									obj_boss_projectile_attack,
									obj_boss_projectile_control,
									physics_boss_speed_increment
									);
		obj_boss_projectile_attack = temp[0];
		obj_boss_projectile_control= temp[1];
		physics_boss_radius_control= temp[2];
		physics_boss_logic_projectile_movement_left = temp[3];
		speed = temp[4];
		direction = temp[5];
	}else if(alarmOneCall and !obj_boss_projectile_attack){
		alarm[1] = 120;	
		alarmOneCall = false;
	}



#endregion