 /*
 * XM8 App Base Marker
 * Created by - Crito @Vanaheim Gaming Servers
 * Discord - https://discord.gg/WEFzqPa
 * Date Created - 5/21/2023
 * Version - 1
 * Version Date - 5/21/2023
 */

disableSerialization;

private _playerUID = getPlayerUID player;
{
	private _flag = _x;
	private _buildRights = _flag getVariable ["ExileTerritoryBuildRights", []];
	if (_playerUID in _buildRights) then
	{
	private _name = _flag getVariable ["ExileTerritoryName", ""];
	private _pos = getPos _flag;
	deleteMarkerLocal _name;
 
	};
}
forEach (allMissionObjects "Exile_Construction_Flag_Static");
["TaskSucceeded",["","Base markers toggled off."]] call BIS_fnc_showNotification;
