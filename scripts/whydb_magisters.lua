--[[ Vexallus 
Credits to named ;) ]]--
function Vexallus_Chain(pUnit, Event)
Chaintarget=pUnit:GetMainTank();
pUnit:CastSpellOnTarget(44318, Chaintarget)
pUnit:PlaySoundToSet(12393)
end

function Vexallus_ArcaneShock(pUnit, Event)
stomptarget=pUnit:GetMainTank();
pUnit:FullCastSpellOnTarget(46381, stomptarget)
pUnit:PlaySoundToSet(12392)
end

--wowhead: 85%, 70%, 55%, 40%, and 25% Spawns.
function Vexallus_SpawnPhases(pUnit, Event)
pUnit:RegisterEvent("Vexallus_85", 5000, 1)
pUnit:RegisterEvent("Vexallus_70", 5000, 1)
pUnit:RegisterEvent("Vexallus_55", 5000, 1)
pUnit:RegisterEvent("Vexallus_40", 5000, 1)
pUnit:RegisterEvent("Vexallus_25", 5000, 1)
end

--85
function Vexallus_85(pUnit, Event)
if pUnit:GetHealthPct() <= 85 and Done_85 ~= 1 then
local x = pUnit:GetX()
local y = pUnit:GetY()
local z = pUnit:GetZ()
local o = pUnit:GetO()
pUnit:SpawnCreature(24745, x+2, y, z, o, 14, 0)
pUnit:SpawnCreature(24745, x-2, y, z, o, 14, 0)
Done_85 = 1
else
end
end

--70
function Vexallus_70(pUnit, Event)
if pUnit:GetHealthPct() <= 70 and  Done_70 ~= 1 then
local x = pUnit:GetX()
local y = pUnit:GetY()
local z = pUnit:GetZ()
local o = pUnit:GetO()
pUnit:SpawnCreature(24745, x+2, y, z, o, 14, 0)
pUnit:SpawnCreature(24745, x-2, y, z, o, 14, 0)
Done_70 = 1
end
end

--55
function Vexallus_55(pUnit, Event)
if pUnit:GetHealthPct() <= 55 and Done_55 ~= 1 then
local x = pUnit:GetX()
local y = pUnit:GetY()
local z = pUnit:GetZ()
local o = pUnit:GetO()
pUnit:SpawnCreature(24745, x+2, y, z, o, 14, 0)
pUnit:SpawnCreature(24745, x-2, y, z, o, 14, 0)
Done_55 = 1
end
end

--40
function Vexallus_40(pUnit, Event)
if pUnit:GetHealthPct() <= 40 and Done_40 ~= 1 then
local x = pUnit:GetX()
local y = pUnit:GetY()
local z = pUnit:GetZ()
local o = pUnit:GetO()
pUnit:SpawnCreature(24745, x+2, y, z, o, 14, 0)
pUnit:SpawnCreature(24745, x-2, y, z, o, 14, 0)
Done_40 = 1
end
end

--25
function Vexallus_25(pUnit, Event)
if pUnit:GetHealthPct() <= 25 and Done_25 ~= 1 then
local x = pUnit:GetX()
local y = pUnit:GetY()
local z = pUnit:GetZ()
local o = pUnit:GetO()
pUnit:SpawnCreature(24745, x+2, y, z, o, 14, 0)
pUnit:SpawnCreature(24745, x-2, y, z, o, 14, 0)
Done_25 = 1
end
end

function Vexallus_Overload(pUnit, Event)
if pUnit:GetHealthPct() <= 10 then
pUnit:RemoveEvents()
pUnit:CastSpellOnTarget(44353,pUnit:GetRandomPlayer(3))
pUnit:PlaySoundToSet(12390)
end
end

function Vexallus_Combat(pUnit, Event)
pUnit:RegisterEvent("Vexallus_Chain", 7400, 0)
pUnit:RegisterEvent("Vexallus_SpawnPhases", 1000, 0)
pUnit:RegisterEvent("Vexallus_ArcaneShock", 24000, 0)
pUnit:RegisterEvent("Vexallus_Overload", 7000, 0)
pUnit:PlaySoundToSet(12389)
end

function Vexallus_LeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Vexallus_Died(pUnit, Event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(24744, 1, "Vexallus_Combat")
RegisterUnitEvent(24744, 2, "Vexallus_LeaveCombat")
RegisterUnitEvent(24744, 4, "Vexallus_Died")

function Vexallussummons_PureEnergyPassive(Unit, Event)
if Unit:GetHealthPct() <= 100 then
Unit:CastSpell(44326)
end
end

function Vexallussummons_Chain(Unit, Event)
Unit:CastSpellOnTarget(44342, Unit:GetMainTank())
end

function Vexallussummons_OnCombat(Unit, Event)
Unit:RegisterEvent("Vexallussummons_PureEnergyPassive", 1000, 1)
Unit:RegisterEvent("Vexallussummons_Chain", 5400, 0)
end

function Vexallussummons_LeaveCombat(Unit, Event)
    Unit:RemoveEvents()
end

function Vexallussummons_Died(Unit, Event)
    pUnit:FULLCastSpellontarget(44335, pUnit:GetMainTank())
--Unit:CastSpell(44335)
Unit:RemoveEvents()
end

RegisterUnitEvent(24745, 1, "Vexallussummons_OnCombat")
RegisterUnitEvent(24745, 2, "Vexallussummons_LeaveCombat")
RegisterUnitEvent(24745, 4, "Vexallussummons_Died")

--[[ LadySacrolash
Credits to named ;) ]]--
function LadySacrolash_OnCombat(pUnit, Event)
   pUnit:RegisterEvent("Confounding_Blow",20000,0)
   pUnit:RegisterEvent("ShadowNova",30000,0)
   pUnit:RegisterEvent("ShadowBlades",10000,0)
   pUnit:RegisterEvent("summonShadowImage",40000,0)
   pUnit:RegisterEvent("LadySacrolash_Enrage", 360000, 0)
end

function summonShadowImage(pUnit, Event)
local x = pUnit:GetX()
local y = pUnit:GetY()
local z = pUnit:GetZ()
local o = pUnit:GetO()
pUnit:SpawnCreature(25214, x+5, y, z, o, 16, 0)
pUnit:SpawnCreature(25214, x-5, y, z, o, 16, 0)
end

--??? ??
function ConfoundingBlow(pUnit, Event)
   pUnit:FullCastSpellOnTarget(45256, pUnit:GetMainTank())
end

function ShadowNova(pUnit, Event)
   pUnit:FullCastSpellOnTarget(45329, pUnit:GetMainTank())
end

--??? ??
function ShadowBlades(pUnit, Event)
   pUnit:CastSpell(45248)
end

--??
function LadySacrolash_Enrage(pUnit, event)
   pUnit:CastSpell(26662)
end      

function LadySacrolash_OnLeaveCombat(pUnit, Event)
   pUnit:RemoveEvents()   
end

function LadySacrolash_OnKilledTarget(pUnit, Event)
   pUnit:SendChatMessage(14, 0, "??? ? ???!")
   pUnit:PlaySoundToSet(12486)
end

function LadySacrolash_OnDied(pUnit, Event)
   pUnit:RemoveEvents()
   end
RegisterUnitEvent(25165, 1, "LadySacrolash_OnCombat")
RegisterUnitEvent(25165, 2, "LadySacrolash_OnLeaveCombat")
RegisterUnitEvent(25165, 3, "LadySacrolash_OnKilledTarget")
RegisterUnitEvent(25165, 4, "LadySacrolash_OnDied")

--??? ?? ??
function ShadowImage_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadowFury",4000,0)
Unit:RegisterEvent("DarkStrike",2000,0)
Unit:SetCombatCapable(0)
Unit:Despawn(10000, 0)
end

--???? ??? ??? ??
function ShadowFury(Unit, Event)
   Unit:FullCastSpellOnTarget(45270, Unit:GetMainTank())   
end

--??? ??
function DarkStrike(Unit, Event)
   Unit:FullCastSpellOnTarget(45271, Unit:GetMainTank())      
end

function ShadowImage_LeaveCombat(Unit, Event)
    Unit:RemoveEvents()
end

function ShadowImage_Died(Unit, Event)
    Unit:RemoveEvents()
end

RegisterUnitEvent(25214, 1, "ShadowImage_OnCombat")
RegisterUnitEvent(25214, 2, "ShadowImage_LeaveCombat")
RegisterUnitEvent(25214, 4, "ShadowImage_Died")

--????? ????

function WarlockAlythess_OnCombat(pUnit, Event)
   pUnit:RegisterEvent("Pyrogenics", 25000,0)
   pUnit:RegisterEvent("FlameSear", 20000,0)
   pUnit:RegisterEvent("Conflagration", 30000,0)
   pUnit:RegisterEvent("AlyEnrage", 360000, 0)
        pUnit:StopMovement(360000)
end

--??
function Pyrogenics(pUnit, Event)
   pUnit:CastSpell(45230)   
end

--??? ??
function FlameSear(pUnit, Event)
   pUnit:CastSpell(46771)
end

--??? ??
function Conflagration(pUnit, Event)
   pUnit:PlaySoundToSet(12489)
   pUnit:SendChatMessage(14, 0, "??? ??? ????!")
   pUnit:FullCastSpellOnTarget(45342, pUnit:GetMainTank())   
end

--function AlyShadowNova(pUnit, Event)
--   pUnit:FullCastSpellOnTarget(45329, pUnit:GetMainTank())   
--end

function AlyEnrage(pUnit, event)
   pUnit:CastSpell(26662) -- Same as Brutallus for now
end

function WarlockAlythess_OnKilledTarget(pUnit, Event)
   pUnit:SendChatMessage(14, 0, "??? ? ???!")   
end

function WarlockAlythess_OnLeaveCombat(pUnit, Event)
   pUnit:RemoveEvents()   
end

function WarlockAlythess_OnDied(pUnit, Event)
   pUnit:RemoveEvents()
   pUnit:PlaySoundToSet(12494)
end

RegisterUnitEvent(25166, 1, "WarlockAlythess_OnCombat")
RegisterUnitEvent(25166, 2, "WarlockAlythess_OnLeaveCombat")
RegisterUnitEvent(25166, 3, "WarlockAlythess_OnKilledTarget")
RegisterUnitEvent(25166, 4, "WarlockAlythess_OnDied")