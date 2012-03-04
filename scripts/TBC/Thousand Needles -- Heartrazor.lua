--[[ Thousand Needles -- Heartrazor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function Heartrazor_OnCombat(Unit, Event)
Unit:RegisterEvent("Heartrazor_LethalToxin", 12000, 0)
end

function Heartrazor_LethalToxin(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8256, pUnit:GetMainTank()) 
end

function Heartrazor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Heartrazor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Heartrazor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5934, 1, "Heartrazor_OnCombat")
RegisterUnitEvent(5934, 2, "Heartrazor_OnLeaveCombat")
RegisterUnitEvent(5934, 3, "Heartrazor_OnKilledTarget")
RegisterUnitEvent(5934, 4, "Heartrazor_OnDied")