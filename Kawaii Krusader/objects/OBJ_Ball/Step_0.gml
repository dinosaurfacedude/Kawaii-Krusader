/// @description Insert description here
// applies gravity
yspd += grav;

if place_meeting(x+xspd,y,obj_wall){
	
	while !place_meeting(x+sign(xspd),y,obj_wall){
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

if (place_meeting(x+xspd,y,obj_player) && obj_player.sprite_index == slash_attack){
	
	while !place_meeting(x+sign(xspd),y,obj_player){
		x+=sign(xspd);
		
	}
	//bounce
	xspd *= -1.02;
	yspd *= -2;
}
else if(place_meeting(x,y,obj_player) && !(obj_player.sprite_index == slash_attack)){

	global.playerlives =- 1;

}

if (place_meeting(x,y+yspd,obj_player) && obj_player.sprite_index == slash_attack){
	while !place_meeting(x,y+sign(yspd),obj_player){
		y+=sign(yspd)
	}
	yspd *= -1.5;
	xspd = random_range(-20, 20);
}

else if(place_meeting(x,y,obj_player) && !(obj_player.sprite_index == slash_attack)){

	global.playerlives =- 1;

}

//updates the positions
x+=xspd;
y+=yspd;