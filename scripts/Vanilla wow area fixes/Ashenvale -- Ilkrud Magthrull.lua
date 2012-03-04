--[[ Ashenvale -- Ilkrud Magthrull.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function IlkrudMagthrull_OnCombat(Unit, Event)
Unit:RegisterEvent("IlkrudMagthrull_IlkrudsGuardians", 1000, 1)
Unit:RegisterEvent("IlkrudMagthrull_ShadowBolt", 8000, 0)
end

function IlkrudMagthrull_IlkrudsGuardians(pUnit, Event) 
pUnit:CastSpell(6487) 
end

function IlkrudMagthrull_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function IlkrudMagthrull_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IlkrudMagthrull_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IlkrudMagthrull_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3664, 1, "IlkrudMagthrull_OnCombat")
RegisterUnitEvent(3664, 2, "IlkrudMagthrull_OnLeaveCombat")
RegisterUnitEvent(3664, 3, "IlkrudMagthrull_OnKilledTarget")
RegisterUnitEvent(3664, 4, "IlkrudMagthrull_OnDied")