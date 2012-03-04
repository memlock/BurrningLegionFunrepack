--[[ Stonetalon Mountains -- Cenarion Caretaker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function CenarionCaretaker_OnCombat(Unit, Event)
Unit:RegisterEvent("CenarionCaretaker_Maul", 5000, 0)
Unit:RegisterEvent("CenarionCaretaker_BearForm", 2000, 1)
Unit:RegisterEvent("CenarionCaretaker_Thorns", 1000, 1)
end

function CenarionCaretaker_BearForm(pUnit, Event) 
pUnit:CastSpell(7090) 
end

function CenarionCaretaker_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12616, pUnit:GetMainTank()) 
end

function CenarionCaretaker_Thorns(pUnit, Event) 
pUnit:CastSpell(782) 
end

function CenarionCaretaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CenarionCaretaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CenarionCaretaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4050, 1, "CenarionCaretaker_OnCombat")
RegisterUnitEvent(4050, 2, "CenarionCaretaker_OnLeaveCombat")
RegisterUnitEvent(4050, 3, "CenarionCaretaker_OnKilledTarget")
RegisterUnitEvent(4050, 4, "CenarionCaretaker_OnDied")