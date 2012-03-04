--[[ The Barrens -- Savannah Matriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SavannahMatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("SavannahMatriarch_SavannahCubs", 4000, 1)
end

function SavannahMatriarch_SavannahCubs(pUnit, Event) 
pUnit:CastSpell(8210) 
end

function SavannahMatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SavannahMatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SavannahMatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5865, 1, "SavannahMatriarch_OnCombat")
RegisterUnitEvent(5865, 2, "SavannahMatriarch_OnLeaveCombat")
RegisterUnitEvent(5865, 3, "SavannahMatriarch_OnKilledTarget")
RegisterUnitEvent(5865, 4, "SavannahMatriarch_OnDied")