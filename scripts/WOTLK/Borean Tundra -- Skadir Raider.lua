--[[ Borean Tundra -- Skadir Raider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SkadirRaider_OnCombat(Unit, Event)
Unit:RegisterEvent("SkadirRaider_FreezingTrap", 1000, 1)
Unit:RegisterEvent("SkadirRaider_ThrowSpear", 6000, 0)
end

function SkadirRaider_FreezingTrap(pUnit, Event) 
pUnit:CastSpell(43414) 
end

function SkadirRaider_ThrowSpear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43413, pUnit:GetMainTank()) 
end

function SkadirRaider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SkadirRaider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SkadirRaider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25522, 1, "SkadirRaider_OnCombat")
RegisterUnitEvent(25522, 2, "SkadirRaider_OnLeaveCombat")
RegisterUnitEvent(25522, 3, "SkadirRaider_OnKilledTarget")
RegisterUnitEvent(25522, 4, "SkadirRaider_OnDied")