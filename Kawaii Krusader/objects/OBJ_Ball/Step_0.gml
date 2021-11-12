/// @description Insert description here
// applies gravity
yspd += grav;

//If the ball touches the wall, it loses speed and bounces less.
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

//if ball touches the player, and the player does not swing their sword, they lose a life.
else if(place_meeting(x,y,obj_player) && !(obj_player.sprite_index == slash_attack)){

	global.playerlives = global.playerlives - 1;
	OBJ_Ball.x = 200;
	OBJ_Ball.y = 200;

}


//if the player touches the ball while swinging a sword, then the ball bounces off of the player.
if (place_meeting(x,y+yspd,obj_player) && obj_player.sprite_index == slash_attack){
	while !place_meeting(x,y+sign(yspd),obj_player){
		y+=sign(yspd)
	}
	yspd *= -1.5;
	xspd = random_range(-20, 20);
}



//updates the positions
x+=xspd;
y+=yspd;