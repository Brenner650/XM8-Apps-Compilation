 /*
 * XM8 App Base Marker
 * Created by - Crito @Vanaheim Gaming Servers
 * Discord - https://discord.gg/WEFzqPa
 * Date Created - 5/21/2023
 * Version - 1
 * Version Date - 5/21/2023
 */

disableSerialization;

private _flagArray = [];

private _playerUID = getPlayerUID player;
{
	private _flag = _x;
	private _buildRights = _flag getVariable ["ExileTerritoryBuildRights", []];
	if (_playerUID in _buildRights) then
	{
		private _name = _flag getVariable ["ExileTerritoryName", ""];
		private _pos = getPos _flag;
		private _marker = createMarkerLocal [_name, _pos];
		_marker setMarkerTextLocal _name;
		_marker setMarkerTypeLocal "mil_flag";
		_marker setMarkerColorLocal "ColorYellow";
		_flagArray pushBack _flag;
	};
}forEach (allMissionObjects "Exile_Construction_Flag_Static");

private _nearestFlag = [_flagArray, player] call BIS_fnc_nearestPosition;
private _nearestFlagName = _nearestFlag getVariable ["ExileTerritoryName", ""];
[_nearestFlagName]execVM "custom\xm8_apps\baseMarker\code\baseMarker_Zoom.sqf";

["TaskSucceeded",["","Base markers toggled on."]] call BIS_fnc_showNotification;