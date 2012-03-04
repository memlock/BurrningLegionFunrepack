--[[ Ashenvale -- Terrowulf Shadow Weaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TerrowulfShadowWeaver_OnCombat(Unit, Event)
Unit:RegisterEvent("TerrowulfShadowWeaver_VeilofShadow", 8000, 0)
end

function TerrowulfShadowWeaver_VeilofShadow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7068, pUnit:GetMainTank()) 
end

function TerrowulfShadowWeaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TerrowulfShadowWeaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TerrowulfShadowWeaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3791, 1, "TerrowulfShadowWeaver_OnCombat")
RegisterUnitEvent(3791, 2, "TerrowulfShadowWeaver_OnLeaveCombat")
RegisterUnitEvent(3791, 3, "TerrowulfShadowWeaver_OnKilledTarget")
RegisterUnitEvent(3791, 4, "TerrowulfShadowWeaver_OnDied")