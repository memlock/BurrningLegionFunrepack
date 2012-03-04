--[[ Shadowmoon Valley -- Ashtongue Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 17th, 2008. ]]

function AshtongueShaman_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("AshtongueShaman_Bloodlust", 60000, 0)
	pUnit:RegisterEvent("AshtongueShaman_LightningShield", 60000, 0)
end

function AshtongueShaman_Bloodlust(pUnit,Event)
	pUnit:CastSpell(37067)
end

function AshtongueShaman_LightningShield(pUnit,Event)
	pUnit:CastSpell(12550)
end

function AshtongueShaman_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function AshtongueShaman_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21453, 1, "AshtongueShaman_OnEnterCombat")
RegisterUnitEvent (21453, 2, "AshtongueShaman_OnLeaveCombat")
RegisterUnitEvent (21453, 4, "AshtongueShaman_OnDied")