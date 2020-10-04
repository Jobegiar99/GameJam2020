/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.1/60;
image_xscale -= 0.1/60;
image_yscale -= 0.1/60;
image_angle += speed * sign(direction);
if(image_alpha == 0.1) instance_destroy();