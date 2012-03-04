--[[ Stonetalon Mountains -- Furious Stone Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function FuriousStoneSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("FuriousStoneSpirit_Knockdown", 8000, 0)
end

function FuriousStoneSpirit_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5164, pUnit:GetMainTank()) 
end

function FuriousStoneSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FuriousStoneSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FuriousStoneSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4035, 1, "FuriousStoneSpirit_OnCombat")
RegisterUnitEvent(4035, 2, "FuriousStoneSpirit_OnLeaveCombat")
RegisterUnitEvent(4035, 3, "FuriousStoneSpirit_OnKilledTarget")
RegisterUnitEvent(4035, 4, "FuriousStoneSpirit_OnDied")