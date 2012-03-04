--[[ Stonetalon Mountains -- Chimaera Matriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function ChimaeraMatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("ChimaeraMatriarch_CorrosivePoison", 10000, 0)
end

function ChimaeraMatriarch_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function ChimaeraMatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChimaeraMatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChimaeraMatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6167, 1, "ChimaeraMatriarch_OnCombat")
RegisterUnitEvent(6167, 2, "ChimaeraMatriarch_OnLeaveCombat")
RegisterUnitEvent(6167, 3, "ChimaeraMatriarch_OnKilledTarget")
RegisterUnitEvent(6167, 4, "ChimaeraMatriarch_OnDied")