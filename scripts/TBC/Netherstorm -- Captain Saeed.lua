--[[ Netherstorm -- Captain Saeed.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Captain_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Captain_Cleave",1000,0)
end

function Captain_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15576,pUnit:GetClosestPlayer())
end

function Capatain_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Capatain_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20985, 1, "Capatain_OnEnterCombat")
RegisterUnitEvent (20985, 2, "Capatain_OnLeaveCombat")
RegisterUnitEvent (20985, 4, "Capatain_OnDied")
