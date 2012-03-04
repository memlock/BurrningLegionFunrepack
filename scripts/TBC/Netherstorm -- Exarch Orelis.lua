--[[ Netherstorm -- Exarch Orelis.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Orelis_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Orelis_Shout",1000,0)
    pUnit:RegisterEvent("Orelis_Strike",1000,0)
    pUnit:RegisterEvent("Orelis_Rend",1000,0)
end

function Orelis_Shout(pUnit,Event)
    pUnit:FullCastSpellOnTarget(13730,pUnit:GetClosestPlayer())
end

function Orelis_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(29426,pUnit:GetClosestPlayer())
end

function Orelis_Rend(pUnit,Event)
    pUnit:FullCastSpellOnTarget(16509,pUnit:GetClosestPlayer())
end

function Orelis_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Orelis_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19466, 1, "Orelis_OnEnterCombat")
RegisterUnitEvent (19466, 2, "Orelis_OnLeaveCombat")
RegisterUnitEvent (19466, 4, "Orelis_OnDied")
