--[[ Crystalsong Forest -- Lost Shandaral Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function LostShandaralSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("LostShandaralSpirit_Moonfire", 6000, 0)
Unit:RegisterEvent("LostShandaralSpirit_Regrowth", 13000, 0)
end

function LostShandaralSpirit_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15798, pUnit:GetMainTank()) 
end

function LostShandaralSpirit_Regrowth(pUnit, Event) 
pUnit:CastSpell(16561) 
end

function LostShandaralSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LostShandaralSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LostShandaralSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31231, 1, "LostShandaralSpirit_OnCombat")
RegisterUnitEvent(31231, 2, "LostShandaralSpirit_OnLeaveCombat")
RegisterUnitEvent(31231, 3, "LostShandaralSpirit_OnKilledTarget")
RegisterUnitEvent(31231, 4, "LostShandaralSpirit_OnDied")