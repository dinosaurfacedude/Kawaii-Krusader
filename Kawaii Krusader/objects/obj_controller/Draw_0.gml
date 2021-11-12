draw_text(8,8, "Score: " + string(global.score));

draw_text(8,50, "lives " + string(global.playerlives));



//if the player is out of lives, keeps player from playing any more.
//couldn't figure out how to make both disappear, so I made them appear off screen.
if(global.playerlives < 0){

draw_text(575,350, global.gameover);
obj_player.x = -10000;
OBJ_Ball.x = -5000;


}