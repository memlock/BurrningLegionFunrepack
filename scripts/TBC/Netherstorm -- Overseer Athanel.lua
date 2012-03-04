--[[ Netherstorm -- Overseer Athanel.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Athanel_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Athanel_Cleave",4000,0)
end

function Athanel_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15496,pUnit:GetMainTank())
end   
    
function Athanel_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Athanel_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20435, 1, "Athanel_OnEnterCombat")
RegisterUnitEvent (20435, 2, "Athanel_OnLeaveCombat")
RegisterUnitEvent (20435, 4, "Athanel_OnDied")