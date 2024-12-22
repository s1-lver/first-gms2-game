#region GLOBAL VARIABLES

global._data = 
{
	highscore : 0
};
global._clean_data = global._data;
global._save_file = "data.save";

#endregion

#region MACROS

#macro data global._data
#macro save_file global._save_file

#endregion

#region ENUMS

enum Powerups {
	None,
	Tri_Shot,
	Rapid_Shot,
	total
};

#endregion

load_save_data(save_file);

