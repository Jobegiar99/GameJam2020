/// @description Insert description here
// You can write your code in this editor

//Increase time buffer

timebuffer++;

//Gravity effect
if(place_free(x,y+1)){
    if(!place_free(x,y+gst)){
        if(!place_free(x,y+gravBuff)){
            if(gst>0) gst=1;
        }else{
            gst=gravBuff;
        }
    }else{
        gst+=1;
    }
    
}else{
    if(gst>0)gst=0;
    gravBuff=gbuffmax;
}

if(place_free(x,y+gst))y+=gst;
//Controls
xmov= 1*(keyboard_check(vk_right)||keyboard_check(ord("D"))) - 1*(keyboard_check(vk_left)||keyboard_check(ord("A")));

if(place_free(x+xmov,y)){
    
    if(place_free(x+xmov*movsp,y)){
        x+=xmov*movsp;
    }else{
        x+=xmov;
    }

}
if(xmov!=0) animdir= xmov/abs(xmov);
//Jump ctrl
hasjump = !place_free(x,y+1);
jump=keyboard_check(vk_up)||keyboard_check(ord("W"));


if(abs(gst-jump*jumpmod)<=jumpext&&jumprel){
        gst-=jump*jumpmod
        //jumprel=abs(gst-jump*2)<=jumpext;
}else{
    jumprel=hasjump;
}


//Destory instances ctrl


//Control flechas
if(!ischild){
	if((keyboard_check(ord("F"))||keyboard_check(vk_space))&&timebuffer>timeinsec){
		if(animdir>0){
			narr=instance_create_depth(x+animdir*imgwidth,y-50,1,arrow);
			with(narr){
				dir=1;
				image_xscale=0.5;
			}
		}else{
			narr=instance_create_depth(x+animdir*imgwidth,y,1,arrow);
			with(narr){
				dir=-1;
				image_xscale=-0.5;
			}
		}
		timebuffer=0;
	}
}
//Animation handle
image_xscale=animdir*abs(image_xscale);
mask_index=idle;
if(xmov!=0){
	sprite_index=adult_w;	
	
}else{
	sprite_index=idlea;
	
}