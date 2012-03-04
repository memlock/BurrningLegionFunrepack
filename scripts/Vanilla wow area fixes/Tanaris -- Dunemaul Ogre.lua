--[[ Tanaris -- Dunemaul Ogre.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DunemaulOgre_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulOgre_BattleStance", 1000, 1)
Unit:RegisterEvent("DunemaulOgre_HeroicStrike", 4000, 0)
end

function DunemaulOgre_BattleStance(pUnit, Event) 
pUnit:CastSpell(7165) 
end

function DunemaulOgre_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function DunemaulOgre_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulOgre_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulOgre_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5471, 1, "DunemaulOgre_OnCombat")
RegisterUnitEvent(5471, 2, "DunemaulOgre_OnLeaveCombat")
RegisterUnitEvent(5471, 3, "DunemaulOgre_OnKilledTarget")
RegisterUnitEvent(5471, 4, "DunemaulOgre_OnDied")