--[[ Mulgore -- Arra'Chea.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function Arrachea_OnCombat(Unit, Event)
Unit:RegisterEvent("Arrachea_HeadButt", 10000, 0)
end

function Arrachea_HeadButt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6730, pUnit:GetClosestPlayer()) 
end

function Arrachea_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Arrachea_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Arrachea_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3058, 1, "Arrachea_OnCombat")
RegisterUnitEvent(3058, 2, "Arrachea_OnLeaveCombat")
RegisterUnitEvent(3058, 3, "Arrachea_OnKilledTarget")
RegisterUnitEvent(3058, 4, "Arrachea_OnDied")
