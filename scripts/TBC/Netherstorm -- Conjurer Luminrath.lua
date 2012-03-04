--[[ Netherstorm -- Conjurer Luminrath.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Conjurer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Conjurer_Bolt",3000,0)
    pUnit:RegisterEvent("Conjurer_Sword",30000,0)
end

function Conjurer_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9532,pUnit:GetClosestPlayer())
end

function Conjurer_Sword(pUnit,Event)
    pUnit:CastSpell(36110)
end

function Conjurer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Conjurer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19544, 1, "Conjurer_OnEnterCombat")
RegisterUnitEvent (19544, 2, "Conjurer_OnLeaveCombat")
RegisterUnitEvent (19544, 4, "Conjurer_OnDied")
