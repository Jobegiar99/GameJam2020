/// @description Insert description here
// You can write your code in this editor
if(place_free(x+dir,y)){
	x+=dir*movspd;
}else{
	instance_destroy(self);
}