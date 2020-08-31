function addvalue(keys)
    DebugPrint("============[ VALUE ADDED INTO TABLE ]=============")
    local gamename = "examplegame1"
    local hero = keys.caster
    local playerid = hero:GetPlayerID()
    local enterdata = CustomNetTables:SetTableValue("minigame", gamename, {playerid = playerid})

    local exampleid1 = 2
    local exampleid2 = 1
    local enterdata = CustomNetTables:SetTableValue("minigame", gamename, {playerid = exampleid1})
    local enterdata = CustomNetTables:SetTableValue("minigame", gamename, {playerid = exampleid2})
    local getdata = CustomNetTables:GetTableValue("minigame", gamename).playerid
    DebugPrint(getdata)
    DebugPrint("playerid = " .. playerid)
end