--[[ Netherstorm -- Battle-Mage Dathric.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Mage_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Mage_Blast", 6000,0)
    pUnit:RegisterEvent("Mage_Flames",2500,0)
end

function Mage_Rip(pUnit,Event)
    pUnit:FullCastSpellOnTarget(17273, pUnit:GetClosestPlayer())
end

function Mage_Flames(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36104, pUnit:GetClosestPlayer())
end
    
function Mage_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Mage_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19543, 1, "Mage_OnEnterCombat")
RegisterUnitEvent (19543, 2, "Mage_OnLeaveCombat")
RegisterUnitEvent (19543, 4, "Mage_OnDied")