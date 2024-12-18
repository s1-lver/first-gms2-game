/// @description Game Over logic
 
if (points > global.Highscore) { global.Highscore = points; }
points = 0;
room_goto(rm_mainMenu);
