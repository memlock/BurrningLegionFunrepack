--[[ The Barrens -- Gesharahan.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Gesharahan_OnCombat(Unit, Event)
Unit:RegisterEvent("Gesharahan_DeadlyPoison", 6000, 1)
end

function Gesharahan_DeadlyPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3583, pUnit:GetMainTank()) 
end

function Gesharahan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Gesharahan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Gesharahan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3398, 1, "Gesharahan_OnCombat")
RegisterUnitEvent(3398, 2, "Gesharahan_OnLeaveCombat")
RegisterUnitEvent(3398, 3, "Gesharahan_OnKilledTarget")
RegisterUnitEvent(3398, 4, "Gesharahan_OnDied")