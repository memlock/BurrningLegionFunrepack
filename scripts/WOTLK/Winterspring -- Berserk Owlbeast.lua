--[[ Winterspring -- Berserk Owlbeast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 18th, 2008. ]]

function BerserkOwlbeast_OnCombat(Unit, Event)
Unit:RegisterEvent("BerserkOwlbeast_Enrage", 1000, 1)
end

function BerserkOwlbeast_Enrage(pUnit, Event) 
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function BerserkOwlbeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BerserkOwlbeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BerserkOwlbeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7454, 1, "BerserkOwlbeast_OnCombat")
RegisterUnitEvent(7454, 2, "BerserkOwlbeast_OnLeaveCombat")
RegisterUnitEvent(7454, 3, "BerserkOwlbeast_OnKilledTarget")
RegisterUnitEvent(7454, 4, "BerserkOwlbeast_OnDied")