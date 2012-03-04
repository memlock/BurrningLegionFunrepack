--[[ The Barrens -- Polly.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Polly_OnCombat(Unit, Event)
Unit:RegisterEvent("Polly_Stealth", 1000, 1)
Unit:RegisterEvent("Polly_SummonPollyJr", 4000, 1)
end

function Polly_Stealth(pUnit, Event) 
pUnit:CastSpell(8822) 
end

function Polly_SummonPollyJr(pUnit, Event) 
pUnit:CastSpell(9998) 
end

function Polly_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Polly_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Polly_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7167, 1, "Polly_OnCombat")
RegisterUnitEvent(7167, 2, "Polly_OnLeaveCombat")
RegisterUnitEvent(7167, 3, "Polly_OnKilledTarget")
RegisterUnitEvent(7167, 4, "Polly_OnDied")