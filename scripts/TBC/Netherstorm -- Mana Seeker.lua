--[[ Netherstorm -- Mana Seeker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Seeker_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Seeker_Burn",3000,0)
    pUnit:RegisterEvent("Seeker_Slow",2000,0)
end

function Seeker_Burn(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11981,pUnit:GetClosestPlayer())
end

function Seeker_Slow(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36843,pUnit:GetClosestPlayer())
end

function Seeker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Seeker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18867, 1, "Seeker_OnEnterCombat")
RegisterUnitEvent (18867, 2, "Seeker_OnLeaveCombat")
RegisterUnitEvent (18867, 4, "Seeker_OnDied")