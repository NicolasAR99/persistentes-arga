/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params ["_playerUnit", "_didJIP"];

waitUntil { time > 10 };

private _access_denial_list = call MIV_fnc_get_access_denial_list;
private _player_uid = getPlayerUID _playerUnit;

if (_player_uid in _access_denial_list) then {
  [[], "core\scripts\kick_player_in_debt.sqf"] remoteExec  ["BIS_fnc_execVM", owner _playerUnit, false];
};
/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/