
function Alliance_Ghost_EnterCombat(pUnit, event)
local timer1=math.random(1200, 4500)
pUnit:RegisterEvent("Rune_of_Retribution", timer1, 1)
end

function Rune_Weaving(pUnit, event)
local timer2=math.random(3500, 12500)
if (pUnit:GetMainTank() ~= nil) then
pUnit:FullCastSpellOnTarget(52713, pUnit:GetMainTank())
pUnit:RegisterEvent("Rune_Weaving", timer2, 0)
end
end

RegisterUnitEvent (515152, 1, "Alliance_Ghost_EnterCombat")
