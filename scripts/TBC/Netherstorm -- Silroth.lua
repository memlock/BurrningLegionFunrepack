--[[ Netherstorm -- Silroth.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Silroth_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Silroth_Flames1",10000,0)
    pUnit:RegisterEvent("Silroth_Flames2",2000,0)
end

function Silroth_Flames1(pUnit,Event)
    pUnit:CastSpell(36253)
end   

function Silroth_Flames2(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36252,pUnit:GetMainTank())
end

function Silroth_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Silroth_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20801, 1, "Silroth_OnEnterCombat")
RegisterUnitEvent (20801, 2, "Silroth_OnLeaveCombat")
RegisterUnitEvent (20801, 4, "Silroth_OnDied")