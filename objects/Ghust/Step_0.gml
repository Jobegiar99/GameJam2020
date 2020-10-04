/// @description Insert description here
// You can write your code in this editor

//movement patterns

//circile formula x^2+y^2=r^2
if(theta>=360) theta-=360;
x = cx +lengthdir_x(r,theta);
y = cy +lengthdir_y(r,theta);
theta+=spd;

if(playerA.x>cx){
	cx+=1;
}else{
	cx-=1;
}