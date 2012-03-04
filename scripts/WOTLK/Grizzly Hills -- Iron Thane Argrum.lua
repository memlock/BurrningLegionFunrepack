--[[ Grizzly Hills -- Iron Thane Argrum.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IronThaneArgrum_OnCombat(Unit, Event)
Unit:RegisterEvent("IronThaneArgrum_CallLightning", 6000, 0)
Unit:RegisterEvent("IronThaneArgrum_LightningShield", 4000, 0)
end

function IronThaneArgrum_CallLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32018, pUnit:GetMainTank()) 
end

function IronThaneArgrum_LightningShield(pUnit, Event) 
pUnit:CastSpell(52651) 
end

function IronThaneArgrum_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronThaneArgrum_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronThaneArgrum_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26348, 1, "IronThaneArgrum_OnCombat")
RegisterUnitEvent(26348, 2, "IronThaneArgrum_OnLeaveCombat")
RegisterUnitEvent(26348, 3, "IronThaneArgrum_OnKilledTarget")
RegisterUnitEvent(26348, 4, "IronThaneArgrum_OnDied")