 /*
 * XM8 App Base Marker
 * Created by - Crito @Vanaheim Gaming Servers
 * Discord - https://discord.gg/WEFzqPa
 * Date Created - 5/21/2023
 * Version - 1
 * Version Date - 5/21/2023
 */

disableSerialization;

private _markerName = _this;
private _display = uiNamespace getVariable ["baseMarkerGUI",displayNull];
private _mapControl = _display displayCtrl 97506;

_mapControl ctrlMapAnimAdd [
									1, 								/// time it takes to move to the map location
									0.5, 							/// zoom level 			0 to 1.0     LOW the Number the more the map zooms in
									getMarkerPos _markerName		/// position to move map zoom to
							]; 
							
ctrlMapAnimCommit _mapControl;