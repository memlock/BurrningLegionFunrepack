--[[ Bloodmyst Isle -- Blacksilt Tidecaller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BlacksiltTidecaller_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksiltTidecaller_LightningShield", 5000, 0)
Unit:RegisterEvent("BlacksiltTidecaller_Rejuvenation", 10000, 0)
end

function BlacksiltTidecaller_LightningShield(pUnit, Event) 
pUnit:CastSpell(12550) 
end

function BlacksiltTidecaller_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(12160) 
end

function BlacksiltTidecaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksiltTidecaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksiltTidecaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17327, 1, "BlacksiltTidecaller_OnCombat")
RegisterUnitEvent(17327, 2, "BlacksiltTidecaller_OnLeaveCombat")
RegisterUnitEvent(17327, 3, "BlacksiltTidecaller_OnKilledTarget")
RegisterUnitEvent(17327, 4, "BlacksiltTidecaller_OnDied")