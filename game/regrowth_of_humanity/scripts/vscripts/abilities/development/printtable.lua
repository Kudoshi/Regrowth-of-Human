

function printMainTable(keys)
    
    DebugPrint("=================[ RoHGames Table ]===============")
    for k,v in pairs(RoHGames) do
        DebugPrint(">> RoHGames printmaintable accessed")
        DebugPrint(k,v)
    end
    DebugPrint("=================[ KEYS ]===============")
    for k,v in pairs(keys) do
        DebugPrint(k,v)
    end
end

function printtable(keys)
    DebugPrint("------------ [ HERO ENTITY ] -----------")
    local npc = EntIndexToHScript(keys.entindex)
    local heroname = npc:GetUnitName()
    DebugPrint("Hero Entity: " .. npc)
    DebugPrint("Hero Name: ".. heroname)
end

function printSecondTable(keys)
    
    local entity = keys.caster:GetEntityIndex()
    local heroname = keys.caster:GetUnitName()
    DebugPrint(" ")
    DebugPrint("----------- [ HERO INFO ] ----------")
    DebugPrint("Hero Name: ".. heroname)
    DebugPrint("Entity Number: " .. entity)
    
end