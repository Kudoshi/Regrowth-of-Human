
function preCacheResources(context)
    --alot of precache here are from previous games
   
    PrecacheResource("model_folder", "models/items/treant", context)
    PrecacheResource("particle_folder", "econ/items/treant", context)

    -- required for cosmetic shit
    PrecacheResource( "model", "models/development/invisiblebox.vmdl", context)
    -- building helper
    PrecacheResource("particle_folder", "particles/buildinghelper", context)

    --Own model
    PrecacheResource("model", "models/props_structures/good_statue008.vmdl", context)
    
    

    --PrecacheResource("sound", "sound/items/item_handofmidas.wav", context)
    PrecacheResource("sound", "sounds/weapons/hero/zuus/general_attack3.vsnd", context)
    

    PrecacheResource("particle", "particles/items2_fx/true_sight_debuff.vpcf", context)
    
    
   

    PrecacheUnitByNameSync("npc_dota_hero_treant", context)
    

    --Sounds
  
    PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_magnataur.vsndevts", context)
end
