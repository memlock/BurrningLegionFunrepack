--[[ Bloodmyst Isle -- Nazzivus Felsworn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function NazzivusFelsworn_OnCombat(Unit, Event)
Unit:RegisterEvent("NazzivusFelsworn_Immolate", 6000, 1)
Unit:RegisterEvent("NazzivusFelsworn_ShadowBolt", 8000, 0)
end

function NazzivusFelsworn_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11962, pUnit:GetMainTank()) 
end

function NazzivusFelsworn_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function NazzivusFelsworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NazzivusFelsworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NazzivusFelsworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17339, 1, "NazzivusFelsworn_OnCombat")
RegisterUnitEvent(17339, 2, "NazzivusFelsworn_OnLeaveCombat")
RegisterUnitEvent(17339, 3, "NazzivusFelsworn_OnKilledTarget")
RegisterUnitEvent(17339, 4, "NazzivusFelsworn_OnDied")