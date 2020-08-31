-- Generated from template

if CRoH == nil then
	_G.CRoH = class({})
end

--Required Files

require('libraries/timers')
require("_precache")
require('internal/util')
require("hero_util")
require('libraries/notifications')
require("events")
require("settings")
require("_util")
require("global_variable")


function Precache( context )
	preCacheResources(context)
end

-- Create the game mode when we activate
function Activate()
	DebugPrint("[SYSTEM] Game is starting...")
	CRoH:InitGameMode()
end

function CRoH:InitGameMode()
	DebugPrint("[SYSTEM] Init gamemode..")
	GameRules:GetGameModeEntity():SetThink( "OnThink", self, "GlobalThink", 2 )

	GameRules:GetGameModeEntity():SetCustomGameForceHero("npc_dota_hero_keeper_of_the_light")	--force all to spawn as wisp
	GameRules:SetCustomGameTeamMaxPlayers(2, 5) -- Team 2 : 5 players
	GameRules:SetCustomGameTeamMaxPlayers(3, 0) -- Team 3 : none
	GameRules:GetGameModeEntity():SetCustomHeroMaxLevel(1)
	GameRules:GetGameModeEntity():SetBuybackEnabled(false)
	GameRules:SetSameHeroSelectionEnabled(true)
	GameRules:SetHeroRespawnEnabled(true)
	GameRules:SetUseUniversalShopMode(false)

	--time settings
	GameRules:SetHeroSelectionTime(0) --set to 15 sec when not debugging
	GameRules:SetPreGameTime(5)
	GameRules:SetPostGameTime(30.0)
	GameRules:SetShowcaseTime(0)
	GameRules:SetTreeRegrowTime(99999)
    GameRules:SetRuneSpawnTime(0)
    GameRules:SetFirstBloodActive(false)
	
	--ListenToGameEvent Section

	ListenToGameEvent('npc_spawned', Dynamic_Wrap(CRoH, 'OnNPCSpawned'), self)
	ListenToGameEvent('entity_killed', Dynamic_Wrap(CRoH, 'OnEntityKilled'), self)
	ListenToGameEvent('dota_player_gained_level', Dynamic_Wrap(CRoH, 'UnitLevelUp'), self)

	--Global Variables
	

	--debug spew

	local spew = 0
	if ROH_DEBUG_SPEW then
		spew = 1
	end

	Convars:RegisterConvar('TREETAG_spew', tostring(spew), 'Set to 1 to start spewing treetag debug info.  Set to 0 to disable.', 0)

end

-- Evaluate the state of the game
function CRoH:OnThink()
	if GameRules:State_Get() == DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
		--print( "Template addon script is running." )
	elseif GameRules:State_Get() >= DOTA_GAMERULES_STATE_POST_GAME then
		return nil
	end
	return 1
end
--PreStart stuff
function CRoH:PreStart()
	--none here yet
	DebugPrint("When does it start tho")
end

function CRoH:OnHeroInGame(hero)

	--initialize a hero when it spawns for the first time

	DebugPrint("[SYSTEM] OnHeroInGame ACCESSED")
end

--CustomGameEventManager:Send_ServerToAllClients("quests_create_quest" , {name= "Lua Sided", desc = "Make a quest using Lua event", max=5, tag = 5}) 
--CustomGameEventManager:Send_ServerToAllClients("quests_update_quest" , {max=5, current=1, tag=5}) 

