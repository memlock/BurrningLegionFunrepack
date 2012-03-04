--[[ Ashenvale -- Warsong Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WarsongShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongShaman_Bloodlust", 2000, 2)
Unit:RegisterEvent("WarsongShaman_LightningBolt", 13000, 0)
end

function WarsongShaman_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function WarsongShaman_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20805, pUnit:GetMainTank()) 
end

function WarsongShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11683, 1, "WarsongShaman_OnCombat")
RegisterUnitEvent(11683, 2, "WarsongShaman_OnLeaveCombat")
RegisterUnitEvent(11683, 3, "WarsongShaman_OnKilledTarget")
RegisterUnitEvent(11683, 4, "WarsongShaman_OnDied")