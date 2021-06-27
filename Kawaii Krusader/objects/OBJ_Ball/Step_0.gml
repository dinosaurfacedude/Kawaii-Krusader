/// @description Insert description here
// applies gravity
yspd += grav;

if place_meeting(x+xspd,y,obj_wall){
	
	while !place_meeting(c+sign(xspd),y,obj_wall){
		x+=sign(xspd);
	}
	//bounce
	xspd *=-bouncedecay;
}

if place_meeting(x,y+yspd,obj_wall){
	while !place_meeting(x,y+sign(yspd),obj_wall){
		y+=sign(yspd)
	}
	yspd *=-bouncedecay;
}

//updates the positions
x+=xspd;
y+=yspd;