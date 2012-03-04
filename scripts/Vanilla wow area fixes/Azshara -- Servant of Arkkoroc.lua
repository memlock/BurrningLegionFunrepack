--[[ Azshara -- Servant of Arkkoroc.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ServantofArkkoroc_OnCombat(Unit, Event)
Unit:RegisterEvent("ServantofArkkoroc_Trample", 5000, 0)
end

function ServantofArkkoroc_Trample(pUnit, Event) 
pUnit:CastSpell(5568) 
end

function ServantofArkkoroc_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ServantofArkkoroc_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ServantofArkkoroc_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6143, 1, "ServantofArkkoroc_OnCombat")
RegisterUnitEvent(6143, 2, "ServantofArkkoroc_OnLeaveCombat")
RegisterUnitEvent(6143, 3, "ServantofArkkoroc_OnKilledTarget")
RegisterUnitEvent(6143, 4, "ServantofArkkoroc_OnDied")