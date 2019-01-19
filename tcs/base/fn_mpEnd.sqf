/*
	Description:
		Broadcasts the mission end to all connected clients.
		MUST be run on the server.

	Parameters:
		0 - (number) Which ending should be broadcasted (one of the numbered endings in the CfgDebriefings)
		1 - (boolean) True if the ending was a win, false otherwise

	Returns:
		None

	Example:
		[1, true] call TCS_fnc_mpEnd;


*/
if (!isServer) exitWith {};

if (isNil "TCS_var_EndingTriggered") then {
	_this remoteExec ["f_fnc_mpEndReceiver", 0];
};

TCS_var_EndingTriggered = true;

// ====================================================================================