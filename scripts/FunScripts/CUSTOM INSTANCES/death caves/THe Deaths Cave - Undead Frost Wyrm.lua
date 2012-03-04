
function Undead_Frost_Wyrm_EnterCombat(pUnit, event)
local timer1=math.random(5200, 13500)
local timer3=math.random(5200, 13500)
pUnit:RegisterEvent("Frostpaw_Rend", timer1, 1)
pUnit:RegisterEvent("Demoralizing_Shout", timer3, 1)
end

function Frostpaw_Rend(pUnit, event)
local timer2=math.random(10000, 22500)
if (pUnit:GetMainTank() ~= nil) then
pUnit:FullCastSpellOnTarget(12054, pUnit:GetMainTank())
pUnit:RegisterEvent("Frostpaw_Rend", timer2, 0)
end
end

function Demoralizing_Shout(pUnit, event)
local timer4=math.random(30000, 45000)
pUnit:CastSpell(13730)
pUnit:RegisterEvent("Demoralizing_Shout", timer4, 0)
end

RegisterUnitEvent (515155, 1, "Undead_Frost_Wyrm_EnterCombat")
