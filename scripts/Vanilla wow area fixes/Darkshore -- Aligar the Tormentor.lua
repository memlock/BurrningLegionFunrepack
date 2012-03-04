--[[ Darkshore -- Aligar the Tormentor.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function AligartheTormentor_OnCombat(Unit, Event)
Unit:RegisterEvent("AligartheTormentor_BattleStance", 2000, 1)
Unit:RegisterEvent("AligartheTormentor_Hamstring", 9000, 0)
Unit:RegisterEvent("AligartheTormentor_HeroicStrike", 7000, 0)
end

function AligartheTormentor_BattleStance(pUnit, Event) 
pUnit:CastSpell(7165) 
end

function AligartheTormentor_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function AligartheTormentor_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25712, pUnit:GetMainTank()) 
end

function AligartheTormentor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AligartheTormentor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AligartheTormentor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3898, 1, "AligartheTormentor_OnCombat")
RegisterUnitEvent(3898, 2, "AligartheTormentor_OnLeaveCombat")
RegisterUnitEvent(3898, 3, "AligartheTormentor_OnKilledTarget")
RegisterUnitEvent(3898, 4, "AligartheTormentor_OnDied")