--[[ Netherstorm -- Ripfang Lynx.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Lynx_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Lynx_Dash",5000,0)
    pUnit:RegisterEvent("Lynx_Rip",6000,0)
    pUnit:RegisterEvent("Lynx_Swipe",5000,0)
end

function Lynx_Dash(pUnit,Event)
    pUnit:CastSpell(36589)
end   
   
function Lynx_Rip(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36590,pUnit:GetMainTank())
end

function Lynx_Swipe(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31279,pUnit:GetMainTank())
end
    
function Lynx_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Lynx_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20671, 1, "Lynx_OnEnterCombat")
RegisterUnitEvent (20671, 2, "Lynx_OnLeaveCombat")
RegisterUnitEvent (20671, 4, "Lynx_OnDied")