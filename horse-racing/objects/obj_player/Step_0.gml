// Horizontal Movement

global._hSpeed = - 0.25 + (keyboard_check_pressed(_key_speed) * 4); // Incread or decrease speed
	
// Clamp speed
if (global._hSpeed > _hSpeedMax) {
	global._hSpeed = _hSpeedMax;
}
else if (global._hSpeed < _hSpeedMin) {
	global._hSpeed = _hSpeedMin;
}

image_speed = global._hSpeed/10; // Make animation faster with horizontal speed


// Vertical Movement

// Position Control with upper and lower limits
if (_vPos > 128 and keyboard_check(_key_up)) {
	_vPos -= _vPosJumpDistance * (y / room_height);
}
else if (_vPos < (room_height - 128) and keyboard_check(_key_down)) {
	_vPos += _vPosJumpDistance * (y / room_height);
}

// Vertical Movement
image_angle = -(_vPos - y) / 3.5; // Adjust angle to folow vertical movement velocity
y += (_vPos - y) / 4; // Move to setpoint (_vPos) proportionally.

// Pseudo z-axis scaling
image_xscale = 0.2 + (y / room_height);
image_yscale = 0.2 + (y / room_height);