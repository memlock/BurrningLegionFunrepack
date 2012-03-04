--[[ Netherstorm -- Overseer Theredis.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Theredis_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Theredis_Disarm",8000,0)
    pUnit:RegisterEvent("Theredis_Breaker",9000,0)
end

function Theredis_Crystal(pUnit,Event)
    pUnit:FullCastSpellOnTarget(6713,pUnit:GetMainTank())
end   
   
function Theredis_Breaker(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35871,pUnit:GetMainTank())
end
    
function Theredis_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Theredis_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20416, 1, "Theredis_OnEnterCombat")
RegisterUnitEvent (20416, 2, "Theredis_OnLeaveCombat")
RegisterUnitEvent (20416, 4, "Theredis_OnDied")