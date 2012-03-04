--[[ Mulgore -- Sister Hatelash.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SisterHatelash_OnCombat(Unit, Event)
Unit:RegisterEvent("SisterHatelash_LightningBarrier", 1000, 1)
Unit:RegisterEvent("SisterHatelash_LightningBolt", 8000, 0)
end

function SisterHatelash_LightningBarrier(pUnit, Event) 
pUnit:CastSpell(6960) 
end

function SisterHatelash_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetClosestPlayer()) 
end

function SisterHatelash_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SisterHatelash_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SisterHatelash_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5785, 1, "SisterHatelash_OnCombat")
RegisterUnitEvent(5785, 2, "SisterHatelash_OnLeaveCombat")
RegisterUnitEvent(5785, 3, "SisterHatelash_OnKilledTarget")
RegisterUnitEvent(5785, 4, "SisterHatelash_OnDied")