--[[ Grizzly Hills -- Amberpine Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function AmberpineScout_OnCombat(Unit, Event)
Unit:RegisterEvent("AmberpineScout_Deterrence", 10000, 0)
Unit:RegisterEvent("AmberpineScout_PunctureArmor", 2000, 1)
Unit:RegisterEvent("AmberpineScout_Shoot", 6000, 0)
end

function AmberpineScout_Deterrence(pUnit, Event) 
pUnit:CastSpell(31567) 
end

function AmberpineScout_PunctureArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35918, pUnit:GetMainTank()) 
end

function AmberpineScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15547, pUnit:GetMainTank()) 
end

function AmberpineScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmberpineScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmberpineScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27117, 1, "AmberpineScout_OnCombat")
RegisterUnitEvent(27117, 2, "AmberpineScout_OnLeaveCombat")
RegisterUnitEvent(27117, 3, "AmberpineScout_OnKilledTarget")
RegisterUnitEvent(27117, 4, "AmberpineScout_OnDied")


--[[ Grizzly Hills -- Ancient Drakkari King.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function AncientDrakkariKing_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientDrakkariKing_DrakkariCurse", 8000, 0)
end

function AncientDrakkariKing_DrakkariCurse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52466, pUnit:GetMainTank()) 
end

function AncientDrakkariKing_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientDrakkariKing_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientDrakkariKing_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26871, 1, "AncientDrakkariKing_OnCombat")
RegisterUnitEvent(26871, 2, "AncientDrakkariKing_OnLeaveCombat")
RegisterUnitEvent(26871, 3, "AncientDrakkariKing_OnKilledTarget")
RegisterUnitEvent(26871, 4, "AncientDrakkariKing_OnDied")


--[[ Grizzly Hills -- Ancient Drakkari Soothsayer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function AncientDrakkariSoothsayer_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientDrakkariSoothsayer_HolySmite", 5000, 0)
Unit:RegisterEvent("AncientDrakkariSoothsayer_ProphecyofBlood", 9000, 0)
end

function AncientDrakkariSoothsayer_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9734, pUnit:GetMainTank()) 
end

function AncientDrakkariSoothsayer_ProphecyofBlood(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52468, pUnit:GetMainTank()) 
end

function AncientDrakkariSoothsayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientDrakkariSoothsayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientDrakkariSoothsayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26812, 1, "AncientDrakkariSoothsayer_OnCombat")
RegisterUnitEvent(26812, 2, "AncientDrakkariSoothsayer_OnLeaveCombat")
RegisterUnitEvent(26812, 3, "AncientDrakkariSoothsayer_OnKilledTarget")
RegisterUnitEvent(26812, 4, "AncientDrakkariSoothsayer_OnDied")


--[[ Grizzly Hills -- Ancient Drakkari Warmonger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function AncientDrakkariWarmonger_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientDrakkariWarmonger_SunderArmor", 6000, 0)
end

function AncientDrakkariWarmonger_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50370, pUnit:GetMainTank()) 
end

function AncientDrakkariWarmonger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientDrakkariWarmonger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientDrakkariWarmonger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26811, 1, "AncientDrakkariWarmonger_OnCombat")
RegisterUnitEvent(26811, 2, "AncientDrakkariWarmonger_OnLeaveCombat")
RegisterUnitEvent(26811, 3, "AncientDrakkariWarmonger_OnKilledTarget")
RegisterUnitEvent(26811, 4, "AncientDrakkariWarmonger_OnDied")


--[[ Grizzly Hills -- Bambina.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Bambina_OnCombat(Unit, Event)
Unit:RegisterEvent("Bambina_BambinasVengeance", 4000, 1)
end

function Bambina_BambinasVengeance(pUnit, Event) 
pUnit:CastSpell(48869) 
end

function Bambina_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bambina_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bambina_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27461, 1, "Bambina_OnCombat")
RegisterUnitEvent(27461, 2, "Bambina_OnLeaveCombat")
RegisterUnitEvent(27461, 3, "Bambina_OnKilledTarget")
RegisterUnitEvent(27461, 4, "Bambina_OnDied")


--[[ Grizzly Hills -- Blood of the Old God.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function BloodoftheOldGod_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodoftheOldGod_CorruptionoftheOldGod", 7000, 0)
end

function BloodoftheOldGod_CorruptionoftheOldGod(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52564, pUnit:GetMainTank()) 
end

function BloodoftheOldGod_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodoftheOldGod_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodoftheOldGod_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(28854, 1, "BloodoftheOldGod_OnCombat")
RegisterUnitEvent(28854, 2, "BloodoftheOldGod_OnLeaveCombat")
RegisterUnitEvent(28854, 3, "BloodoftheOldGod_OnKilledTarget")
RegisterUnitEvent(28854, 4, "BloodoftheOldGod_OnDied")


--[[ Grizzly Hills -- Bloodmoon Cultist.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function BloodmoonCultist_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodmoonCultist_Enrage", 10000, 0)
Unit:RegisterEvent("BloodmoonCultist_InfectedWorgenBite", 4000, 3)
Unit:RegisterEvent("BloodmoonCultist_SinisterStrike", 6000, 0)
end

function BloodmoonCultist_Enrage(pUnit, Event) 
pUnit:CastSpell(32714) 
end

function BloodmoonCultist_InfectedWorgenBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53094, pUnit:GetMainTank()) 
end

function BloodmoonCultist_SinisterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14873, pUnit:GetMainTank()) 
end

function BloodmoonCultist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodmoonCultist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodmoonCultist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27024, 1, "BloodmoonCultist_OnCombat")
RegisterUnitEvent(27024, 2, "BloodmoonCultist_OnLeaveCombat")
RegisterUnitEvent(27024, 3, "BloodmoonCultist_OnKilledTarget")
RegisterUnitEvent(27024, 4, "BloodmoonCultist_OnDied")


--[[ Grizzly Hills -- Bloodmoon Servant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function BloodmoonServant_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodmoonServant_Enrage", 10000, 0)
end

function BloodmoonServant_Enrage(pUnit, Event) 
pUnit:CastSpell(32714) 
end

function BloodmoonServant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodmoonServant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodmoonServant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(29082, 1, "BloodmoonServant_OnCombat")
RegisterUnitEvent(29082, 2, "BloodmoonServant_OnLeaveCombat")
RegisterUnitEvent(29082, 3, "BloodmoonServant_OnKilledTarget")
RegisterUnitEvent(29082, 4, "BloodmoonServant_OnDied")


--[[ Grizzly Hills -- Bloodmoon Worgen.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function BloodmoonWorgen_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodmoonWorgen_Enrage", 10000, 0)
Unit:RegisterEvent("BloodmoonWorgen_InfectedWorgenBite", 4000, 3)
Unit:RegisterEvent("BloodmoonWorgen_SinisterStrike", 6000, 0)
end

function BloodmoonWorgen_Enrage(pUnit, Event) 
pUnit:CastSpell(32714) 
end

function BloodmoonWorgen_InfectedWorgenBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53094, pUnit:GetMainTank()) 
end

function BloodmoonWorgen_SinisterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14873, pUnit:GetMainTank()) 
end

function BloodmoonWorgen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodmoonWorgen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodmoonWorgen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27020, 1, "BloodmoonWorgen_OnCombat")
RegisterUnitEvent(27020, 2, "BloodmoonWorgen_OnLeaveCombat")
RegisterUnitEvent(27020, 3, "BloodmoonWorgen_OnKilledTarget")
RegisterUnitEvent(27020, 4, "BloodmoonWorgen_OnDied")


--[[ Grizzly Hills -- Camp Oneqwah Brave.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function CampOneqwahBrave_OnCombat(Unit, Event)
Unit:RegisterEvent("CampOneqwahBrave_Cleave", 8000, 0)
end

function CampOneqwahBrave_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function CampOneqwahBrave_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CampOneqwahBrave_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CampOneqwahBrave_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27126, 1, "CampOneqwahBrave_OnCombat")
RegisterUnitEvent(27126, 2, "CampOneqwahBrave_OnLeaveCombat")
RegisterUnitEvent(27126, 3, "CampOneqwahBrave_OnKilledTarget")
RegisterUnitEvent(27126, 4, "CampOneqwahBrave_OnDied")


--[[ Grizzly Hills -- Commander Howser.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function CommanderHowser_OnCombat(Unit, Event)
Unit:RegisterEvent("CommanderHowser_BerserkerCharge", 6000, 0)
Unit:RegisterEvent("CommanderHowser_Whirlwind", 8000, 0)
end

function CommanderHowser_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16636, pUnit:GetMainTank()) 
end

function CommanderHowser_Whirlwind(pUnit, Event) 
pUnit:CastSpell(15589) 
end

function CommanderHowser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CommanderHowser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CommanderHowser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27759, 1, "CommanderHowser_OnCombat")
RegisterUnitEvent(27759, 2, "CommanderHowser_OnLeaveCombat")
RegisterUnitEvent(27759, 3, "CommanderHowser_OnKilledTarget")
RegisterUnitEvent(27759, 4, "CommanderHowser_OnDied")


--[[ Grizzly Hills -- Conqueror Krenna.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ConquerorKrenna_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquerorKrenna_Cleave", 8000, 0)
Unit:RegisterEvent("ConquerorKrenna_Fixate", 10000, 0)
Unit:RegisterEvent("ConquerorKrenna_Pummel", 17000, 0)
Unit:RegisterEvent("ConquerorKrenna_Slam", 12000, 0)
end

function ConquerorKrenna_Cleave(pUnit, Event) 
pUnit:CastSpell(15284) 
end

function ConquerorKrenna_Fixate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34719, pUnit:GetMainTank()) 
end

function ConquerorKrenna_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function ConquerorKrenna_Slam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11430, pUnit:GetMainTank()) 
end

function ConquerorKrenna_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquerorKrenna_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquerorKrenna_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27727, 1, "ConquerorKrenna_OnCombat")
RegisterUnitEvent(27727, 2, "ConquerorKrenna_OnLeaveCombat")
RegisterUnitEvent(27727, 3, "ConquerorKrenna_OnKilledTarget")
RegisterUnitEvent(27727, 4, "ConquerorKrenna_OnDied")


--[[ Grizzly Hills -- Conquest Hold Berserker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ConquestHoldBerserker_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldBerserker_BattleShout", 4000, 1)
end

function ConquestHoldBerserker_BattleShout(pUnit, Event) 
pUnit:CastSpell(31403) 
end

function ConquestHoldBerserker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldBerserker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldBerserker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27500, 1, "ConquestHoldBerserker_OnCombat")
RegisterUnitEvent(27500, 2, "ConquestHoldBerserker_OnLeaveCombat")
RegisterUnitEvent(27500, 3, "ConquestHoldBerserker_OnKilledTarget")
RegisterUnitEvent(27500, 4, "ConquestHoldBerserker_OnDied")


--[[ Grizzly Hills -- Conquest Hold Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ConquestHoldDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldDefender_HeroicStrike", 5000, 0)
end

function ConquestHoldDefender_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(29426, pUnit:GetMainTank()) 
end

function ConquestHoldDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27748, 1, "ConquestHoldDefender_OnCombat")
RegisterUnitEvent(27748, 2, "ConquestHoldDefender_OnLeaveCombat")
RegisterUnitEvent(27748, 3, "ConquestHoldDefender_OnKilledTarget")
RegisterUnitEvent(27748, 4, "ConquestHoldDefender_OnDied")


--[[ Grizzly Hills -- Conquest Hold Grunt.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ConquestHoldGrunt_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldGrunt_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("ConquestHoldGrunt_HeroicStrike", 5000, 0)
Unit:RegisterEvent("ConquestHoldGrunt_Intercept", 9000, 0)
end

function ConquestHoldGrunt_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function ConquestHoldGrunt_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function ConquestHoldGrunt_Intercept(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27577, pUnit:GetMainTank()) 
end

function ConquestHoldGrunt_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldGrunt_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldGrunt_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27470, 1, "ConquestHoldGrunt_OnCombat")
RegisterUnitEvent(27470, 2, "ConquestHoldGrunt_OnLeaveCombat")
RegisterUnitEvent(27470, 3, "ConquestHoldGrunt_OnKilledTarget")
RegisterUnitEvent(27470, 4, "ConquestHoldGrunt_OnDied")


--[[ Grizzly Hills -- Conquest Hold Legionnaire.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ConquestHoldLegionnaire_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldLegionnaire_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("ConquestHoldLegionnaire_Hamstring", 10000, 0)
end

function ConquestHoldLegionnaire_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(61044) 
end

function ConquestHoldLegionnaire_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function ConquestHoldLegionnaire_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldLegionnaire_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldLegionnaire_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26839, 1, "ConquestHoldLegionnaire_OnCombat")
RegisterUnitEvent(26839, 2, "ConquestHoldLegionnaire_OnLeaveCombat")
RegisterUnitEvent(26839, 3, "ConquestHoldLegionnaire_OnKilledTarget")
RegisterUnitEvent(26839, 4, "ConquestHoldLegionnaire_OnDied")


--[[ Grizzly Hills -- Conquest Hold Marauder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ConquestHoldMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldMarauder_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("ConquestHoldMarauder_HeroicStrike", 5000, 0)
Unit:RegisterEvent("ConquestHoldMarauder_Intercept", 9000, 0)
end

function ConquestHoldMarauder_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function ConquestHoldMarauder_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function ConquestHoldMarauder_Intercept(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27577, pUnit:GetMainTank()) 
end

function ConquestHoldMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27424, 1, "ConquestHoldMarauder_OnCombat")
RegisterUnitEvent(27424, 2, "ConquestHoldMarauder_OnLeaveCombat")
RegisterUnitEvent(27424, 3, "ConquestHoldMarauder_OnKilledTarget")
RegisterUnitEvent(27424, 4, "ConquestHoldMarauder_OnDied")


--[[ Grizzly Hills -- Conquest Hold Raider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ConquestHoldRaider_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldRaider_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("ConquestHoldRaider_HeroicStrike", 5000, 0)
Unit:RegisterEvent("ConquestHoldRaider_Intercept", 9000, 0)
end

function ConquestHoldRaider_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function ConquestHoldRaider_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function ConquestHoldRaider_Intercept(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27577, pUnit:GetMainTank()) 
end

function ConquestHoldRaider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldRaider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldRaider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27118, 1, "ConquestHoldRaider_OnCombat")
RegisterUnitEvent(27118, 2, "ConquestHoldRaider_OnLeaveCombat")
RegisterUnitEvent(27118, 3, "ConquestHoldRaider_OnKilledTarget")
RegisterUnitEvent(27118, 4, "ConquestHoldRaider_OnDied")


--[[ Grizzly Hills -- Conquest Hold Skirmisher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ConquestHoldSkirmisher_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldSkirmisher_Cleave", 8000, 0)
Unit:RegisterEvent("ConquestHoldSkirmisher_Hamstring", 10000, 0)
Unit:RegisterEvent("ConquestHoldSkirmisher_MortalStrike", 7000, 0)
end

function ConquestHoldSkirmisher_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function ConquestHoldSkirmisher_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function ConquestHoldSkirmisher_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function ConquestHoldSkirmisher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldSkirmisher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldSkirmisher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27456, 1, "ConquestHoldSkirmisher_OnCombat")
RegisterUnitEvent(27456, 2, "ConquestHoldSkirmisher_OnLeaveCombat")
RegisterUnitEvent(27456, 3, "ConquestHoldSkirmisher_OnKilledTarget")
RegisterUnitEvent(27456, 4, "ConquestHoldSkirmisher_OnDied")


--[[ Grizzly Hills -- Diseased Drakkari.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DiseasedDrakkari_OnCombat(Unit, Event)
Unit:RegisterEvent("DiseasedDrakkari_FeveredDisease", 10000, 0)
end

function DiseasedDrakkari_FeveredDisease(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34363, pUnit:GetMainTank()) 
end

function DiseasedDrakkari_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DiseasedDrakkari_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DiseasedDrakkari_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26457, 1, "DiseasedDrakkari_OnCombat")
RegisterUnitEvent(26457, 2, "DiseasedDrakkari_OnLeaveCombat")
RegisterUnitEvent(26457, 3, "DiseasedDrakkari_OnKilledTarget")
RegisterUnitEvent(26457, 4, "DiseasedDrakkari_OnDied")


--[[ Grizzly Hills -- Dragonflayer Flamebinder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DragonflayerFlamebinder_OnCombat(Unit, Event)
Unit:RegisterEvent("DragonflayerFlamebinder_FlamePatch", 10000, 0)
Unit:RegisterEvent("DragonflayerFlamebinder_InciteFlames", 7000, 0)
end

function DragonflayerFlamebinder_FlamePatch(pUnit, Event) 
pUnit:CastSpell(52208) 
end

function DragonflayerFlamebinder_InciteFlames(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52209, pUnit:GetMainTank()) 
end

function DragonflayerFlamebinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DragonflayerFlamebinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DragonflayerFlamebinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27259, 1, "DragonflayerFlamebinder_OnCombat")
RegisterUnitEvent(27259, 2, "DragonflayerFlamebinder_OnLeaveCombat")
RegisterUnitEvent(27259, 3, "DragonflayerFlamebinder_OnKilledTarget")
RegisterUnitEvent(27259, 4, "DragonflayerFlamebinder_OnDied")


--[[ Grizzly Hills -- Dragonflayer Huscarl.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DragonflayerHuscarl_OnCombat(Unit, Event)
Unit:RegisterEvent("DragonflayerHuscarl_Cleave", 8000, 0)
Unit:RegisterEvent("DragonflayerHuscarl_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("DragonflayerHuscarl_Disarm", 10000, 0)
Unit:RegisterEvent("DragonflayerHuscarl_Pummel", 15000, 0)
Unit:RegisterEvent("DragonflayerHuscarl_Squish", 5500, 0)
Unit:RegisterEvent("DragonflayerHuscarl_Whirlwind", 6500, 0)
end

function DragonflayerHuscarl_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function DragonflayerHuscarl_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function DragonflayerHuscarl_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function DragonflayerHuscarl_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function DragonflayerHuscarl_Squish(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52223, pUnit:GetMainTank()) 
end

function DragonflayerHuscarl_Whirlwind(pUnit, Event) 
pUnit:CastSpell(15578) 
end

function DragonflayerHuscarl_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DragonflayerHuscarl_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DragonflayerHuscarl_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27260, 1, "DragonflayerHuscarl_OnCombat")
RegisterUnitEvent(27260, 2, "DragonflayerHuscarl_OnLeaveCombat")
RegisterUnitEvent(27260, 3, "DragonflayerHuscarl_OnKilledTarget")
RegisterUnitEvent(27260, 4, "DragonflayerHuscarl_OnDied")


--[[ Grizzly Hills -- Drakaguul.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Drakaguul_OnCombat(Unit, Event)
Unit:RegisterEvent("Drakaguul_BerserkerCharge", 10000, 0)
Unit:RegisterEvent("Drakaguul_DrakaguulsSoldiers", 12000, 0)
end

function Drakaguul_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52460, pUnit:GetMainTank()) 
end

function Drakaguul_DrakaguulsSoldiers(pUnit, Event) 
pUnit:CastSpell(52457) 
end

function Drakaguul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Drakaguul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Drakaguul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26919, 1, "Drakaguul_OnCombat")
RegisterUnitEvent(26919, 2, "Drakaguul_OnLeaveCombat")
RegisterUnitEvent(26919, 3, "Drakaguul_OnKilledTarget")
RegisterUnitEvent(26919, 4, "Drakaguul_OnDied")


--[[ Grizzly Hills -- Drakkari Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DrakkariDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariDefender_Cleave", 8000, 0)
end

function DrakkariDefender_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function DrakkariDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26704, 1, "DrakkariDefender_OnCombat")
RegisterUnitEvent(26704, 2, "DrakkariDefender_OnLeaveCombat")
RegisterUnitEvent(26704, 3, "DrakkariDefender_OnKilledTarget")
RegisterUnitEvent(26704, 4, "DrakkariDefender_OnDied")


--[[ Grizzly Hills -- Drakkari Oracle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DrakkariOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariOracle_LightningBolt", 7000, 0)
Unit:RegisterEvent("DrakkariOracle_WarpedBody", 8000, 0)
Unit:RegisterEvent("DrakkariOracle_WarpedMind", 6000, 0)
end

function DrakkariOracle_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function DrakkariOracle_WarpedBody(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52431, pUnit:GetMainTank()) 
end

function DrakkariOracle_WarpedMind(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52430, pUnit:GetMainTank()) 
end

function DrakkariOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26795, 1, "DrakkariOracle_OnCombat")
RegisterUnitEvent(26795, 2, "DrakkariOracle_OnLeaveCombat")
RegisterUnitEvent(26795, 3, "DrakkariOracle_OnKilledTarget")
RegisterUnitEvent(26795, 4, "DrakkariOracle_OnDied")


--[[ Grizzly Hills -- Drakkari Plague Spreader.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DrakkariPlagueSpreader_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariPlagueSpreader_PlagueInfected", 10000, 0)
end

function DrakkariPlagueSpreader_PlagueInfected(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52230, pUnit:GetMainTank()) 
end

function DrakkariPlagueSpreader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariPlagueSpreader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariPlagueSpreader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27941, 1, "DrakkariPlagueSpreader_OnCombat")
RegisterUnitEvent(27941, 2, "DrakkariPlagueSpreader_OnLeaveCombat")
RegisterUnitEvent(27941, 3, "DrakkariPlagueSpreader_OnKilledTarget")
RegisterUnitEvent(27941, 4, "DrakkariPlagueSpreader_OnDied")


--[[ Grizzly Hills -- Drakkari Protector.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DrakkariProtector_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariProtector_HeadTrauma", 7000, 0)
end

function DrakkariProtector_HeadTrauma(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52425, pUnit:GetMainTank()) 
end

function DrakkariProtector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariProtector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariProtector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26797, 1, "DrakkariProtector_OnCombat")
RegisterUnitEvent(26797, 2, "DrakkariProtector_OnLeaveCombat")
RegisterUnitEvent(26797, 3, "DrakkariProtector_OnKilledTarget")
RegisterUnitEvent(26797, 4, "DrakkariProtector_OnDied")


--[[ Grizzly Hills -- Drakkari Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DrakkariShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariShaman_LightningBolt", 7000, 0)
Unit:RegisterEvent("DrakkariShaman_MasteredElements", 10000, 0)
end

function DrakkariShaman_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function DrakkariShaman_MasteredElements(pUnit, Event) 
pUnit:CastSpell(52290) 
end

function DrakkariShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26447, 1, "DrakkariShaman_OnCombat")
RegisterUnitEvent(26447, 2, "DrakkariShaman_OnLeaveCombat")
RegisterUnitEvent(26447, 3, "DrakkariShaman_OnKilledTarget")
RegisterUnitEvent(26447, 4, "DrakkariShaman_OnDied")


--[[ Grizzly Hills -- Drakkari Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DrakkariWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariWarrior_WarriorsWill", 4000, 1)
end

function DrakkariWarrior_WarriorsWill(pUnit, Event) 
pUnit:CastSpell(52309) 
end

function DrakkariWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26425, 1, "DrakkariWarrior_OnCombat")
RegisterUnitEvent(26425, 2, "DrakkariWarrior_OnLeaveCombat")
RegisterUnitEvent(26425, 3, "DrakkariWarrior_OnKilledTarget")
RegisterUnitEvent(26425, 4, "DrakkariWarrior_OnDied")


--[[ Grizzly Hills -- Drakkari Witch Doctor.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DrakkariWitchDoctor_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariWitchDoctor_SuperiorHealingWard", 4000, 1)
Unit:RegisterEvent("DrakkariWitchDoctor_VoodooDoll", 7000, 0)
end

function DrakkariWitchDoctor_SuperiorHealingWard(pUnit, Event) 
pUnit:CastSpell(32194) 
end

function DrakkariWitchDoctor_VoodooDoll(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52695, pUnit:GetMainTank()) 
end

function DrakkariWitchDoctor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariWitchDoctor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariWitchDoctor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27555, 1, "DrakkariWitchDoctor_OnCombat")
RegisterUnitEvent(27555, 2, "DrakkariWitchDoctor_OnLeaveCombat")
RegisterUnitEvent(27555, 3, "DrakkariWitchDoctor_OnKilledTarget")
RegisterUnitEvent(27555, 4, "DrakkariWitchDoctor_OnDied")


--[[ Grizzly Hills -- Duskhowl Prowler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DuskhowlProwler_OnCombat(Unit, Event)
Unit:RegisterEvent("DuskhowlProwler_Gore", 10000, 0)
end

function DuskhowlProwler_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function DuskhowlProwler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DuskhowlProwler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DuskhowlProwler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27408, 1, "DuskhowlProwler_OnCombat")
RegisterUnitEvent(27408, 2, "DuskhowlProwler_OnLeaveCombat")
RegisterUnitEvent(27408, 3, "DuskhowlProwler_OnKilledTarget")
RegisterUnitEvent(27408, 4, "DuskhowlProwler_OnDied")


--[[ Grizzly Hills -- Entropic Ooze.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function EntropicOoze_OnCombat(Unit, Event)
Unit:RegisterEvent("EntropicOoze_CrudeOoze", 7000, 0)
end

function EntropicOoze_CrudeOoze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52334, pUnit:GetMainTank()) 
end

function EntropicOoze_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EntropicOoze_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EntropicOoze_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26366, 1, "EntropicOoze_OnCombat")
RegisterUnitEvent(26366, 2, "EntropicOoze_OnLeaveCombat")
RegisterUnitEvent(26366, 3, "EntropicOoze_OnKilledTarget")
RegisterUnitEvent(26366, 4, "EntropicOoze_OnDied")


--[[ Grizzly Hills -- Famished Scourge Troll.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function FamishedScourgeTroll_OnCombat(Unit, Event)
Unit:RegisterEvent("FamishedScourgeTroll_Suicide", 30000, 1)
end

function FamishedScourgeTroll_Suicide(pUnit, Event) 
pUnit:CastSpell(7) 
end

function FamishedScourgeTroll_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FamishedScourgeTroll_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FamishedScourgeTroll_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26570, 1, "FamishedScourgeTroll_OnCombat")
RegisterUnitEvent(26570, 2, "FamishedScourgeTroll_OnLeaveCombat")
RegisterUnitEvent(26570, 3, "FamishedScourgeTroll_OnKilledTarget")
RegisterUnitEvent(26570, 4, "FamishedScourgeTroll_OnDied")


--[[ Grizzly Hills -- Forgemaster Damrath.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ForgemasterDamrath_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgemasterDamrath_ForgeForce", 7000, 0)
end

function ForgemasterDamrath_ForgeForce(pUnit, Event) 
pUnit:CastSpell(52640) 
end

function ForgemasterDamrath_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgemasterDamrath_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgemasterDamrath_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26334, 1, "ForgemasterDamrath_OnCombat")
RegisterUnitEvent(26334, 2, "ForgemasterDamrath_OnLeaveCombat")
RegisterUnitEvent(26334, 3, "ForgemasterDamrath_OnKilledTarget")
RegisterUnitEvent(26334, 4, "ForgemasterDamrath_OnDied")


--[[ Grizzly Hills -- Frosthorn Ram.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function FrosthornRam_OnCombat(Unit, Event)
Unit:RegisterEvent("FrosthornRam_HoofStrike", 7000, 0)
end

function FrosthornRam_HoofStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(29577, pUnit:GetMainTank()) 
end

function FrosthornRam_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrosthornRam_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrosthornRam_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23740, 1, "FrosthornRam_OnCombat")
RegisterUnitEvent(23740, 2, "FrosthornRam_OnLeaveCombat")
RegisterUnitEvent(23740, 3, "FrosthornRam_OnKilledTarget")
RegisterUnitEvent(23740, 4, "FrosthornRam_OnDied")


--[[ Grizzly Hills -- Frostpaw Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function FrostpawShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("FrostpawShaman_ChainLightning", 6000, 0)
Unit:RegisterEvent("FrostpawShaman_LesserHealingWave", 13000, 0)
end

function FrostpawShaman_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12058, pUnit:GetMainTank()) 
end

function FrostpawShaman_LesserHealingWave(pUnit, Event) 
pUnit:CastSpell(25420) 
end

function FrostpawShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrostpawShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrostpawShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26428, 1, "FrostpawShaman_OnCombat")
RegisterUnitEvent(26428, 2, "FrostpawShaman_OnLeaveCombat")
RegisterUnitEvent(26428, 3, "FrostpawShaman_OnKilledTarget")
RegisterUnitEvent(26428, 4, "FrostpawShaman_OnDied")


--[[ Grizzly Hills -- Frostpaw Trapper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function FrostpawTrapper_OnCombat(Unit, Event)
Unit:RegisterEvent("FrostpawTrapper_AimedShot", 9000, 0)
Unit:RegisterEvent("FrostpawTrapper_Shoot", 6000, 0)
Unit:RegisterEvent("FrostpawTrapper_WingClip", 12000, 0)
end

function FrostpawTrapper_AimedShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30614, pUnit:GetMainTank()) 
end

function FrostpawTrapper_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function FrostpawTrapper_WingClip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32908, pUnit:GetMainTank()) 
end

function FrostpawTrapper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrostpawTrapper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrostpawTrapper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26434, 1, "FrostpawTrapper_OnCombat")
RegisterUnitEvent(26434, 2, "FrostpawTrapper_OnLeaveCombat")
RegisterUnitEvent(26434, 3, "FrostpawTrapper_OnKilledTarget")
RegisterUnitEvent(26434, 4, "FrostpawTrapper_OnDied")


--[[ Grizzly Hills -- Frostpaw Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function FrostpawWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("FrostpawWarrior_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("FrostpawWarrior_Pummel", 12000, 0)
Unit:RegisterEvent("FrostpawWarrior_Rend", 10000, 0)
end

function FrostpawWarrior_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function FrostpawWarrior_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function FrostpawWarrior_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12054, pUnit:GetMainTank()) 
end

function FrostpawWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrostpawWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrostpawWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26357, 1, "FrostpawWarrior_OnCombat")
RegisterUnitEvent(26357, 2, "FrostpawWarrior_OnLeaveCombat")
RegisterUnitEvent(26357, 3, "FrostpawWarrior_OnKilledTarget")
RegisterUnitEvent(26357, 4, "FrostpawWarrior_OnDied")


--[[ Grizzly Hills -- General Gorlok.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function GeneralGorlok_OnCombat(Unit, Event)
Unit:RegisterEvent("GeneralGorlok_BerserkerCharge", 6000, 0)
Unit:RegisterEvent("GeneralGorlok_MortalStrike", 8000, 0)
end

function GeneralGorlok_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16636, pUnit:GetMainTank()) 
end

function GeneralGorlok_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16856, pUnit:GetMainTank()) 
end

function GeneralGorlok_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GeneralGorlok_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GeneralGorlok_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27708, 1, "GeneralGorlok_OnCombat")
RegisterUnitEvent(27708, 2, "GeneralGorlok_OnLeaveCombat")
RegisterUnitEvent(27708, 3, "GeneralGorlok_OnKilledTarget")
RegisterUnitEvent(27708, 4, "GeneralGorlok_OnDied")


--[[ Grizzly Hills -- Goremaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Goremaw_OnCombat(Unit, Event)
Unit:RegisterEvent("Goremaw_CarnivorousBite", 10000, 0)
Unit:RegisterEvent("Goremaw_InfectedWorgenBite", 4000, 3)
end

function Goremaw_CarnivorousBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50729, pUnit:GetMainTank()) 
end

function Goremaw_InfectedWorgenBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53174, pUnit:GetMainTank()) 
end

function Goremaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Goremaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Goremaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27578, 1, "Goremaw_OnCombat")
RegisterUnitEvent(27578, 2, "Goremaw_OnLeaveCombat")
RegisterUnitEvent(27578, 3, "Goremaw_OnKilledTarget")
RegisterUnitEvent(27578, 4, "Goremaw_OnDied")


--[[ Grizzly Hills -- Graymist Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function GraymistHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("GraymistHunter_Gore", 10000, 0)
end

function GraymistHunter_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function GraymistHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GraymistHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GraymistHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26592, 1, "GraymistHunter_OnCombat")
RegisterUnitEvent(26592, 2, "GraymistHunter_OnLeaveCombat")
RegisterUnitEvent(26592, 3, "GraymistHunter_OnKilledTarget")
RegisterUnitEvent(26592, 4, "GraymistHunter_OnDied")


--[[ Grizzly Hills -- Grizzlesnout.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Grizzlesnout_OnCombat(Unit, Event)
Unit:RegisterEvent("Grizzlesnout_GnawBone", 8000, 0)
end

function Grizzlesnout_GnawBone(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50046, pUnit:GetMainTank()) 
end

function Grizzlesnout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Grizzlesnout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Grizzlesnout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27523, 1, "Grizzlesnout_OnCombat")
RegisterUnitEvent(27523, 2, "Grizzlesnout_OnLeaveCombat")
RegisterUnitEvent(27523, 3, "Grizzlesnout_OnKilledTarget")
RegisterUnitEvent(27523, 4, "Grizzlesnout_OnDied")


--[[ Grizzly Hills -- Grocklar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Grocklar_OnCombat(Unit, Event)
Unit:RegisterEvent("Grocklar_StoneFist", 3000, 1)
Unit:RegisterEvent("Grocklar_StoneStomp", 8000, 0)
end

function Grocklar_StoneFist(pUnit, Event) 
pUnit:CastSpell(49676) 
end

function Grocklar_StoneStomp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49675, pUnit:GetMainTank()) 
end

function Grocklar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Grocklar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Grocklar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32422, 1, "Grocklar_OnCombat")
RegisterUnitEvent(32422, 2, "Grocklar_OnLeaveCombat")
RegisterUnitEvent(32422, 3, "Grocklar_OnKilledTarget")
RegisterUnitEvent(32422, 4, "Grocklar_OnDied")


--[[ Grizzly Hills -- Grumbald One Eye.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function GrumbaldOneEye_OnCombat(Unit, Event)
Unit:RegisterEvent("GrumbaldOneEye_ElementalEnlightenment", 3000, 1)
Unit:RegisterEvent("GrumbaldOneEye_FireBlast", 6000, 0)
Unit:RegisterEvent("GrumbaldOneEye_FrostNova", 9000, 0)
Unit:RegisterEvent("GrumbaldOneEye_FrostfireBolt", 9500, 0)
end

function GrumbaldOneEye_ElementalEnlightenment(pUnit, Event) 
pUnit:CastSpell(52495) 
end

function GrumbaldOneEye_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13339, pUnit:GetMainTank()) 
end

function GrumbaldOneEye_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function GrumbaldOneEye_FrostfireBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51779, pUnit:GetMainTank()) 
end

function GrumbaldOneEye_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrumbaldOneEye_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrumbaldOneEye_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26681, 1, "GrumbaldOneEye_OnCombat")
RegisterUnitEvent(26681, 2, "GrumbaldOneEye_OnLeaveCombat")
RegisterUnitEvent(26681, 3, "GrumbaldOneEye_OnKilledTarget")
RegisterUnitEvent(26681, 4, "GrumbaldOneEye_OnDied")


--[[ Grizzly Hills -- Guardian Serpent.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function GuardianSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("GuardianSerpent_TailLash", 6000, 0)
end

function GuardianSerpent_TailLash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34811, pUnit:GetMainTank()) 
end

function GuardianSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GuardianSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GuardianSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26806, 1, "GuardianSerpent_OnCombat")
RegisterUnitEvent(26806, 2, "GuardianSerpent_OnLeaveCombat")
RegisterUnitEvent(26806, 3, "GuardianSerpent_OnKilledTarget")
RegisterUnitEvent(26806, 4, "GuardianSerpent_OnDied")


--[[ Grizzly Hills -- Horgrenn Hellcleave.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function HorgrennHellcleave_OnCombat(Unit, Event)
Unit:RegisterEvent("HorgrennHellcleave_IntimidatingRoar", 12000, 1)
Unit:RegisterEvent("HorgrennHellcleave_MortalStrike", 7000, 0)
Unit:RegisterEvent("HorgrennHellcleave_SunderArmor", 6000, 0)
Unit:RegisterEvent("HorgrennHellcleave_Whirlwind", 8000, 0)
end

function HorgrennHellcleave_IntimidatingRoar(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16508, pUnit:GetMainTank()) 
end

function HorgrennHellcleave_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39171, pUnit:GetMainTank()) 
end

function HorgrennHellcleave_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15572, pUnit:GetMainTank()) 
end

function HorgrennHellcleave_Whirlwind(pUnit, Event) 
pUnit:CastSpell(38619) 
end

function HorgrennHellcleave_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HorgrennHellcleave_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HorgrennHellcleave_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27718, 1, "HorgrennHellcleave_OnCombat")
RegisterUnitEvent(27718, 2, "HorgrennHellcleave_OnLeaveCombat")
RegisterUnitEvent(27718, 3, "HorgrennHellcleave_OnKilledTarget")
RegisterUnitEvent(27718, 4, "HorgrennHellcleave_OnDied")


--[[ Grizzly Hills -- Ice Serpent.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IceSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("IceSerpent_IceSlash", 7000, 0)
end

function IceSerpent_IceSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51878, pUnit:GetMainTank()) 
end

function IceSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26446, 1, "IceSerpent_OnCombat")
RegisterUnitEvent(26446, 2, "IceSerpent_OnLeaveCombat")
RegisterUnitEvent(26446, 3, "IceSerpent_OnKilledTarget")
RegisterUnitEvent(26446, 4, "IceSerpent_OnDied")


--[[ Grizzly Hills -- Iceshard Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IceshardElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("IceshardElemental_IceSpike", 8000, 0)
end

function IceshardElemental_IceSpike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50094, pUnit:GetMainTank()) 
end

function IceshardElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceshardElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceshardElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24228, 1, "IceshardElemental_OnCombat")
RegisterUnitEvent(24228, 2, "IceshardElemental_OnLeaveCombat")
RegisterUnitEvent(24228, 3, "IceshardElemental_OnKilledTarget")
RegisterUnitEvent(24228, 4, "IceshardElemental_OnDied")


--[[ Grizzly Hills -- Infected Grizzly Bear.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function InfectedGrizzlyBear_OnCombat(Unit, Event)
Unit:RegisterEvent("InfectedGrizzlyBear_InfectedBite", 8000, 0)
end

function InfectedGrizzlyBear_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49861, pUnit:GetMainTank()) 
end

function InfectedGrizzlyBear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfectedGrizzlyBear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfectedGrizzlyBear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26706, 1, "InfectedGrizzlyBear_OnCombat")
RegisterUnitEvent(26706, 2, "InfectedGrizzlyBear_OnLeaveCombat")
RegisterUnitEvent(26706, 3, "InfectedGrizzlyBear_OnKilledTarget")
RegisterUnitEvent(26706, 4, "InfectedGrizzlyBear_OnDied")


--[[ Grizzly Hills -- Iron Rune Avenger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IronRuneAvenger_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneAvenger_RuneofRetribution", 3000, 1)
end

function IronRuneAvenger_RuneofRetribution(pUnit, Event) 
pUnit:CastSpell(52628) 
end

function IronRuneAvenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneAvenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneAvenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26786, 1, "IronRuneAvenger_OnCombat")
RegisterUnitEvent(26786, 2, "IronRuneAvenger_OnLeaveCombat")
RegisterUnitEvent(26786, 3, "IronRuneAvenger_OnKilledTarget")
RegisterUnitEvent(26786, 4, "IronRuneAvenger_OnDied")


--[[ Grizzly Hills -- Iron Rune Overseer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IronRuneOverseer_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneOverseer_CallLightning", 6000, 0)
end

function IronRuneOverseer_CallLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32018, pUnit:GetMainTank()) 
end

function IronRuneOverseer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneOverseer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneOverseer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27177, 1, "IronRuneOverseer_OnCombat")
RegisterUnitEvent(27177, 2, "IronRuneOverseer_OnLeaveCombat")
RegisterUnitEvent(27177, 3, "IronRuneOverseer_OnKilledTarget")
RegisterUnitEvent(27177, 4, "IronRuneOverseer_OnDied")


--[[ Grizzly Hills -- Iron Rune Shaper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IronRuneShaper_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneShaper_MoldRune", 3000, 1)
end

function IronRuneShaper_MoldRune(pUnit, Event) 
pUnit:CastSpell(52622) 
end

function IronRuneShaper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneShaper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneShaper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26270, 1, "IronRuneShaper_OnCombat")
RegisterUnitEvent(26270, 2, "IronRuneShaper_OnLeaveCombat")
RegisterUnitEvent(26270, 3, "IronRuneShaper_OnKilledTarget")
RegisterUnitEvent(26270, 4, "IronRuneShaper_OnDied")


--[[ Grizzly Hills -- Iron Rune-Smith.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IronRuneSmith_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneSmith_LightningCharged", 4000, 1)
Unit:RegisterEvent("IronRuneSmith_SmeltRune", 10000, 0)
end

function IronRuneSmith_LightningCharged(pUnit, Event) 
pUnit:CastSpell(52701) 
end

function IronRuneSmith_SmeltRune(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52699, pUnit:GetMainTank()) 
end

function IronRuneSmith_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneSmith_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneSmith_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26408, 1, "IronRuneSmith_OnCombat")
RegisterUnitEvent(26408, 2, "IronRuneSmith_OnLeaveCombat")
RegisterUnitEvent(26408, 3, "IronRuneSmith_OnKilledTarget")
RegisterUnitEvent(26408, 4, "IronRuneSmith_OnDied")


--[[ Grizzly Hills -- Iron Rune Weaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IronRuneWeaver_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneWeaver_RuneWeaving", 9000, 0)
end

function IronRuneWeaver_RuneWeaving(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52713, pUnit:GetMainTank()) 
end

function IronRuneWeaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneWeaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneWeaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26820, 1, "IronRuneWeaver_OnCombat")
RegisterUnitEvent(26820, 2, "IronRuneWeaver_OnLeaveCombat")
RegisterUnitEvent(26820, 3, "IronRuneWeaver_OnKilledTarget")
RegisterUnitEvent(26820, 4, "IronRuneWeaver_OnDied")


--[[ Grizzly Hills -- Iron Thane Argrum.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IronThaneArgrum_OnCombat(Unit, Event)
Unit:RegisterEvent("IronThaneArgrum_CallLightning", 6000, 0)
Unit:RegisterEvent("IronThaneArgrum_LightningShield", 4000, 0)
end

function IronThaneArgrum_CallLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32018, pUnit:GetMainTank()) 
end

function IronThaneArgrum_LightningShield(pUnit, Event) 
pUnit:CastSpell(52651) 
end

function IronThaneArgrum_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronThaneArgrum_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronThaneArgrum_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26348, 1, "IronThaneArgrum_OnCombat")
RegisterUnitEvent(26348, 2, "IronThaneArgrum_OnLeaveCombat")
RegisterUnitEvent(26348, 3, "IronThaneArgrum_OnKilledTarget")
RegisterUnitEvent(26348, 4, "IronThaneArgrum_OnDied")


--[[ Grizzly Hills -- Iron Thane Furyhammer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IronThaneFuryhammer_OnCombat(Unit, Event)
Unit:RegisterEvent("IronThaneFuryhammer_Furyhammer", 8000, 0)
Unit:RegisterEvent("IronThaneFuryhammer_FuryhammersImmunity", 15000, 1)
end

function IronThaneFuryhammer_Furyhammer(pUnit, Event) 
pUnit:CastSpell(61576) 
end

function IronThaneFuryhammer_FuryhammersImmunity(pUnit, Event) 
pUnit:CastSpell(47922) 
end

function IronThaneFuryhammer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronThaneFuryhammer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronThaneFuryhammer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26405, 1, "IronThaneFuryhammer_OnCombat")
RegisterUnitEvent(26405, 2, "IronThaneFuryhammer_OnLeaveCombat")
RegisterUnitEvent(26405, 3, "IronThaneFuryhammer_OnKilledTarget")
RegisterUnitEvent(26405, 4, "IronThaneFuryhammer_OnDied")


--[[ Grizzly Hills -- Ironhide.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Ironhide_OnCombat(Unit, Event)
Unit:RegisterEvent("Ironhide_Charge", 10000, 0)
Unit:RegisterEvent("Ironhide_Maul", 6000, 0)
Unit:RegisterEvent("Ironhide_Swipe", 5000, 0)
end

function Ironhide_Charge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32323, pUnit:GetMainTank()) 
end

function Ironhide_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34298, pUnit:GetMainTank()) 
end

function Ironhide_Swipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31279, pUnit:GetMainTank()) 
end

function Ironhide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Ironhide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Ironhide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27715, 1, "Ironhide_OnCombat")
RegisterUnitEvent(27715, 2, "Ironhide_OnLeaveCombat")
RegisterUnitEvent(27715, 3, "Ironhide_OnKilledTarget")
RegisterUnitEvent(27715, 4, "Ironhide_OnDied")


--[[ Grizzly Hills -- Lightning Sentry.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function LightningSentry_OnCombat(Unit, Event)
Unit:RegisterEvent("LightningSentry_ChargedSentryTotem", 4000, 1)
end

function LightningSentry_ChargedSentryTotem(pUnit, Event) 
pUnit:CastSpell(52703) 
end

function LightningSentry_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LightningSentry_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LightningSentry_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26407, 1, "LightningSentry_OnCombat")
RegisterUnitEvent(26407, 2, "LightningSentry_OnLeaveCombat")
RegisterUnitEvent(26407, 3, "LightningSentry_OnKilledTarget")
RegisterUnitEvent(26407, 4, "LightningSentry_OnDied")


--[[ Grizzly Hills -- Longhoof Grazer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function LonghoofGrazer_OnCombat(Unit, Event)
Unit:RegisterEvent("LonghoofGrazer_HeadButt", 8000, 0)
end

function LonghoofGrazer_HeadButt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(42320, pUnit:GetMainTank()) 
end

function LonghoofGrazer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LonghoofGrazer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LonghoofGrazer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26418, 1, "LonghoofGrazer_OnCombat")
RegisterUnitEvent(26418, 2, "LonghoofGrazer_OnLeaveCombat")
RegisterUnitEvent(26418, 3, "LonghoofGrazer_OnKilledTarget")
RegisterUnitEvent(26418, 4, "LonghoofGrazer_OnDied")


--[[ Grizzly Hills -- Overseer Durval.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function OverseerDurval_OnCombat(Unit, Event)
Unit:RegisterEvent("OverseerDurval_RuneofDestruction", 8000, 0)
end

function OverseerDurval_RuneofDestruction(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52715, pUnit:GetMainTank()) 
end

function OverseerDurval_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OverseerDurval_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OverseerDurval_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26920, 1, "OverseerDurval_OnCombat")
RegisterUnitEvent(26920, 2, "OverseerDurval_OnLeaveCombat")
RegisterUnitEvent(26920, 3, "OverseerDurval_OnKilledTarget")
RegisterUnitEvent(26920, 4, "OverseerDurval_OnDied")


--[[ Grizzly Hills -- Overseer Korgan.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function OverseerKorgan_OnCombat(Unit, Event)
Unit:RegisterEvent("OverseerKorgan_CallLightning", 6000, 0)
Unit:RegisterEvent("OverseerKorgan_RevitalizingRune", 10000, 0)
end

function OverseerKorgan_CallLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32018, pUnit:GetMainTank()) 
end

function OverseerKorgan_RevitalizingRune(pUnit, Event) 
pUnit:CastSpell(52714) 
end

function OverseerKorgan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OverseerKorgan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OverseerKorgan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26921, 1, "OverseerKorgan_OnCombat")
RegisterUnitEvent(26921, 2, "OverseerKorgan_OnLeaveCombat")
RegisterUnitEvent(26921, 3, "OverseerKorgan_OnKilledTarget")
RegisterUnitEvent(26921, 4, "OverseerKorgan_OnDied")


--[[ Grizzly Hills -- Overseer Lochli.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function OverseerLochli_OnCombat(Unit, Event)
Unit:RegisterEvent("OverseerLochli_Thunderstorm", 11000, 0)
end

function OverseerLochli_Thunderstorm(pUnit, Event) 
pUnit:CastSpell(52717) 
end

function OverseerLochli_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OverseerLochli_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OverseerLochli_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26922, 1, "OverseerLochli_OnCombat")
RegisterUnitEvent(26922, 2, "OverseerLochli_OnLeaveCombat")
RegisterUnitEvent(26922, 3, "OverseerLochli_OnKilledTarget")
RegisterUnitEvent(26922, 4, "OverseerLochli_OnDied")


--[[ Grizzly Hills -- Redfang Elder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RedfangElder_OnCombat(Unit, Event)
Unit:RegisterEvent("RedfangElder_ChainHeal", 12000, 0)
Unit:RegisterEvent("RedfangElder_Hurricane", 10000, 0)
end

function RedfangElder_ChainHeal(pUnit, Event) 
pUnit:CastSpell(14900) 
end

function RedfangElder_Hurricane(pUnit, Event) 
pUnit:CastSpell(32717) 
end

function RedfangElder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RedfangElder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RedfangElder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26436, 1, "RedfangElder_OnCombat")
RegisterUnitEvent(26436, 2, "RedfangElder_OnLeaveCombat")
RegisterUnitEvent(26436, 3, "RedfangElder_OnKilledTarget")
RegisterUnitEvent(26436, 4, "RedfangElder_OnDied")


--[[ Grizzly Hills -- Redfang Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RedfangHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("RedfangHunter_CarnivorousBite", 10000, 0)
Unit:RegisterEvent("RedfangHunter_Net", 11000, 0)
Unit:RegisterEvent("RedfangHunter_Shoot", 6000, 0)
end

function RedfangHunter_CarnivorousBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30639, pUnit:GetMainTank()) 
end

function RedfangHunter_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function RedfangHunter_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function RedfangHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RedfangHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RedfangHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26356, 1, "RedfangHunter_OnCombat")
RegisterUnitEvent(26356, 2, "RedfangHunter_OnLeaveCombat")
RegisterUnitEvent(26356, 3, "RedfangHunter_OnKilledTarget")
RegisterUnitEvent(26356, 4, "RedfangHunter_OnDied")


--[[ Grizzly Hills -- Rune Reaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RuneReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("RuneReaver_RuneofRetribution", 3000, 1)
end

function RuneReaver_RuneofRetribution(pUnit, Event) 
pUnit:CastSpell(52628) 
end

function RuneReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RuneReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RuneReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26268, 1, "RuneReaver_OnCombat")
RegisterUnitEvent(26268, 2, "RuneReaver_OnLeaveCombat")
RegisterUnitEvent(26268, 3, "RuneReaver_OnKilledTarget")
RegisterUnitEvent(26268, 4, "RuneReaver_OnDied")


--[[ Grizzly Hills -- Rune Smith Durar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RuneSmithDurar_OnCombat(Unit, Event)
Unit:RegisterEvent("RuneSmithDurar_LightningCharged", 4000, 1)
end

function RuneSmithDurar_LightningCharged(pUnit, Event) 
pUnit:CastSpell(52701) 
end

function RuneSmithDurar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RuneSmithDurar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RuneSmithDurar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26409, 1, "RuneSmithDurar_OnCombat")
RegisterUnitEvent(26409, 2, "RuneSmithDurar_OnLeaveCombat")
RegisterUnitEvent(26409, 3, "RuneSmithDurar_OnKilledTarget")
RegisterUnitEvent(26409, 4, "RuneSmithDurar_OnDied")


--[[ Grizzly Hills -- Rune Smith Kathorn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RuneSmithKathorn_OnCombat(Unit, Event)
Unit:RegisterEvent("RuneSmithKathorn_LightningCharged", 4000, 1)
end

function RuneSmithKathorn_LightningCharged(pUnit, Event) 
pUnit:CastSpell(52701) 
end

function RuneSmithKathorn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RuneSmithKathorn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RuneSmithKathorn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26410, 1, "RuneSmithKathorn_OnCombat")
RegisterUnitEvent(26410, 2, "RuneSmithKathorn_OnLeaveCombat")
RegisterUnitEvent(26410, 3, "RuneSmithKathorn_OnKilledTarget")
RegisterUnitEvent(26410, 4, "RuneSmithKathorn_OnDied")


--[[ Grizzly Hills -- Runed Giant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RunedGiant_OnCombat(Unit, Event)
Unit:RegisterEvent("RunedGiant_RuneFist", 3000, 1)
Unit:RegisterEvent("RunedGiant_Stomp", 11000, 0)
end

function RunedGiant_RuneFist(pUnit, Event) 
pUnit:CastSpell(49717) 
end

function RunedGiant_Stomp(pUnit, Event) 
pUnit:CastSpell(55196) 
end

function RunedGiant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RunedGiant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RunedGiant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26417, 1, "RunedGiant_OnCombat")
RegisterUnitEvent(26417, 2, "RunedGiant_OnLeaveCombat")
RegisterUnitEvent(26417, 3, "RunedGiant_OnKilledTarget")
RegisterUnitEvent(26417, 4, "RunedGiant_OnDied")


--[[ Grizzly Hills -- Runic Battle Golem.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RunicBattleGolem_OnCombat(Unit, Event)
Unit:RegisterEvent("RunicBattleGolem_BattleRunes", 7000, 0)
end

function RunicBattleGolem_BattleRunes(pUnit, Event) 
pUnit:CastSpell(52630) 
end

function RunicBattleGolem_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RunicBattleGolem_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RunicBattleGolem_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26284, 1, "RunicBattleGolem_OnCombat")
RegisterUnitEvent(26284, 2, "RunicBattleGolem_OnLeaveCombat")
RegisterUnitEvent(26284, 3, "RunicBattleGolem_OnKilledTarget")
RegisterUnitEvent(26284, 4, "RunicBattleGolem_OnDied")


--[[ Grizzly Hills -- Runic Lightning Gunner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RunicLightningGunner_OnCombat(Unit, Event)
Unit:RegisterEvent("RunicLightningGunner_LightningGunShot", 6000, 0)
end

function RunicLightningGunner_LightningGunShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(46982, pUnit:GetMainTank()) 
end

function RunicLightningGunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RunicLightningGunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RunicLightningGunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26414, 1, "RunicLightningGunner_OnCombat")
RegisterUnitEvent(26414, 2, "RunicLightningGunner_OnLeaveCombat")
RegisterUnitEvent(26414, 3, "RunicLightningGunner_OnKilledTarget")
RegisterUnitEvent(26414, 4, "RunicLightningGunner_OnDied")


--[[ Grizzly Hills -- Runic War Golem.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RunicWarGolem_OnCombat(Unit, Event)
Unit:RegisterEvent("RunicWarGolem_RunePunch", 10000, 0)
end

function RunicWarGolem_RunePunch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52702, pUnit:GetMainTank()) 
end

function RunicWarGolem_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RunicWarGolem_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RunicWarGolem_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26347, 1, "RunicWarGolem_OnCombat")
RegisterUnitEvent(26347, 2, "RunicWarGolem_OnLeaveCombat")
RegisterUnitEvent(26347, 3, "RunicWarGolem_OnKilledTarget")
RegisterUnitEvent(26347, 4, "RunicWarGolem_OnDied")


--[[ Grizzly Hills -- Rustblood.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Rustblood_OnCombat(Unit, Event)
Unit:RegisterEvent("Rustblood_Cleave", 8000, 0)
Unit:RegisterEvent("Rustblood_HeadSmash", 10000, 0)
Unit:RegisterEvent("Rustblood_Knockback", 11000, 0)
Unit:RegisterEvent("Rustblood_LightningBolt", 6000, 0)
end

function Rustblood_Cleave(pUnit, Event) 
pUnit:CastSpell(42746) 
end

function Rustblood_HeadSmash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14102, pUnit:GetMainTank()) 
end

function Rustblood_Knockback(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49398, pUnit:GetMainTank()) 
end

function Rustblood_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49454, pUnit:GetMainTank()) 
end

function Rustblood_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rustblood_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rustblood_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27717, 1, "Rustblood_OnCombat")
RegisterUnitEvent(27717, 2, "Rustblood_OnLeaveCombat")
RegisterUnitEvent(27717, 3, "Rustblood_OnKilledTarget")
RegisterUnitEvent(27717, 4, "Rustblood_OnDied")


--[[ Grizzly Hills -- Saronite Horror.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SaroniteHorror_OnCombat(Unit, Event)
Unit:RegisterEvent("SaroniteHorror_SeethingEvil", 3000, 1)
end

function SaroniteHorror_SeethingEvil(pUnit, Event) 
pUnit:CastSpell(52342) 
end

function SaroniteHorror_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaroniteHorror_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaroniteHorror_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26646, 1, "SaroniteHorror_OnCombat")
RegisterUnitEvent(26646, 2, "SaroniteHorror_OnLeaveCombat")
RegisterUnitEvent(26646, 3, "SaroniteHorror_OnKilledTarget")
RegisterUnitEvent(26646, 4, "SaroniteHorror_OnDied")


--[[ Grizzly Hills -- Scourge Deathspeaker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ScourgeDeathspeaker_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgeDeathspeaker_Fireball", 6000, 0)
Unit:RegisterEvent("ScourgeDeathspeaker_FlameoftheSeer", 3000, 1)
end

function ScourgeDeathspeaker_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52282, pUnit:GetMainTank()) 
end

function ScourgeDeathspeaker_FlameoftheSeer(pUnit, Event) 
pUnit:CastSpell(52281) 
end

function ScourgeDeathspeaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgeDeathspeaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgeDeathspeaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27615, 1, "ScourgeDeathspeaker_OnCombat")
RegisterUnitEvent(27615, 2, "ScourgeDeathspeaker_OnLeaveCombat")
RegisterUnitEvent(27615, 3, "ScourgeDeathspeaker_OnKilledTarget")
RegisterUnitEvent(27615, 4, "ScourgeDeathspeaker_OnDied")


--[[ Grizzly Hills -- Scout Captain Carter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ScoutCaptainCarter_OnCombat(Unit, Event)
Unit:RegisterEvent("ScoutCaptainCarter_DebilitatingStrike", 7000, 0)
end

function ScoutCaptainCarter_DebilitatingStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38621, pUnit:GetMainTank()) 
end

function ScoutCaptainCarter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScoutCaptainCarter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScoutCaptainCarter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27783, 1, "ScoutCaptainCarter_OnCombat")
RegisterUnitEvent(27783, 2, "ScoutCaptainCarter_OnLeaveCombat")
RegisterUnitEvent(27783, 3, "ScoutCaptainCarter_OnKilledTarget")
RegisterUnitEvent(27783, 4, "ScoutCaptainCarter_OnDied")


--[[ Grizzly Hills -- Seething Hate.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SeethingHate_OnCombat(Unit, Event)
Unit:RegisterEvent("SeethingHate_SeethingEvil", 3000, 1)
end

function SeethingHate_SeethingEvil(pUnit, Event) 
pUnit:CastSpell(52342) 
end

function SeethingHate_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeethingHate_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeethingHate_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32429, 1, "SeethingHate_OnCombat")
RegisterUnitEvent(32429, 2, "SeethingHate_OnLeaveCombat")
RegisterUnitEvent(32429, 3, "SeethingHate_OnKilledTarget")
RegisterUnitEvent(32429, 4, "SeethingHate_OnDied")


--[[ Grizzly Hills -- Selas.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Selas_OnCombat(Unit, Event)
Unit:RegisterEvent("Selas_AxeVolley", 6000, 0)
Unit:RegisterEvent("Selas_KillingRage", 5000, 0)
end

function Selas_AxeVolley(pUnit, Event) 
pUnit:CastSpell(53239) 
end

function Selas_KillingRage(pUnit, Event) 
pUnit:CastSpell(52071) 
end

function Selas_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Selas_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Selas_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27580, 1, "Selas_OnCombat")
RegisterUnitEvent(27580, 2, "Selas_OnLeaveCombat")
RegisterUnitEvent(27580, 3, "Selas_OnKilledTarget")
RegisterUnitEvent(27580, 4, "Selas_OnDied")


--[[ Grizzly Hills -- Sergeant Bonesnap.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SergeantBonesnap_OnCombat(Unit, Event)
Unit:RegisterEvent("SergeantBonesnap_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("SergeantBonesnap_HeroicStrike", 5000, 0)
Unit:RegisterEvent("SergeantBonesnap_Intercept", 9000, 0)
end

function SergeantBonesnap_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function SergeantBonesnap_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function SergeantBonesnap_Intercept(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27577, pUnit:GetMainTank()) 
end

function SergeantBonesnap_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SergeantBonesnap_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SergeantBonesnap_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27493, 1, "SergeantBonesnap_OnCombat")
RegisterUnitEvent(27493, 2, "SergeantBonesnap_OnLeaveCombat")
RegisterUnitEvent(27493, 3, "SergeantBonesnap_OnKilledTarget")
RegisterUnitEvent(27493, 4, "SergeantBonesnap_OnDied")


--[[ Grizzly Hills -- Serpent Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SerpentDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("SerpentDefender_TailLash", 8000, 0)
end

function SerpentDefender_TailLash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34811, pUnit:GetMainTank()) 
end

function SerpentDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SerpentDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SerpentDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(29693, 1, "SerpentDefender_OnCombat")
RegisterUnitEvent(29693, 2, "SerpentDefender_OnLeaveCombat")
RegisterUnitEvent(29693, 3, "SerpentDefender_OnKilledTarget")
RegisterUnitEvent(29693, 4, "SerpentDefender_OnDied")


--[[ Grizzly Hills -- Shade of Arugal.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ShadeofArugal_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadeofArugal_PhaseOut", 45000, 0)
Unit:RegisterEvent("ShadeofArugal_ShadowBolt", 8000, 0)
Unit:RegisterEvent("ShadeofArugal_WorgensCommand", 15000, 1)
end

function ShadeofArugal_PhaseOut(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53052, pUnit:GetMainTank()) 
end

function ShadeofArugal_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53086, pUnit:GetMainTank()) 
end

function ShadeofArugal_WorgensCommand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53070, pUnit:GetMainTank()) 
end

function ShadeofArugal_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadeofArugal_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadeofArugal_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27018, 1, "ShadeofArugal_OnCombat")
RegisterUnitEvent(27018, 2, "ShadeofArugal_OnLeaveCombat")
RegisterUnitEvent(27018, 3, "ShadeofArugal_OnKilledTarget")
RegisterUnitEvent(27018, 4, "ShadeofArugal_OnDied")


--[[ Grizzly Hills -- Silverbrook Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SilverbrookDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverbrookDefender_LumberjackSlam", 8000, 0)
Unit:RegisterEvent("SilverbrookDefender_Rend", 10000, 0)
end

function SilverbrookDefender_LumberjackSlam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52318, pUnit:GetMainTank()) 
end

function SilverbrookDefender_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12054, pUnit:GetMainTank()) 
end

function SilverbrookDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverbrookDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverbrookDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27676, 1, "SilverbrookDefender_OnCombat")
RegisterUnitEvent(27676, 2, "SilverbrookDefender_OnLeaveCombat")
RegisterUnitEvent(27676, 3, "SilverbrookDefender_OnKilledTarget")
RegisterUnitEvent(27676, 4, "SilverbrookDefender_OnDied")


--[[ Grizzly Hills -- Silverbrook Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SilverbrookHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverbrookHunter_ImprovedWingClip", 14000, 0)
Unit:RegisterEvent("SilverbrookHunter_Shoot", 6000, 0)
end

function SilverbrookHunter_ImprovedWingClip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47168, pUnit:GetMainTank()) 
end

function SilverbrookHunter_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverbrookHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverbrookHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverbrookHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27546, 1, "SilverbrookHunter_OnCombat")
RegisterUnitEvent(27546, 2, "SilverbrookHunter_OnLeaveCombat")
RegisterUnitEvent(27546, 3, "SilverbrookHunter_OnKilledTarget")
RegisterUnitEvent(27546, 4, "SilverbrookHunter_OnDied")


--[[ Grizzly Hills -- Silverbrook Trapper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SilverbrookTrapper_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverbrookTrapper_HookedNet", 12000, 0)
Unit:RegisterEvent("SilverbrookTrapper_Shoot", 6000, 0)
end

function SilverbrookTrapper_HookedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13608, pUnit:GetMainTank()) 
end

function SilverbrookTrapper_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverbrookTrapper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverbrookTrapper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverbrookTrapper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26679, 1, "SilverbrookTrapper_OnCombat")
RegisterUnitEvent(26679, 2, "SilverbrookTrapper_OnLeaveCombat")
RegisterUnitEvent(26679, 3, "SilverbrookTrapper_OnKilledTarget")
RegisterUnitEvent(26679, 4, "SilverbrookTrapper_OnDied")


--[[ Grizzly Hills -- Silverbrook Villager.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SilverbrookVillager_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverbrookVillager_Chop", 5000, 0)
end

function SilverbrookVillager_Chop(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43410, pUnit:GetMainTank()) 
end

function SilverbrookVillager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverbrookVillager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverbrookVillager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26708, 1, "SilverbrookVillager_OnCombat")
RegisterUnitEvent(26708, 2, "SilverbrookVillager_OnLeaveCombat")
RegisterUnitEvent(26708, 3, "SilverbrookVillager_OnKilledTarget")
RegisterUnitEvent(26708, 4, "SilverbrookVillager_OnDied")


--[[ Grizzly Hills -- Silverbrook Worgen.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SilverbrookWorgen_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverbrookWorgen_Dash", 10000, 0)
end

function SilverbrookWorgen_Dash(pUnit, Event) 
pUnit:CastSpell(36589) 
end

function SilverbrookWorgen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverbrookWorgen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverbrookWorgen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(47417, 1, "SilverbrookWorgen_OnCombat")
RegisterUnitEvent(47417, 2, "SilverbrookWorgen_OnLeaveCombat")
RegisterUnitEvent(47417, 3, "SilverbrookWorgen_OnKilledTarget")
RegisterUnitEvent(47417, 4, "SilverbrookWorgen_OnDied")


--[[ Grizzly Hills -- Westfall Brigade Marine.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function WestfallBrigadeMarine_OnCombat(Unit, Event)
Unit:RegisterEvent("WestfallBrigadeMarine_ConcussionBlow", 9000, 0)
Unit:RegisterEvent("WestfallBrigadeMarine_SunderArmor", 5000, 0)
end

function WestfallBrigadeMarine_ConcussionBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52719, pUnit:GetMainTank()) 
end

function WestfallBrigadeMarine_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50307, pUnit:GetMainTank()) 
end

function WestfallBrigadeMarine_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WestfallBrigadeMarine_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WestfallBrigadeMarine_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27501, 1, "WestfallBrigadeMarine_OnCombat")
RegisterUnitEvent(27501, 2, "WestfallBrigadeMarine_OnLeaveCombat")
RegisterUnitEvent(27501, 3, "WestfallBrigadeMarine_OnKilledTarget")
RegisterUnitEvent(27501, 4, "WestfallBrigadeMarine_OnDied")


--[[ Grizzly Hills -- Solstice Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SolsticeHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("SolsticeHunter_ImmolationTrap", 2000, 1)
Unit:RegisterEvent("SolsticeHunter_MultiShot", 10000, 0)
Unit:RegisterEvent("SolsticeHunter_ScorpidSting", 9000, 0)
Unit:RegisterEvent("SolsticeHunter_SerpentSting", 11000, 0)
Unit:RegisterEvent("SolsticeHunter_Shoot", 6000, 0)
end

function SolsticeHunter_ImmolationTrap(pUnit, Event) 
pUnit:CastSpell(52606) 
end

function SolsticeHunter_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14443, pUnit:GetMainTank()) 
end

function SolsticeHunter_ScorpidSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52604, pUnit:GetMainTank()) 
end

function SolsticeHunter_SerpentSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31975, pUnit:GetMainTank()) 
end

function SolsticeHunter_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SolsticeHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SolsticeHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SolsticeHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26389, 1, "SolsticeHunter_OnCombat")
RegisterUnitEvent(26389, 2, "SolsticeHunter_OnLeaveCombat")
RegisterUnitEvent(26389, 3, "SolsticeHunter_OnKilledTarget")
RegisterUnitEvent(26389, 4, "SolsticeHunter_OnDied")


--[[ Grizzly Hills -- Syreian the Bonecarver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function SyreiantheBonecarver_OnCombat(Unit, Event)
Unit:RegisterEvent("SyreiantheBonecarver_FrostArrow", 7000, 0)
Unit:RegisterEvent("SyreiantheBonecarver_ImprovedWingClip", 13000, 0)
Unit:RegisterEvent("SyreiantheBonecarver_Shoot", 6000, 0)
end

function SyreiantheBonecarver_FrostArrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38952, pUnit:GetMainTank()) 
end

function SyreiantheBonecarver_ImprovedWingClip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47168, pUnit:GetMainTank()) 
end

function SyreiantheBonecarver_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50092, pUnit:GetMainTank()) 
end

function SyreiantheBonecarver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SyreiantheBonecarver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SyreiantheBonecarver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32438, 1, "SyreiantheBonecarver_OnCombat")
RegisterUnitEvent(32438, 2, "SyreiantheBonecarver_OnLeaveCombat")
RegisterUnitEvent(32438, 3, "SyreiantheBonecarver_OnKilledTarget")
RegisterUnitEvent(32438, 4, "SyreiantheBonecarver_OnDied")


--[[ Grizzly Hills -- Tallhorn Stag.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function TallhornStag_OnCombat(Unit, Event)
Unit:RegisterEvent("TallhornStag_Gore", 10000, 0)
end

function TallhornStag_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function TallhornStag_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TallhornStag_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TallhornStag_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26363, 1, "TallhornStag_OnCombat")
RegisterUnitEvent(26363, 2, "TallhornStag_OnLeaveCombat")
RegisterUnitEvent(26363, 3, "TallhornStag_OnKilledTarget")
RegisterUnitEvent(26363, 4, "TallhornStag_OnDied")


--[[ Grizzly Hills -- Tatjana.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function Tatjana_OnCombat(Unit, Event)
Unit:RegisterEvent("Tatjana_Cutdown", 8000, 0)
end

function Tatjana_Cutdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32009, pUnit:GetMainTank()) 
end

function Tatjana_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tatjana_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tatjana_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27627, 1, "Tatjana_OnCombat")
RegisterUnitEvent(27627, 2, "Tatjana_OnLeaveCombat")
RegisterUnitEvent(27627, 3, "Tatjana_OnKilledTarget")
RegisterUnitEvent(27627, 4, "Tatjana_OnDied")


--[[ Grizzly Hills -- Tecahuna.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function Tecahuna_OnCombat(Unit, Event)
Unit:RegisterEvent("Tecahuna_TecahunaVenomSpit", 9000, 0)
end

function Tecahuna_TecahunaVenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47629, pUnit:GetMainTank()) 
end

function Tecahuna_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tecahuna_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tecahuna_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26865, 1, "Tecahuna_OnCombat")
RegisterUnitEvent(26865, 2, "Tecahuna_OnLeaveCombat")
RegisterUnitEvent(26865, 3, "Tecahuna_OnKilledTarget")
RegisterUnitEvent(26865, 4, "Tecahuna_OnDied")


--[[ Grizzly Hills -- Thane Torvald Eriksson.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function ThaneTorvaldEriksson_OnCombat(Unit, Event)
Unit:RegisterEvent("ThaneTorvaldEriksson_ArcaneShot", 7000, 0)
Unit:RegisterEvent("ThaneTorvaldEriksson_MultiShot", 10000, 0)
Unit:RegisterEvent("ThaneTorvaldEriksson_Shoot", 6000, 0)
Unit:RegisterEvent("ThaneTorvaldEriksson_TorvaldsDeterrence", 11000, 0)
Unit:RegisterEvent("ThaneTorvaldEriksson_Volley", 13000, 0)
end

function ThaneTorvaldEriksson_ArcaneShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34829, pUnit:GetMainTank()) 
end

function ThaneTorvaldEriksson_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52813, pUnit:GetMainTank()) 
end

function ThaneTorvaldEriksson_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50512, pUnit:GetMainTank()) 
end

function ThaneTorvaldEriksson_TorvaldsDeterrence(pUnit, Event) 
pUnit:CastSpell(57057) 
end

function ThaneTorvaldEriksson_Volley(pUnit, Event) 
pUnit:CastSpell(56843) 
end

function ThaneTorvaldEriksson_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThaneTorvaldEriksson_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThaneTorvaldEriksson_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27377, 1, "ThaneTorvaldEriksson_OnCombat")
RegisterUnitEvent(27377, 2, "ThaneTorvaldEriksson_OnLeaveCombat")
RegisterUnitEvent(27377, 3, "ThaneTorvaldEriksson_OnKilledTarget")
RegisterUnitEvent(27377, 4, "ThaneTorvaldEriksson_OnDied")


--[[ Grizzly Hills -- The Anvil.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function TheAnvi_OnCombat(Unit, Event)
Unit:RegisterEvent("TheAnvi_MoltenBlast", 8000, 0)
end

function TheAnvi_MoltenBlast(pUnit, Event) 
pUnit:CastSpell(61577) 
end

function TheAnvi_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheAnvi_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheAnvi_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26406, 1, "TheAnvi_OnCombat")
RegisterUnitEvent(26406, 2, "TheAnvi_OnLeaveCombat")
RegisterUnitEvent(26406, 3, "TheAnvi_OnKilledTarget")
RegisterUnitEvent(26406, 4, "TheAnvi_OnDied")


--[[ Grizzly Hills -- Torgg Thundertotem.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function TorggThundertotem_OnCombat(Unit, Event)
Unit:RegisterEvent("TorggThundertotem_ChainLightning", 9000, 0)
Unit:RegisterEvent("TorggThundertotem_CorruptedNovaTotem", 2000, 1)
Unit:RegisterEvent("TorggThundertotem_EarthShock", 6000, 0)
Unit:RegisterEvent("TorggThundertotem_HealingWave", 13000, 0)
end

function TorggThundertotem_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16033, pUnit:GetMainTank()) 
end

function TorggThundertotem_CorruptedNovaTotem(pUnit, Event) 
pUnit:CastSpell(31991) 
end

function TorggThundertotem_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15501, pUnit:GetMainTank()) 
end

function TorggThundertotem_HealingWave(pUnit, Event) 
pUnit:CastSpell(15982) 
end

function TorggThundertotem_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TorggThundertotem_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TorggThundertotem_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27716, 1, "TorggThundertotem_OnCombat")
RegisterUnitEvent(27716, 2, "TorggThundertotem_OnLeaveCombat")
RegisterUnitEvent(27716, 3, "TorggThundertotem_OnKilledTarget")
RegisterUnitEvent(27716, 4, "TorggThundertotem_OnDied")


--[[ Grizzly Hills -- Undead Miner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function UndeadMiner_OnCombat(Unit, Event)
Unit:RegisterEvent("UndeadMiner_PunctureWound", 7000, 0)
Unit:RegisterEvent("UndeadMiner_ThrowLantern", 9000, 1)
end

function UndeadMiner_PunctureWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48374, pUnit:GetMainTank()) 
end

function UndeadMiner_ThrowLantern(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52608, pUnit:GetMainTank()) 
end

function UndeadMiner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UndeadMiner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UndeadMiner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26891, 1, "UndeadMiner_OnCombat")
RegisterUnitEvent(26891, 2, "UndeadMiner_OnLeaveCombat")
RegisterUnitEvent(26891, 3, "UndeadMiner_OnKilledTarget")
RegisterUnitEvent(26891, 4, "UndeadMiner_OnDied")


--[[ Grizzly Hills -- Ursoc.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function Ursoc_OnCombat(Unit, Event)
Unit:RegisterEvent("Ursoc_CrunchArmor", 6000, 0)
Unit:RegisterEvent("Ursoc_OldGodsInfluence", 10000, 1)
Unit:RegisterEvent("Ursoc_Summon BloodoftheOldGod", 5000, 1)
end

function Ursoc_CrunchArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52581, pUnit:GetMainTank()) 
end

function Ursoc_OldGodsInfluence(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52583, pUnit:GetMainTank()) 
end

function Ursoc_SummonBloodoftheOldGod(pUnit, Event) 
pUnit:CastSpell(52560) 
end

function Ursoc_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Ursoc_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Ursoc_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26633, 1, "Ursoc_OnCombat")
RegisterUnitEvent(26633, 2, "Ursoc_OnLeaveCombat")
RegisterUnitEvent(26633, 3, "Ursoc_OnKilledTarget")
RegisterUnitEvent(26633, 4, "Ursoc_OnDied")


--[[ Grizzly Hills -- Ursus Mauler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function UrsusMauler_OnCombat(Unit, Event)
Unit:RegisterEvent("UrsusMauler_Maul", 5000, 0)
end

function UrsusMauler_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12161, pUnit:GetMainTank()) 
end

function UrsusMauler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UrsusMauler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UrsusMauler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26644, 1, "UrsusMauler_OnCombat")
RegisterUnitEvent(26644, 2, "UrsusMauler_OnLeaveCombat")
RegisterUnitEvent(26644, 3, "UrsusMauler_OnKilledTarget")
RegisterUnitEvent(26644, 4, "UrsusMauler_OnDied")


--[[ Grizzly Hills -- Varlam.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function Varlam_OnCombat(Unit, Event)
Unit:RegisterEvent("Varlam_Cleave", 9000, 0)
Unit:RegisterEvent("Varlam_MortalStrike", 7000, 0)
end

function Varlam_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function Varlam_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function Varlam_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Varlam_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Varlam_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27579, 1, "Varlam_OnCombat")
RegisterUnitEvent(27579, 2, "Varlam_OnLeaveCombat")
RegisterUnitEvent(27579, 3, "Varlam_OnKilledTarget")
RegisterUnitEvent(27579, 4, "Varlam_OnDied")


--[[ Grizzly Hills -- Venture Co Evacuee.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function VentureCoEvacuee_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoEvacuee_QuickFeet", 5000, 0)
end

function VentureCoEvacuee_QuickFeet(pUnit, Event) 
pUnit:CastSpell(50054) 
end

function VentureCoEvacuee_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoEvacuee_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoEvacuee_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27830, 1, "VentureCoEvacuee_OnCombat")
RegisterUnitEvent(27830, 2, "VentureCoEvacuee_OnLeaveCombat")
RegisterUnitEvent(27830, 3, "VentureCoEvacuee_OnKilledTarget")
RegisterUnitEvent(27830, 4, "VentureCoEvacuee_OnDied")


--[[ Grizzly Hills -- Venture Co Straggler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function VentureCoStraggler_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoStraggler_Chop", 5000, 0)
end

function VentureCoStraggler_Chop(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43410, pUnit:GetMainTank()) 
end

function VentureCoStraggler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoStraggler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoStraggler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27570, 1, "VentureCoStraggler_OnCombat")
RegisterUnitEvent(27570, 2, "VentureCoStraggler_OnLeaveCombat")
RegisterUnitEvent(27570, 3, "VentureCoStraggler_OnKilledTarget")
RegisterUnitEvent(27570, 4, "VentureCoStraggler_OnDied")


--[[ Grizzly Hills -- Vladek.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function Vladek_OnCombat(Unit, Event)
Unit:RegisterEvent("Vladek_Enrage", 10000, 0)
end

function Vladek_Enrage(pUnit, Event) 
pUnit:CastSpell(32714) 
end

function Vladek_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Vladek_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Vladek_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27547, 1, "Vladek_OnCombat")
RegisterUnitEvent(27547, 2, "Vladek_OnLeaveCombat")
RegisterUnitEvent(27547, 3, "Vladek_OnKilledTarget")
RegisterUnitEvent(27547, 4, "Vladek_OnDied")


--[[ Grizzly Hills -- Warlord Zimbo.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function WarlordZimbo_OnCombat(Unit, Event)
Unit:RegisterEvent("WarlordZimbo_SkullCrack", 8000, 0)
Unit:RegisterEvent("WarlordZimbo_WarlordRoar", 2000, 1)
end

function WarlordZimbo_SkullCrack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3551, pUnit:GetMainTank()) 
end

function WarlordZimbo_WarlordRoar(pUnit, Event) 
pUnit:CastSpell(52283) 
end

function WarlordZimbo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarlordZimbo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarlordZimbo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26544, 1, "WarlordZimbo_OnCombat")
RegisterUnitEvent(26544, 2, "WarlordZimbo_OnLeaveCombat")
RegisterUnitEvent(26544, 3, "WarlordZimbo_OnKilledTarget")
RegisterUnitEvent(26544, 4, "WarlordZimbo_OnDied")


--[[ Grizzly Hills -- Westfall Brigade Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function WestfallBrigadeDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("WestfallBrigadeDefender_Strike", 6000, 0)
end

function WestfallBrigadeDefender_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14516, pUnit:GetMainTank()) 
end

function WestfallBrigadeDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WestfallBrigadeDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WestfallBrigadeDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27758, 1, "WestfallBrigadeDefender_OnCombat")
RegisterUnitEvent(27758, 2, "WestfallBrigadeDefender_OnLeaveCombat")
RegisterUnitEvent(27758, 3, "WestfallBrigadeDefender_OnKilledTarget")
RegisterUnitEvent(27758, 4, "WestfallBrigadeDefender_OnDied")


--[[ Grizzly Hills -- Westfall Brigade Elite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function WestfallBrigadeElite_OnCombat(Unit, Event)
Unit:RegisterEvent("WestfallBrigadeElite_Hamstring", 10000, 0)
Unit:RegisterEvent("WestfallBrigadeElite_Strike", 8000, 0)
end

function WestfallBrigadeElite_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function WestfallBrigadeElite_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function WestfallBrigadeElite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WestfallBrigadeElite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WestfallBrigadeElite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27549, 1, "WestfallBrigadeElite_OnCombat")
RegisterUnitEvent(27549, 2, "WestfallBrigadeElite_OnLeaveCombat")
RegisterUnitEvent(27549, 3, "WestfallBrigadeElite_OnKilledTarget")
RegisterUnitEvent(27549, 4, "WestfallBrigadeElite_OnDied")


--[[ Grizzly Hills -- Westfall Brigade Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function WestfallBrigadeHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("WestfallBrigadeHunter_AimedShot", 7000, 0)
end

function WestfallBrigadeHunter_AimedShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38861, pUnit:GetMainTank()) 
end

function WestfallBrigadeHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WestfallBrigadeHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WestfallBrigadeHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27462, 1, "WestfallBrigadeHunter_OnCombat")
RegisterUnitEvent(27462, 2, "WestfallBrigadeHunter_OnLeaveCombat")
RegisterUnitEvent(27462, 3, "WestfallBrigadeHunter_OnKilledTarget")
RegisterUnitEvent(27462, 4, "WestfallBrigadeHunter_OnDied")


--[[ Grizzly Hills -- Wounded Skirmisher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function WoundedSkirmisher_OnCombat(Unit, Event)
Unit:RegisterEvent("WoundedSkirmisher_Cleave", 9000, 0)
Unit:RegisterEvent("WoundedSkirmisher_Hamstring", 10000, 0)
Unit:RegisterEvent("WoundedSkirmisher_MortalStrike", 7000, 0)
end

function WoundedSkirmisher_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function WoundedSkirmisher_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function WoundedSkirmisher_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function WoundedSkirmisher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WoundedSkirmisher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WoundedSkirmisher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27463, 1, "WoundedSkirmisher_OnCombat")
RegisterUnitEvent(27463, 2, "WoundedSkirmisher_OnLeaveCombat")
RegisterUnitEvent(27463, 3, "WoundedSkirmisher_OnKilledTarget")
RegisterUnitEvent(27463, 4, "WoundedSkirmisher_OnDied")


--[[ Grizzly Hills -- Wounded Westfall Infantry.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function WoundedWestfallInfantry_OnCombat(Unit, Event)
Unit:RegisterEvent("WoundedWestfallInfantry_HolyShock", 6000, 0)
Unit:RegisterEvent("WoundedWestfallInfantry_SealofCommand", 4000, 1)
end

function WoundedWestfallInfantry_HolyShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32771, pUnit:GetMainTank()) 
end

function WoundedWestfallInfantry_SealofCommand(pUnit, Event) 
pUnit:CastSpell(29385) 
end

function WoundedWestfallInfantry_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WoundedWestfallInfantry_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WoundedWestfallInfantry_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27482, 1, "WoundedWestfallInfantry_OnCombat")
RegisterUnitEvent(27482, 2, "WoundedWestfallInfantry_OnLeaveCombat")
RegisterUnitEvent(27482, 3, "WoundedWestfallInfantry_OnKilledTarget")
RegisterUnitEvent(27482, 4, "WoundedWestfallInfantry_OnDied")