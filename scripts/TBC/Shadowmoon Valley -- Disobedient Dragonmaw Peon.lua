--[[ Shadowmoon Valley -- Disobedient Dragonmaw Peon.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 28th, 2008. ]]

function DDPeon_Spell(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(40732)
	pUnit:RegisterEvent("DDPeon_Spell2", 10000, 0)
end

function DDPeon_Spell2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(40735)
	pUnit:RegisterEvent("DDPeon_Spell3", 20000, 0)
end

function DDPeon_Spell3(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(40714)
	pUnit:RegisterEvent("DDPeon_Spell1", 30000, 0)
end

function DDPeon_Start(pUnit, Event)
	pUnit:RegisterEvent("DDPeon_Spell", 1000, 0)
end

RegisterUnitEvent(21316, 6, "DDPeon_Start")