--[[ Netherstorm -- Severed Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Defender_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Defender_Block",1000,(1))
    pUnit:RegisterEvent("Defender_Strike",5000,0)
end

function Defender_Block(pUnit,Event)
    pUnit:CastSpell(12169)
end   

function Defender_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36093,pUnit:GetMainTank())
end

function Defender_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Defender_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20934, 1, "Defender_OnEnterCombat")
RegisterUnitEvent (20934, 2, "Defender_OnLeaveCombat")
RegisterUnitEvent (20934, 4, "Defender_OnDied")