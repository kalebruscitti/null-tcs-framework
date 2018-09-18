/**
	Initializes all the radios of a given group.
	Parameters:
		0 - (group) The group whose radios should be initialized

	Return:
		None
*/
if (!isServer) exitWith {};

if (TCS_var_addRadiosToGroup) then {
	_this spawn {
		waitUntil {
			sleep 0.1;
			[] call acre_api_fnc_isInitialized
		};

		{
			[_x] call TCS_fnc_initUnitRadios;
		} forEach (units (_this select 0));
	}
	
};