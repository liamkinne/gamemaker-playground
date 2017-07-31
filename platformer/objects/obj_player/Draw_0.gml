/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite0, _vSpeed != 0, x, y, 1, 1, 0, _color, 1);

if (_vSpeed > 0) {
	image_index = 1;
	image_angle = 180;
}
else {if (_vSpeed < 0) {
	image_index = 1;
	image_angle = 0;
}
else {
	image_index = 0;
	image_angle = 0;
}}