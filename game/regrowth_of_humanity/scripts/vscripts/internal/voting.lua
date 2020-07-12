require("abilities/development/printtable")

RoHGames = {}

function votingtest1(trigger)
    DebugPrint("-------------------- [ ADDFIRST ] ------------------")
    
    local gamename = "TossBall"
    local voterent = 254
    
    RoHGames[gamename]= {voters = {} }
    
    DebugPrint("----- RoHGames -----")
    for k,v in pairs(RoHGames) do
            DebugPrint(k,v)
    end
    DebugPrint("----- RoHGames.gamename -----")
    table.insert(RoHGames[gamename]["voters"],voterent)
    
    for k,v in pairs(RoHGames[gamename]) do
            DebugPrint(k,v)
    end
    
    DebugPrint("----- Voters -----")
    
    for k,v in pairs(RoHGames[gamename]["voters"]) do
            DebugPrint(k,v)
    end
end

function votingtest2(trigger)
    DebugPrint("-------------------- [ ADDSECOND ] ------------------")

    local gamename = "RunFast"
    local voterent = 69
    
    RoHGames[gamename]= {voters = {} }
    
    DebugPrint("----- RoHGames -----")
    for k,v in pairs(RoHGames) do
            DebugPrint(k,v)
    end
    DebugPrint("----- RoHGames.gamename -----")
    table.insert(RoHGames[gamename]["voters"],voterent)
    
    for k,v in pairs(RoHGames[gamename]) do
            DebugPrint(k,v)
    end
    
    DebugPrint("----- Voters -----")
    
    for k,v in pairs(RoHGames[gamename]["voters"]) do
            DebugPrint(k,v)
    end
end

function printtrigger(trigger)
    for k,v in pairs(RoHGames) do
        DebugPrint(k,v)
    end
end
--[[function votingtest1(trigger) --TEMPLATE

    DebugPrint("---11111111----")
    --------- GET VOTER ENTITY ----------
    local voter = trigger.activator
    local voterent = voter:GetEntityIndex()

    -------- PUT GAME NAME BELOW -------------
                                    
    local gamename = "TossBall"     ----<<<<<<<<<< INSERT NAME

    --------TABLE CHECKING AND CREATION -----------

    if type(RoHGames[gamename]) == "table" then
        --check whether table is already created
        print("[NOTIFICATION] Table "..gamename.." existed already")
    else 
        --create a table if not created yet
        --creates RoHGames>GAMENAME>voters>
       

        RoHGames[gamename] = {voters={}}
            
    end

    -------- VOTER CHECKING AND INSERTING ------------
        
    if has_value(RoHGames[gamename]["voters"],voterent) then 
        --check whether voter has voted 
        DebugPrint("Voter has already voted")
    else
        --insert voter into table
        table.insert(RoHGames[gamename]["voters"],voterent)
    end

    ------------- PRINTING TABLE NAME --------------
    DebugPrint(" ")
    DebugPrint("==========[ GAMES REGISTERED ]============")
    for k,v in pairs(RoHGames) do
        DebugPrint(k,v)
    end
    DebugPrint(" ")
    DebugPrint("===========[ VOTERS TABLE ]================")
    for k,v in pairs(RoHGames[gamename]["voters"]) do
        DebugPrint(k,v)
    end 

      

        
end

function votingtest2(trigger) --TEMPLATE

    DebugPrint("--- 222222222 ---")
    --------- GET VOTER ENTITY ----------
    local voter = trigger.activator
    local voterent = voter:GetEntityIndex()

    -------- PUT GAME NAME BELOW -------------
                                    
    local gamename = "EpicSave"     ----<<<<<<<<<< INSERT NAME

    --------TABLE CHECKING AND CREATION -----------

    if type(RoHGames[gamename]) == "table" then
        --check whether table is already created
        print("[NOTIFICATION] Table "..gamename.." existed already")
    else 
        --create a table if not created yet
        --creates RoHGames>GAMENAME>voters>
       

        RoHGames[gamename] = {voters={}}
            
    end

    -------- VOTER CHECKING AND INSERTING ------------
        
    if has_value(RoHGames[gamename]["voters"],voterent) then 
        --check whether voter has voted 
        DebugPrint("Voter has already voted")
    else
        --insert voter into table
        table.insert(RoHGames[gamename]["voters"],voterent)
    end

    ------------- PRINTING TABLE NAME --------------

    DebugPrint("==========[ GAMES REGISTERED ]============")
    for k,v in pairs(RoHGames) do
        DebugPrint(k,v)
    end
        
    DebugPrint("===========[ VOTERS TABLE ]================")
    for k,v in pairs(RoHGames[gamename]["voters"]) do
        DebugPrint(k,v)
    end 

    
        
end

function printtrigger(trigger)
    DebugPrint(" ")
    DebugPrint(" ")
    DebugPrint("======>> [ TRIGGER EVENT LIST ] <<=====")
    DebugPrint("--- TRIGGER ---")
    for k,v in pairs(trigger) do
        DebugPrint(k,v)
    end 
    DebugPrint(" ")
    DebugPrint("--- CALLER TABLE ---")
    DebugPrint("Caller Name: " .. trigger.caller:GetEntityIndex())

    for k,v in pairs(trigger.caller) do
        DebugPrint(k,v)
    end 
    DebugPrint(" ")
    DebugPrint("--- ACTIVATOR TABLE ---")
    DebugPrint("Activator Name: " .. trigger.activator:GetEntityIndex())

    for k,v in pairs(trigger.activator) do
        DebugPrint(k,v)
    end 

    
    
    
end ]]--

function votingtest3(trigger) --test 3
    local voter = trigger.activator
    local voterent = voter:GetEntityIndex()

    DebugPrint("[TRIGGER] TEST > 3 < Triggered")
    DebugPrint("Hero Ent: " .. voterent)

    if type(voterlisttest3) == "table" then
        DebugPrint("[NOTIFICATION] Table voterlisttest3 existed already")
    else
        voterlisttest3 = {}
    end

    if has_value(voterlisttest3,voterent) then 
        DebugPrint("Voter has already voted")
    else
        table.insert(voterlisttest3,voterent)
    end
    
    for k,v in ipairs(voterlisttest3) do
        print(k,v)
    end

    --if person voted then do nothing
    --if person not voted then add him into table

    
    DebugPrint("Trigger activated once!")
    
end

function has_value (tab, val)
    for index, value in pairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end
--[[ EXAMPLE TO BE USED FOR CHECKING IF ELSE
    if has_value(arr, 'b') then
        print 'Yep'
    else
        print 'Nope'
    end
]]--
--[[ 
    games = {}
--function area
 --function to check whether value                             inside table exists

function has_value(tab, val) 
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end
-------- temporary variables

local gamename = "TossBall"

local voterent = 6969

--------Table checking and creation

if type(games[gamename]) == "table" then
    --check whether table is already created
        print("[NOTIFICATION] Table "..gamename.." existed already")
else 
    --create a table if not created yet
    games = {
        [gamename] = 
            {
                voters = {}
            }
        }
        
end

--------voter checking and inserting
    
if has_value(games[gamename]["voters"],voterent) then 
    --check whether voter has voted 
    print("Voter has already voted")
else
    --insert voter into table
    table.insert(games[gamename]["voters"],voterent)
end

-- printing tables

print("==========games[gamename]=======")
for k,v in pairs(games[gamename]) do
        print(k,v)
    end
    
    print("===========gamename[\"voters\"]================")
    for k,v in pairs(games[gamename]["voters"]) do
        print(k,v)
    end 
    
]]