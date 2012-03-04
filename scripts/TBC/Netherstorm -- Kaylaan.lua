--[[ Netherstorm -- Kaylaan.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Kaylaan_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Kaylaan_Ressurection",4000,0)
end

function Kaylaan_Ressurection(pUnit,Event)
    pUnit:CastSpell(35746)
end

function Kaylaan_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Kaylaan_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20780, 1, "Kaylaan_OnEnterCombat")
RegisterUnitEvent (20780, 2, "Kaylaan_OnLeaveCombat")
RegisterUnitEvent (20780, 4, "Kaylaan_OnDied")