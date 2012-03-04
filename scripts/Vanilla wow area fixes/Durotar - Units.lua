--[[ Durotar - Creatures.lua

This script was written and is protected
by the GPL v2. This script was released
by Bapes of the Blua Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- Bapes, June 23, 2008. ]]



		--   Razormane Battleguard

function RazormaneBattleguard_EnterCombat(pUnit, Event)
			pUnit:RegisterEvent("RazormaneBattleguard_ImprovedBlocking", 24000, 0)
end


function RazormaneBattleguard_ImprovedBlocking(pUnit, Event)
	pUnit:CastSpell(3248)
end



		--  Razormane Dustrunner


function RazormaneDustrunner_EnterCombat(pUnit, Event)
			pUnit:RegisterEvent("RazormaneDustrunner_FaerieFire", 60000, 0)
			pUnit:RegisterEvent("RazormaneDustrunner_Rejuvenation1", 1000, 0)
			pUnit:RegisterEvent("RazormaneDustrunner_Rejuvenation2", 1000, 0)
end


function RazormaneDustrunner_FaerieFire(pUnit, Event)
	pUnit:FullCastSpellOnTarget(6950, pUnit:GetMainTank())
end

function RazormaneDustrunner_Rejuvenation1(pUnit,Event)
 if RandomFriend (pUnit:GetHealthPct()) < 81 then
	pUnit:FullCastSpellOnTarget(774, pUnit:GetRandomFriend())
 if RandomFriend (pUnit:GetHealthPct()) < 51 then
	pUnit:FullCastSpellOnTarget(774, pUnit:GetRandomFriend())
 if RandomFriend (pUnit:GetHealthPct()) < 11 then
	pUnit:FullCastSpellOnTarget(774, pUnit:GetRandomFriend())

   end
  end
 end
end

function RazormaneDustrunner_Rejuvenation2(pUnit, Event)
 if pUnit:GetHealthPct() < 81 then
	pUnit:CastSpell(774)
 if pUnit:GetHealthPct() < 51 then
	pUnit:CastSpell(774)
 if pUnit:GetHealthPct() < 11 then
	pUnit:CastSpell(774)
        end
       end
      end
     end



		--  Captain Flat Tusk


function CaptainFlatTusk_EnterCombat(pUnit, Event)
			pUnit:RegisterEvent("CaptainFlatTusk_HeroicStrike", 24000, 0)
end


function CaptainFlatTusk_HeroicStrike(pUnit, Event)
	pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank())
end



		--  Razormane Quilboar

function RazormaneQuilboar_EnterCombat(pUnit, Event)
			pUnit:RegisterEvent("RazormaneQuilboar_RazorMane1", 7000, 1)
			pUnit:RegisterEvent("RazormaneQuilboar_RazorMane2", 54000, 0)
end

function RazormaneQuilboar_RazorMane1(pUnit, Event)
	pUnit:CastSpell(5280)
end

function RazormaneQuilboar_RazorMane2(pUnit, Event)
	pUnit:CastSpell(5280)
end



		--  Voodoo Troll

function VoodooTroll_EnterCombat(pUnit, Event)
			pUnit:RegisterEvent("VoodooTroll_HealingWave1", 1000, 0)
			pUnit:RegisterEvent("VoodooTroll_HealingWave2", 1000, 0)
end

function VoodooTroll_HealingWave1(pUnit, Event)
 if pUnit:GetHealthPct() < 81 then
	pUnit:CastSpell(332)
 if pUnit:GetHealthPct() < 51 then
	pUnit:CastSpell(332)
 if pUnit:GetHealthPct() < 11 then
	pUnit:CastSpell(332)
     end
    end
   end
  end

function VoodooTroll_HealingWave2(pUnit, Event)
 if RandomFriend (pUnit:GetHealthPct()) < 81 then
	pUnit:FullCastSpellOnTarget(332, pUnit:GetRandomFriend())
 if RandomFriend (pUnit:GetHealthPct()) < 51 then
	pUnit:FullCastSpellOnTarget(332, pUnit:GetRandomFriend())
 if RandomFriend (pUnit:GetHealthPct()) < 11 then
	pUnit:FullCastSpellOnTarget(332, pUnit:GetRandomFriend())

   end
  end
 end
end



		--  Hexed Troll

function HexedTroll_EnterCombat(pUnit, Event)
			pUnit:RegisterEvent("HexedTroll_Immolate", 20000, 0)
end


function HexedTroll_Immolate(pUnit, Event)
	pUnit:FullCastSpellOnTarget(348, pUnit:GetMainTank())
end



		--  Zalazane

function Zalazane_EnterCombat(pUnit, Event)
			pUnit:RegisterEvent("Zalazane_HealingWave1", 1000, 0)
			pUnit:RegisterEvent("Zalazane_HealingWave2", 1000, 0)
			pUnit:RegisterEvent("Zalazane_Shrink", 120000, 0)
end	

function Zalazane_HealingWave1(pUnit, Event)
 if pUnit:GetHealthPct() < 81 then
	pUnit:CastSpell(332)
 if pUnit:GetHealthPct() < 51 then
	pUnit:CastSpell(332)
 if pUnit:GetHealthPct() < 11 then
	pUnit:CastSpell(332)
     end
    end
   end
  end

function Zalazane_HealingWave2(pUnit, Event)
 if RandomFriend (pUnit:GetHealthPct()) < 81 then
	pUnit:FullCastSpellOnTarget(332, pUnit:GetRandomFriend())
 if RandomFriend (pUnit:GetHealthPct()) < 51 then
	pUnit:FullCastSpellOnTarget(332, pUnit:GetRandomFriend())
 if RandomFriend (pUnit:GetHealthPct()) < 11 then
	pUnit:FullCastSpellOnTarget(332, pUnit:GetRandomFriend())

   end
  end
 end
end

function Zalazane_Shrink(pUnit, Event)
	pUnit:FullCastSpellOnTarget(7289, pUnit:GetClosestPlayer())
end



		--  Bloodtalon Taillasher


function BloodtalonTaillasher_EnterCombat(pUnit, Event)
	pUnit:FullCastSpellOnTarget(6268, pUnit:GetMainTank()) --  Rushing Charge
end



		--  Burning Blade Apprentice


function BurningBladeApprentice_EnterCombat(pUnit, Event)
			pUnit:RegisterEvent("BurningBladeApprentice_ShadowBolt", 4000, 0)
end

function BurningBladeApprentice_ShadowBolt(pUnit, Event)
	pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank())
end



		--  Burning Blade Cultist


function BurningBladeCultist_EnterCombat(pUnit, Event)
			pUnit:RegisterEvent("BurningBladeCultist_Immolate", 17000, 0)
end

function BurningBladeCultist_Immolate(pUnit, Event)
	pUnit:FullCastSpellOnTarget(11962, pUnit:GetClosestPlayer())
end



		--  Burning Blade Fanatic


function BurningBladeFanatic_EnterCombat(pUnit, Event)
			pUnit:RegisterEvent("BurningBladeFanatic_FanaticBlade", 12000, 0)
end

function BurningBladeFanatic_FanaticBlade(pUnit, Event)
	pUnit:FullCastSpellOnTarget(5262, pUnit:GetMainTank())
end



		--  Burning Blade Neophyte


function BurningBladeNeophyte_EnterCombat(pUnit, Event)
			pUnit:RegisterEvent("BurningBladeNeophyte_Immolate", 17000, 0)
end

function BurningBladeNeophyte_Immolate(pUnit, Event)
	pUnit:FullCastSpellOnTarget(348, pUnit:GetMainTank())
end



		--  Corrupted Mottled Boar


function CorruptedMottledBoar_EnterCombat(pUnit, Event)
	pUnit:FullCastSpellOnTarget(3385, pUnit:GetMainTank()) --  Boar Charge
				pUnit:RegisterEvent("CorruptedMottledBoar_CorruptedIntellect", 10000, 0)
end

function CorruptedMottledBoar_CorruptedIntellect(pUnit, Event)
	pUnit:FullCastSpellOnTarget(6818, pUnit:GetClosestPlayer())
end

function Lazypeon_sleep (unit, event)
	unit:CastSpell(18975)
	unit:RegisterEvent("Lazypeon_sleep", math.random(180000,185000), 1)
end
RegisterUnitEvent (10556, 1, "Lazypeon_sleep")
RegisterUnitEvent(3114, 1, "RazormaneBattleguard_EnterCombat")
RegisterUnitEvent(3113, 1, "RazormaneDustrunner_EnterCombat")
RegisterUnitEvent(5824, 1, "CaptainFlatTusk_EnterCombat")
RegisterUnitEvent(3111, 1, "RazormaneQuilboar_EnterCombat")
RegisterUnitEvent(3206, 1, "VoodooTroll_EnterCombat")
RegisterUnitEvent(3207, 1, "HexedTroll_EnterCombat")
RegisterUnitEvent(3205, 1, "Zalazane_EnterCombat")
RegisterUnitEvent(3122, 1, "BloodtalonTaillasher_EnterCombat")
RegisterUnitEvent(3123, 1, "BloodtalonTaillasher_EnterCombat")
RegisterUnitEvent(3198, 1, "BurningBladeApprentice_EnterCombat")
RegisterUnitEvent(3199, 1, "BurningBladeCultist_EnterCombat")
RegisterUnitEvent(3197, 1, "BurningBladeFanatic_EnterCombat")
RegisterUnitEvent(3196, 1, "BurningBladeFanatic_EnterCombat")
RegisterUnitEvent(3225, 1, "CorruptedMottledBoar_EnterCombat")