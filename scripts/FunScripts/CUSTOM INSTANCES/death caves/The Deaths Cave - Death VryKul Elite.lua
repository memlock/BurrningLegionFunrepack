
function DeathVryKulElite_OnCombat(Unit, Event)
Unit:RegisterEvent("DeathVryKulElite_ShadowBolt", 6000, 40)
end

function DeathVryKulElite_ShadowBolt(Unit, Event)
local boltcheck = Unit:GetRandomPlayer(7)
if (boltcheck ~= nil) then
Unit:FullCastSpellOnTarget(15232, Unit:GetRandomPlayer(7))
end
end


function DeathVryKulElite_OnLeaveCombat(Unit, Event)
Unit:RemoveEvents()
end


RegisterUnitEvent(515156, 1, "DeathVryKulElite_OnCombat")
RegisterUnitEvent(515156, 2, "DeathVryKulElite_OnLeaveCombat")
