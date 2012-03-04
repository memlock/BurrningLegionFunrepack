--[[ Durotar -- KulTiras Marine.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function KulTirasMarine_OnCombat(Unit, Event)
Unit:RegisterEvent("KulTirasMarine_ShieldBash", 6000, 0)
end

function KulTirasMarine_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11972, pUnit:GetMainTank()) 
end

function KulTirasMarine_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KulTirasMarine_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KulTirasMarine_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3129, 1, "KulTirasMarine_OnCombat")
RegisterUnitEvent(3129, 2, "KulTirasMarine_OnLeaveCombat")
RegisterUnitEvent(3129, 3, "KulTirasMarine_OnKilledTarget")
RegisterUnitEvent(3129, 4, "KulTirasMarine_OnDied")