--[[ Netherstorm -- Phase Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Hunter_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Hunter_DeMaterialize",8000,0)
    pUnit:RegisterEvent("Hunter_ManaBurn",3000,0)
end

function Hunter_DeMaterialize(pUnit,Event)
    pUnit:CastSpell(34814)
    pUnit:RegisterEvent("Hunter_Materialize",3000,0)
end   
   
function Hunter_ManaBurn(pUnit,Event)
    pUnit:FullCastSpellOnTarget(13321,pUnit:GetClosestPlayer())
end

function Hunter_Materialize(pUnit,Event)
    pUnit:CastSpell(34804)
end
    
function Hunter_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Hunter_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18879, 1, "Hunter_OnEnterCombat")
RegisterUnitEvent (18879, 2, "Hunter_OnLeaveCombat")
RegisterUnitEvent (18879, 4, "Hunter_OnDied")