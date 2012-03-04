--[[ Dragonblight -- Smoldering Skeleton.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SmolderingSkeleton_OnCombat(Unit, Event)
Unit:RegisterEvent("SmolderingSkeleton_SmolderingBones", 8000, 0)
end

function SmolderingSkeleton_SmolderingBones(pUnit, Event) 
pUnit:CastSpell(51437) 
end

function SmolderingSkeleton_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SmolderingSkeleton_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SmolderingSkeleton_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27360, 1, "SmolderingSkeleton_OnCombat")
RegisterUnitEvent(27360, 2, "SmolderingSkeleton_OnLeaveCombat")
RegisterUnitEvent(27360, 3, "SmolderingSkeleton_OnKilledTarget")
RegisterUnitEvent(27360, 4, "SmolderingSkeleton_OnDied")