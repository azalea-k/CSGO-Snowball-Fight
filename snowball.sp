#pragma semicolon 1
#include <sourcemod>
#include <sdktools>

#define PLUGIN_VERSION "1.0"

public Plugin myinfo = {
    name        = "",
    author        = "azalea",
    description = "",
    version        = PLUGIN_VERSION,
    url            = ""
};
public void OnPluginStart(){
	HookEvent("round_start", OnRoundStart);
}
public void OnRoundStart(Handle event, const char[] name, bool dontBroadcast)
			{for (int i = 1; i <= 12; i++)
				if(IsClientInGame(i) && !IsFakeClient(i)) { 
					GivePlayerItem(i, "weapon_snowball"); 
					SetEntityHealth(i, 8);
				}
}



