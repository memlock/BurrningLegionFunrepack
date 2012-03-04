--[[ Netherstorm -- Porfus the Gem Gorger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Porfus_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Porfus_Hamstring",5000,0)
end

function Porfus_Hamstring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31553,pUnit:GetMainTank())
end   
    
function Porfus_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Porfus_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20783, 1, "Porfus_OnEnterCombat")
RegisterUnitEvent (20783, 2, "Porfus_OnLeaveCombat")
RegisterUnitEvent (20783, 4, "Porfus_OnDied")