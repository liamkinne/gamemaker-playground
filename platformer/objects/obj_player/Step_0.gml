// Horzontal Movement

_hSpeed /= 2; // Halve speed for deceleration

_hSpeed += (- keyboard_check_direct(ord("A")) + keyboard_check_direct(ord("D"))) * _hMaxSpeed;

while (place_meeting(x + _hSpeed, y, obj_wall)) { // Reduce _hSpeed until in contact with wall.
	_hSpeed -= sign(_hSpeed);
}

x += _hSpeed; // Apply  Movement

// Vertical Movement
if (!place_meeting(x, y + _vSpeed, obj_wall)) {
	_vSpeed += _vAccel; // Increase acceleration down
}

if (place_meeting(x, y + _vSpeed + 1, obj_wall)) {
	_vSpeed -= _vJump * keyboard_check_pressed(ord("W")); // Jump
}
else {
	_vSpeed += _vJump * keyboard_check_pressed(ord("S")); // Powerslam
}

while (place_meeting(x, y + _vSpeed, obj_wall)) { // Reduce _vSpeed until in contact with ground or roof.
	_vSpeed -= sign(_vSpeed);
}

y += _vSpeed; // Apply movement



