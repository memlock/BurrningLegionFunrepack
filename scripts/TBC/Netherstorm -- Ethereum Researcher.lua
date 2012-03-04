--[[ Netherstorm -- Ethereum Researcher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Researcher_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Researcher_Energy",1000,0)
    pUnit:RegisterEvent("Researcher_Surge",1000,0)
    pUnit:RegisterEvent("Researcher_Bolt",3000,0)
end

function Researcher_Energy(pUnit,Event)
    pUnit:CastSpell(16592)
end

function Researcher_Surge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36508,pUnit:GetClosestPlayer())
end

function Researcher_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9532,pUnit:GetClosestPlayer())
end

function Researcher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Researcher_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20456, 1, "Researcher_OnEnterCombat")
RegisterUnitEvent (20456, 2, "Researcher_OnLeaveCombat")
RegisterUnitEvent (20456, 4, "Researcher_OnDied")
