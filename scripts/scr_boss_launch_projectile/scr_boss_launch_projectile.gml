// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boss_launch_projectile(x,y,speed){
	
	for(i = 240; i <= 340; i += irandom_range(1,100)){
		
		var projectile = instance_create_layer(x,y,"Instances",boss_projectile);
		projectile.direction = i;
		projectile.speed = speed / 2;
		
	}
	
	
}