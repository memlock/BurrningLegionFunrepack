--[[ Netherstorm -- Protectorate Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Defender_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Defender_Claive",4000,0)
    pUnit:RegisterEvent("Defender_Hamstring",5000,0)
end

function Defender_Claive(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36500,pUnit:GetMainTank())
end   
    
function Defender_Hamstring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31553,pUnit:GetMainTank())
end 
    
function Defender_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Defender_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20984, 1, "Defender_OnEnterCombat")
RegisterUnitEvent (20984, 2, "Defender_OnLeaveCombat")
RegisterUnitEvent (20984, 4, "Defender_OnDied")