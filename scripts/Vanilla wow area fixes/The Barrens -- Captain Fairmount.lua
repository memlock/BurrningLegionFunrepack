--[[ The Barrens -- Captain Fairmount.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function CaptainFairmount_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainFairmount_BattleShout", 1000, 1)
Unit:RegisterEvent("CaptainFairmount_FrighteningShout", 12000, 0)
Unit:RegisterEvent("CaptainFairmount_Pummel", 8000, 0)
end

function CaptainFairmount_BattleShout(pUnit, Event) 
pUnit:CastSpell(9128) 
end

function CaptainFairmount_FrighteningShout(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19134, pUnit:GetMainTank()) 
end

function CaptainFairmount_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function CaptainFairmount_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainFairmount_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainFairmount_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3393, 1, "CaptainFairmount_OnCombat")
RegisterUnitEvent(3393, 2, "CaptainFairmount_OnLeaveCombat")
RegisterUnitEvent(3393, 3, "CaptainFairmount_OnKilledTarget")
RegisterUnitEvent(3393, 4, "CaptainFairmount_OnDied")