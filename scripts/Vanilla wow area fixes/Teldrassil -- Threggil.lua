--[[ Teldrassil -- Threggil.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Threggil_OnCombat(Unit, Event)
Unit:RegisterEvent("Threggil_Strike", 6000, 0)
end

function Threggil_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function Threggil_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Threggil_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Threggil_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14432, 1, "Threggil_OnCombat")
RegisterUnitEvent(14432, 2, "Threggil_OnLeaveCombat")
RegisterUnitEvent(14432, 3, "Threggil_OnKilledTarget")
RegisterUnitEvent(14432, 4, "Threggil_OnDied")