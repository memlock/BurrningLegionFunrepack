--[[ Shadowmoon Valley -- Dragonmaw Transporter.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function DTransporter_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38858,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("DTransporter_Spell1Shoot", 33000, 0)
	pUnit:RegisterEvent("DTransporter_Spell2Shoot", 20000, 0)
end

function DTransporter_Spell1Shoot(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38861,pUnit:GetClosestPlayer())
end

function DTransporter_Spell2Shoot(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38859,pUnit:GetClosestPlayer())
end

function DTransporter_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

function DTransporter_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23188, 1, "DTransporter_OnEnterCombat")
RegisterUnitEvent(23188, 2, "DTransporter_OnLeaveCombat")
RegisterUnitEvent(23188, 4, "DTransporter_OnDeath")