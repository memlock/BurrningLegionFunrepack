--[[ Netherstorm -- Shaleskin Flayer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Flayer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Flayer_Skin",5000,0)
end

function Flayer_Skin(pUnit,Event)
    pUnit:CastSpell(36576)
end   

function Flayer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Flayer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20210, 1, "Flayer_OnEnterCombat")
RegisterUnitEvent (20210, 2, "Flayer_OnLeaveCombat")
RegisterUnitEvent (20210, 4, "Flayer_OnDied")