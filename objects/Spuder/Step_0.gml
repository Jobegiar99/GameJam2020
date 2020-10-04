/// @description Insert description here
// You can write your code in this editor
if(playerA.x>x){
	xmov=1;
}else{
	xmov=-1;
}

if(!place_empty(x,y+1,Solid_block)){
	buff=-20;
}


if(buff<ymov){
	ymov-=1
}else{
	ymov+=1;
	buff=140;
}

if(place_empty(x+xmov*3,y,Solid_block)){
	x+=xmov*3;
	
}else{
	if(place_empty(x+xmov,y,Solid_block)){
		x+=xmov;
	}
}


if(ymov!=0)
if(place_empty(x,y+ymov,Solid_block)){
	y+=ymov;
	
}else{
	if(place_empty(x,y+ymov/abs(ymov),Solid_block)){
		y+=ymov/abs(ymov);
	
	}
}
