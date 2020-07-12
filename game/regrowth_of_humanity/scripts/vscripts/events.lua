require('libraries/notifications')
require("global_variable")

function CRoH:OnNPCSpawned(keys) --All entities spawned will start here
    DebugPrint("----------------------------------------")

    local npc = EntIndexToHScript(keys.entindex)
	local heroname = npc:GetUnitName()
    DebugPrint("[SYSTEM] OnNPCSpawned:" .. heroname)
    
    --Reroute to OnHeroIngame in Addongamemode
	if npc:IsRealHero() and npc.bFirstSpawned == nil then --unit only enters when spawned for first time
		npc.bFirstSpawned = true
		CRoH:OnHeroInGame(npc)

    end
    

    --=============== Pre Start Function ====================
    
    if RunAtStart == false then 
     RunAtStart = true
     PreStartFunction(keys)
    end
end

function PreStartFunction(keys)
    DebugPrint("Prestart function accessed")

end


function CRoH:OnEntityKilled(keys) --entered everytime an entity is killed

    DebugPrint("====================================================")
    DebugPrint("ENTITY KILLED = : ")

    --Killed entity
    local killed = EntIndexToHScript(keys.entindex_killed)
    local killedPlayerID = killed:GetPlayerOwnerID()
    local killedPlayerN = PlayerResource:GetPlayerName(killedPlayerID)
    local baseclass = killed:GetClassname()					--CEntityInstance
    --Killer entity
    local attacker = EntIndexToHScript(keys.entindex_attacker)			--CDOTA_BaseNPC
    local attackerOwner = attacker:GetPlayerOwner()				--CDOTAPlayer
    local attackerPlayerID = attacker:GetPlayerOwnerID()			--PlayerID
    local team = killed:GetTeamNumber()						--team
    local attackPlayerN = PlayerResource:GetPlayerName(attackerPlayerID)	--Player Name
    local attackerH = attackerOwner:GetAssignedHero()				--Assigned hero of the attacker
end

function CRoH:UnitLevelUp(keys)
 --
end