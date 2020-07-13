local LAVA_DAMAGE_TICK_RATE = 2
local LAVA_DAMAGE_AMOUNT = 100

function lavatrigger2(trigger)
        DebugPrint("Its accessed dy")
        local ent = trigger.activator

        if not ent then return end

        local hp = ent:GetHealth()

        if hp >= LAVA_DAMAGE_AMOUNT then
            ent:SetHealth(hp - LAVA_DAMAGE_AMOUNT)
        else
            ent:ForceKill(true)
        end
        
    return LAVA_DAMAGE_TICK_RATE
end