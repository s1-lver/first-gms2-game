#region GLOBAL VARIABLES

global._data = 
{
	highscore : 0
};
global._save_file = "data.save";

#endregion

#region MACROS

#macro data global._data
#macro save_file global._save_file

#endregion

load_save_data(save_file);

