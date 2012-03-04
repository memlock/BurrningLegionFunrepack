--[[ Thousand Needles -- Silithid Invader.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SilithidInvader_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidInvader_PierceArmor", 10000, 0)
end

function SilithidInvader_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function SilithidInvader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidInvader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidInvader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4131, 1, "SilithidInvader_OnCombat")
RegisterUnitEvent(4131, 2, "SilithidInvader_OnLeaveCombat")
RegisterUnitEvent(4131, 3, "SilithidInvader_OnKilledTarget")
RegisterUnitEvent(4131, 4, "SilithidInvader_OnDied")