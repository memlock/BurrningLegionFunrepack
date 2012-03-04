--[[ Crystalsong Forest -- Shandaral Druid Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ShandaralDruidSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("ShandaralDruidSpirit_Moonfire", 6000, 0)
Unit:RegisterEvent("ShandaralDruidSpirit_Regrowth", 13000, 0)
end

function ShandaralDruidSpirit_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15798, pUnit:GetMainTank()) 
end

function ShandaralDruidSpirit_Regrowth(pUnit, Event) 
pUnit:CastSpell(16561) 
end

function ShandaralDruidSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShandaralDruidSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShandaralDruidSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30863, 1, "ShandaralDruidSpirit_OnCombat")
RegisterUnitEvent(30863, 2, "ShandaralDruidSpirit_OnLeaveCombat")
RegisterUnitEvent(30863, 3, "ShandaralDruidSpirit_OnKilledTarget")
RegisterUnitEvent(30863, 4, "ShandaralDruidSpirit_OnDied")