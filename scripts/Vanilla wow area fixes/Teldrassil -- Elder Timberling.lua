--[[ Teldrassil -- Elder Timberling.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ElderTimberling_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderTimberling_HealingWave", 12000, 0)
Unit:RegisterEvent("ElderTimberling_LightningShield", 4000, 0)
end

function ElderTimberling_HealingWave(pUnit, Event) 
pUnit:CastSpell(332) 
end

function ElderTimberling_LightningShield(pUnit, Event) 
pUnit:CastSpell(324) 
end

function ElderTimberling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderTimberling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end



RegisterUnitEvent(2030, 1, "ElderTimberling_OnCombat")
RegisterUnitEvent(2030, 2, "ElderTimberlingElderTimberling_OnLeaveCombat")
RegisterUnitEvent(2030, 3, "ElderTimberling_OnKilledTarget")
RegisterUnitEvent(2030, 4, "ElderTimberling_OnDied")