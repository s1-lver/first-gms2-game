/// @description Game Over logic
 
if (points > data.highscore) { data.highscore = points; }
points = 0;
room_goto(rm_mainMenu);
