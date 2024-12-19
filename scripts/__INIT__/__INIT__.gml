// Initialise global variables
global.Highscore = 0;

// Load saved data
ini_open("save.ini");
global.Highscore = ini_read_real("Variables", "highscore", 0);

ini_close();
