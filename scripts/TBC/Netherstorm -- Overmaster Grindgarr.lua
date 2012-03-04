--[[ Netherstorm -- Overmaster Grindgarr.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Grindgarr_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Grindgarr_Flames",5000,0)
    pUnit:RegisterEvent("Grindgarr_Stomp",4000,0)
end

function Grindgarr_Flames(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36487,pUnit:GetClosestPlayer())
end   
   
function Grindgarr_Stomp(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35238,pUnit:GetClosestPlayer())
end
    
function Grindgarr_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Grindgarr_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20803, 1, "Grindgarr_OnEnterCombat")
RegisterUnitEvent (20803, 2, "Grindgarr_OnLeaveCombat")
RegisterUnitEvent (20803, 4, "Grindgarr_OnDied")