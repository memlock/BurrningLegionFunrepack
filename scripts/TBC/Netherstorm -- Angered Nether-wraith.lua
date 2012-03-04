--[[ Netherstorm -- Angered Nether-wraith.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Angered_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Angered_Bolt", 1000, 0)
    pUnit:RegisterEvent("Angered_Blast", 6000, 0)
end

function Angered_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(39337, pUnit:GetClosestPlayer())
end

function Angered_Blast(pUnit,Event)
    pUnit:FullCastSpellOnTarget(38205, pUnit:GetClosestPlayer())
end

function Angered_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Angered_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (17870, 1, "Angered_OnEnterCombat")
RegisterUnitEvent (17870, 2, "Angered_OnLeaveCombat")
RegisterUnitEvent (17870, 4, "Angered_OnDied")


