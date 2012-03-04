--[[ Dragonblight -- Dragonblight Mage Huntertwo.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DragonblightMageHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("DragonblightMageHunter_ArcaneReflection", 9000, 1)
Unit:RegisterEvent("DragonblightMageHunter_FireReflection", 8000, 1)
Unit:RegisterEvent("DragonblightMageHunter_FrostReflection", 7000, 1)
Unit:RegisterEvent("DragonblightMageHunter_ShadowReflection", 6000, 1)
end

function DragonblightMageHunter_ArcaneReflection(pUnit, Event) 
pUnit:CastSpell(51766) 
end

function DragonblightMageHunter_FireReflection(pUnit, Event) 
pUnit:CastSpell(51758) 
end

function DragonblightMageHunter_FrostReflection(pUnit, Event) 
pUnit:CastSpell(51763) 
end

function DragonblightMageHunter_ShadowReflection(pUnit, Event) 
pUnit:CastSpell(51764) 
end

function DragonblightMageHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DragonblightMageHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DragonblightMageHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32572, 1, "DragonblightMageHunter_OnCombat")
RegisterUnitEvent(32572, 2, "DragonblightMageHunter_OnLeaveCombat")
RegisterUnitEvent(32572, 3, "DragonblightMageHunter_OnKilledTarget")
RegisterUnitEvent(32572, 4, "DragonblightMageHunter_OnDied")