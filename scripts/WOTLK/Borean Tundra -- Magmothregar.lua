--[[ Borean Tundra -- Magmothregar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Magmothregar_OnCombat(Unit, Event)
Unit:RegisterEvent("Magmothregar_Fervor", 10000, 0)
Unit:RegisterEvent("Magmothregar_MagnataurCharge", 8000, 0)
end

function Magmothregar_Fervor(pUnit, Event) 
pUnit:CastSpell(50822) 
end

function Magmothregar_MagnataurCharge(pUnit, Event) 
pUnit:CastSpell(50413) 
end

function Magmothregar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Magmothregar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Magmothregar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25430, 1, "Magmothregar_OnCombat")
RegisterUnitEvent(25430, 2, "Magmothregar_OnLeaveCombat")
RegisterUnitEvent(25430, 3, "Magmothregar_OnKilledTarget")
RegisterUnitEvent(25430, 4, "Magmothregar_OnDied")