--[[ The Barrens -- Sludge Beast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SludgeBeast_OnCombat(Unit, Event)
Unit:RegisterEvent("SludgeBeast_BlackSludge", 6000, 0)
end

function SludgeBeast_BlackSludge(pUnit, Event) 
pUnit:CastSpell(7279) 
end

function SludgeBeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SludgeBeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SludgeBeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3295, 1, "SludgeBeast_OnCombat")
RegisterUnitEvent(3295, 2, "SludgeBeast_OnLeaveCombat")
RegisterUnitEvent(3295, 3, "SludgeBeast_OnKilledTarget")
RegisterUnitEvent(3295, 4, "SludgeBeast_OnDied")