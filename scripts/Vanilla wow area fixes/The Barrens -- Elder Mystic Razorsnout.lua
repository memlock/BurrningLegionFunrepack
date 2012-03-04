--[[ The Barrens -- Elder Mystic Razorsnout.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function ElderMysticRazorsnout_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderMysticRazorsnout_EarthbindTotem", 4000, 1)
Unit:RegisterEvent("ElderMysticRazorsnout_HealingWave", 12000, 0)
end

function ElderMysticRazorsnout_EarthbindTotem(pUnit, Event) 
pUnit:CastSpell(2484) 
end

function ElderMysticRazorsnout_HealingWave(pUnit, Event) 
pUnit:CastSpell(547) 
end

function ElderMysticRazorsnout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderMysticRazorsnout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderMysticRazorsnout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3270, 1, "ElderMysticRazorsnout_OnCombat")
RegisterUnitEvent(3270, 2, "ElderMysticRazorsnout_OnLeaveCombat")
RegisterUnitEvent(3270, 3, "ElderMysticRazorsnout_OnKilledTarget")
RegisterUnitEvent(3270, 4, "ElderMysticRazorsnout_OnDied")