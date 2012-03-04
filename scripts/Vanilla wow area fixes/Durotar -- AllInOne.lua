--[[ Durotar -- Bloodtalon Scythemaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function BloodtalonScythemaw_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodtalonScythemaw_RushingCharge", 8000, 0)
end

function BloodtalonScythemaw_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function BloodtalonScythemaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodtalonScythemaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodtalonScythemaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3123, 1, "BloodtalonScythemaw_OnCombat")
RegisterUnitEvent(3123, 2, "BloodtalonScythemaw_OnLeaveCombat")
RegisterUnitEvent(3123, 3, "BloodtalonScythemaw_OnKilledTarget")
RegisterUnitEvent(3123, 4, "BloodtalonScythemaw_OnDied")

--[[ Durotar -- Bloodtalon Taillasher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function BloodtalonTaillasher_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodtalonTaillasher_RushingCharge", 8000, 0)
end

function BloodtalonTaillasher_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function BloodtalonTaillasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodtalonTaillasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodtalonTaillasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3122, 1, "BloodtalonTaillasher_OnCombat")
RegisterUnitEvent(3122, 2, "BloodtalonTaillasher_OnLeaveCombat")
RegisterUnitEvent(3122, 3, "BloodtalonTaillasher_OnKilledTarget")
RegisterUnitEvent(3122, 4, "BloodtalonTaillasher_OnDied")

--[[ Durotar -- Burning Blade Apprentice.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function BurningBladeApprentice_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeApprentice_ShadowBolt", 8000, 0)
Unit:RegisterEvent("BurningBladeApprentice_SummonVoidwalker", 1000, 1)
end

function BurningBladeApprentice_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function BurningBladeApprentice_SummonVoidwalker(pUnit, Event) 
pUnit:CastSpell(12746) 
end

function BurningBladeApprentice_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeApprentice_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeApprentice_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3198, 1, "BurningBladeApprentice_OnCombat")
RegisterUnitEvent(3198, 2, "BurningBladeApprentice_OnLeaveCombat")
RegisterUnitEvent(3198, 3, "BurningBladeApprentice_OnKilledTarget")
RegisterUnitEvent(3198, 4, "BurningBladeApprentice_OnDied")

--[[ Durotar -- Burning Blade Cultist.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function BurningBladeCultist_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeCultist_Immolate", 8000, 0)
end

function BurningBladeCultist_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11962, pUnit:GetMainTank()) 
end

function BurningBladeCultist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeCultist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeCultist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3199, 1, "BurningBladeCultist_OnCombat")
RegisterUnitEvent(3199, 2, "BurningBladeCultist_OnLeaveCombat")
RegisterUnitEvent(3199, 3, "BurningBladeCultist_OnKilledTarget")
RegisterUnitEvent(3199, 4, "BurningBladeCultist_OnDied")

--[[ Durotar -- Burning Blade Fanatic.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function BurningBladeFanatic_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeFanatic_FanaticBlade", 8000, 0)
end

function BurningBladeFanatic_FanaticBlade(pUnit, Event) 
pUnit:CastSpell(5262) 
end

function BurningBladeFanatic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeFanatic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeFanatic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3197, 1, "BurningBladeFanatic_OnCombat")
RegisterUnitEvent(3197, 2, "BurningBladeFanatic_OnLeaveCombat")
RegisterUnitEvent(3197, 3, "BurningBladeFanatic_OnKilledTarget")
RegisterUnitEvent(3197, 4, "BurningBladeFanatic_OnDied")

--[[ Durotar -- Burning Blade Neophyte.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function BurningBladeNeophyte_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeNeophyte_Inmolate", 8000, 0)
end

function BurningBladeNeophyte_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(348, pUnit:GetMainTank()) 
end

function BurningBladeNeophyte_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeNeophyte_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeNeophyte_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3196, 1, "BurningBladeNeophyte_OnCombat")
RegisterUnitEvent(3196, 2, "BurningBladeNeophyte_OnLeaveCombat")
RegisterUnitEvent(3196, 3, "BurningBladeNeophyte_OnKilledTarget")
RegisterUnitEvent(3196, 4, "BurningBladeNeophyte_OnDied")

--[[ Durotar -- Captain Flat Tusk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CaptainFlatTusk_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainFlatTusk_HeroicStrike", 5000, 0)
end

function CaptainFlatTusk_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function CaptainFlatTusk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainFlatTusk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainFlatTusk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5824, 1, "CaptainFlatTusk_OnCombat")
RegisterUnitEvent(5824, 2, "CaptainFlatTusk_OnLeaveCombat")
RegisterUnitEvent(5824, 3, "CaptainFlatTusk_OnKilledTarget")
RegisterUnitEvent(5824, 4, "CaptainFlatTusk_OnDied")

--[[ Durotar -- Corrupted Bloodtalon Scythemaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CorruptedBloodtalonScythemaw_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedBloodtalonScythemaw_RushingCharge", 8000, 0)
end

function CorruptedBloodtalonScythemaw_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function CorruptedBloodtalonScythemaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedBloodtalonScythemaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedBloodtalonScythemaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3227, 1, "CorruptedBloodtalonScythemaw_OnCombat")
RegisterUnitEvent(3227, 2, "CorruptedBloodtalonScythemaw_OnLeaveCombat")
RegisterUnitEvent(3227, 3, "CorruptedBloodtalonScythemaw_OnKilledTarget")
RegisterUnitEvent(3227, 4, "CorruptedBloodtalonScythemaw_OnDied")

--[[ Durotar -- Corrupted Dreadmaw Crocolisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CorruptedDreadmawCrocolisk_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedDreadmawCrocolisk_DecayedAgility", 10000, 1)
end

function CorruptedDreadmawCrocolisk_DecayedAgility(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7901, pUnit:GetMainTank()) 
end

function CorruptedDreadmawCrocolisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedDreadmawCrocolisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedDreadmawCrocolisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3231, 1, "CorruptedDreadmawCrocolisk_OnCombat")
RegisterUnitEvent(3231, 2, "CorruptedDreadmawCrocolisk_OnLeaveCombat")
RegisterUnitEvent(3231, 3, "CorruptedDreadmawCrocolisk_OnKilledTarget")
RegisterUnitEvent(3231, 4, "CorruptedDreadmawCrocolisk_OnDied")

--[[ Durotar -- Corrupted Mottled Boar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CorruptedMottledBoar_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedMottledBoar_CorruptedIntellect", 10000, 0)
Unit:RegisterEvent("CorruptedMottledBoar_BoarCharge", 6000, 0)
end

function CorruptedMottledBoar_CorruptedIntellect(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6818, pUnit:GetMainTank()) 
end

function CorruptedMottledBoar_BoarCharge(pUnit, Event) 
pUnit:CastSpell(3385) 
end

function CorruptedMottledBoar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedMottledBoar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedMottledBoar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3225, 1, "CorruptedMottledBoar_OnCombat")
RegisterUnitEvent(3225, 2, "CorruptedMottledBoar_OnLeaveCombat")
RegisterUnitEvent(3225, 3, "CorruptedMottledBoar_OnKilledTarget")
RegisterUnitEvent(3225, 4, "CorruptedMottledBoar_OnDied")

--[[ Durotar -- Corrupted Scorpid.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CorruptedScorpid_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedScorpid_NoxiousCatalyst", 10000, 0)
end

function CorruptedScorpid_NoxiousCatalyst(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5413, pUnit:GetMainTank()) 
end

function CorruptedScorpid_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedScorpid_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedScorpid_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3226, 1, "CorruptedScorpid_OnCombat")
RegisterUnitEvent(3226, 2, "CorruptedScorpid_OnLeaveCombat")
RegisterUnitEvent(3226, 3, "CorruptedScorpid_OnKilledTarget")
RegisterUnitEvent(3226, 4, "CorruptedScorpid_OnDied")

--[[ Durotar -- Corrupted Surf Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CorruptedSurfCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedSurfCrawler_DecayedStrength", 10000, 0)
end

function CorruptedSurfCrawler_DecayedStrength(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6951, pUnit:GetMainTank()) 
end

function CorruptedSurfCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedSurfCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedSurfCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3228, 1, "CorruptedSurfCrawler_OnCombat")
RegisterUnitEvent(3228, 2, "CorruptedSurfCrawler_OnLeaveCombat")
RegisterUnitEvent(3228, 3, "CorruptedSurfCrawler_OnKilledTarget")
RegisterUnitEvent(3228, 4, "CorruptedSurfCrawler_OnDied")

--[[ Durotar -- Death Flayer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DeathFlayer_OnCombat(Unit, Event)
Unit:RegisterEvent("DeathFlayer_VenomSting", 8000, 0)
end

function DeathFlayer_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function DeathFlayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeathFlayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeathFlayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5823, 1, "DeathFlayer_OnCombat")
RegisterUnitEvent(5823, 2, "DeathFlayer_OnLeaveCombat")
RegisterUnitEvent(5823, 3, "DeathFlayer_OnKilledTarget")
RegisterUnitEvent(5823, 4, "DeathFlayer_OnDied")

--[[ Durotar -- Dire Mottled Boar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DireMottledBoar_OnCombat(Unit, Event)
Unit:RegisterEvent("DireMottledBoar_BoarCharge", 6000, 0)
end

function DireMottledBoar_BoarCharge(pUnit, Event) 
pUnit:CastSpell(3385) 
end

function DireMottledBoar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DireMottledBoar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DireMottledBoar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3099, 1, "DireMottledBoar_OnCombat")
RegisterUnitEvent(3099, 2, "DireMottledBoar_OnLeaveCombat")
RegisterUnitEvent(3099, 3, "DireMottledBoar_OnKilledTarget")
RegisterUnitEvent(3099, 4, "DireMottledBoar_OnDied")

--[[ Durotar -- Dustwind Pillager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DustwindPillager_OnCombat(Unit, Event)
Unit:RegisterEvent("DustwindPillager_RendFlesh", 8000, 0)
end

function DustwindPillager_RendFlesh(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3147, pUnit:GetMainTank()) 
end

function DustwindPillager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DustwindPillager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DustwindPillager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3116, 1, "DustwindPillager_OnCombat")
RegisterUnitEvent(3116, 2, "DustwindPillager_OnLeaveCombat")
RegisterUnitEvent(3116, 3, "DustwindPillager_OnKilledTarget")
RegisterUnitEvent(3116, 4, "DustwindPillager_OnDied")

--[[ Durotar -- Dustwind StormWitch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DustwindStormWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("DustwindStormWitch_LightningBolt", 8000, 0)
end

function DustwindStormWitch_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function DustwindStormWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DustwindStormWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DustwindStormWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3118, 1, "DustwindStormWitch_OnCombat")
RegisterUnitEvent(3118, 2, "DustwindStormWitch_OnLeaveCombat")
RegisterUnitEvent(3118, 3, "DustwindStormWitch_OnKilledTarget")
RegisterUnitEvent(3118, 4, "DustwindStormWitch_OnDied")

--[[ Durotar -- Elder Mottled Boar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ElderMottledBoar_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderMottledBoar_BoarCharge", 6000, 0)
end

function ElderMottledBoar_BoarCharge(pUnit, Event) 
pUnit:CastSpell(3385) 
end

function ElderMottledBoar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderMottledBoar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderMottledBoar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3100, 1, "ElderMottledBoar_OnCombat")
RegisterUnitEvent(3100, 2, "ElderMottledBoar_OnLeaveCombat")
RegisterUnitEvent(3100, 3, "ElderMottledBoar_OnKilledTarget")
RegisterUnitEvent(3100, 4, "ElderMottledBoar_OnDied")

--[[ Durotar -- Encrusted Surf Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function EncrustedSurfCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("EncrustedSurfCrawler_QuickSidestep", 8000, 0)
end

function EncrustedSurfCrawler_QuickSidestep(pUnit, Event) 
pUnit:CastSpell(5426) 
end

function EncrustedSurfCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EncrustedSurfCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EncrustedSurfCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3108, 1, "EncrustedSurfCrawler_OnCombat")
RegisterUnitEvent(3108, 2, "EncrustedSurfCrawler_OnLeaveCombat")
RegisterUnitEvent(3108, 3, "EncrustedSurfCrawler_OnKilledTarget")
RegisterUnitEvent(3108, 4, "EncrustedSurfCrawler_OnDied")

--[[ Durotar -- Felweaver Scornn.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function FelweaverScornn_OnCombat(Unit, Event)
Unit:RegisterEvent("FelweaverScornn_ShadowBolt", 8000, 0)
end

function FelweaverScornn_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function FelweaverScornn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelweaverScornn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelweaverScornn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5822, 1, "FelweaverScornn_OnCombat")
RegisterUnitEvent(5822, 2, "FelweaverScornn_OnLeaveCombat")
RegisterUnitEvent(5822, 3, "FelweaverScornn_OnKilledTarget")
RegisterUnitEvent(5822, 4, "FelweaverScornn_OnDied")

--[[ Durotar -- Fizzle Darkstorm.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function FizzleDarkstorm_OnCombat(Unit, Event)
Unit:RegisterEvent("FizzleDarkstorm_SoulSiphon", 13000, 0)
Unit:RegisterEvent("FizzleDarkstorm_ShadowBolt", 8000, 0)
Unit:RegisterEvent("FizzleDarkstorm_SummonImp", 1000, 1)
end

function FizzleDarkstorm_SummonImp(pUnit, Event) 
pUnit:CastSpell(11939) 
end

function FizzleDarkstorm_SoulSiphon(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7290, pUnit:GetMainTank()) 
end

function FizzleDarkstorm_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function FizzleDarkstorm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FizzleDarkstorm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FizzleDarkstorm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3203, 1, "FizzleDarkstorm_OnCombat")
RegisterUnitEvent(3203, 2, "FizzleDarkstorm_OnLeaveCombat")
RegisterUnitEvent(3203, 3, "FizzleDarkstorm_OnKilledTarget")
RegisterUnitEvent(3203, 4, "FizzleDarkstorm_OnDied")

--[[ Durotar -- Gazzuz.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function Gazzuz_OnCombat(Unit, Event)
Unit:RegisterEvent("Gazzuz_SummonVoidwalker", 1000, 1)
Unit:RegisterEvent("Gazzuz_DemonSkin", 2000, 1)
Unit:RegisterEvent("Gazzuz_Corruption", 4000, 1)
Unit:RegisterEvent("Gazzuz_ShadowBolt", 8000, 0)
end

function Gazzuz_SummonVoidwalker(pUnit, Event) 
pUnit:CastSpell(12746) 
end

function Gazzuz_DemonSkin(pUnit, Event) 
pUnit:CastSpell(20798) 
end

function Gazzuz_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(172, pUnit:GetMainTank()) 
end

function Gazzuz_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function Gazzuz_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Gazzuz_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Gazzuz_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3204, 1, "Gazzuz_OnCombat")
RegisterUnitEvent(3204, 2, "Gazzuz_OnLeaveCombat")
RegisterUnitEvent(3204, 3, "Gazzuz_OnKilledTarget")
RegisterUnitEvent(3204, 4, "Gazzuz_OnDied")

--[[ Durotar -- Geolord Mottle.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GeolordMottle_OnCombat(Unit, Event)
Unit:RegisterEvent("GeolordMottle_LightningShield", 5000, 0)
Unit:RegisterEvent("GeolordMottle_HealingWave", 12000, 0)
end

function GeolordMottle_LightningShield(pUnit, Event) 
pUnit:CastSpell(324) 
end

function GeolordMottle_HealingWave(pUnit, Event) 
pUnit:CastSpell(547) 
end

function GeolordMottle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GeolordMottle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GeolordMottle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5826, 1, "GeolordMottle_OnCombat")
RegisterUnitEvent(5826, 2, "GeolordMottle_OnLeaveCombat")
RegisterUnitEvent(5826, 3, "GeolordMottle_OnKilledTarget")
RegisterUnitEvent(5826, 4, "GeolordMottle_OnDied")

--[[ Durotar -- Hexed Troll.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HexedTroll_OnCombat(Unit, Event)
Unit:RegisterEvent("HexedTroll_Inmolate", 8000, 0)
end

function HexedTroll_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(348, pUnit:GetMainTank()) 
end

function HexedTroll_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HexedTroll_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HexedTroll_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3207, 1, "HexedTroll_OnCombat")
RegisterUnitEvent(3207, 2, "HexedTroll_OnLeaveCombat")
RegisterUnitEvent(3207, 3, "HexedTroll_OnKilledTarget")
RegisterUnitEvent(3207, 4, "HexedTroll_OnDied")

--[[ Durotar -- Kolkar Drudge.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function KolkarDrudge_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarDrudge_DustCloud", 12000, 0)
end

function KolkarDrudge_DustCloud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7272, pUnit:GetMainTank()) 
end

function KolkarDrudge_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarDrudge_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarDrudge_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3119, 1, "KolkarDrudge_OnCombat")
RegisterUnitEvent(3119, 2, "KolkarDrudge_OnLeaveCombat")
RegisterUnitEvent(3119, 3, "KolkarDrudge_OnKilledTarget")
RegisterUnitEvent(3119, 4, "KolkarDrudge_OnDied")

--[[ Durotar -- Kolkar Outrunner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function KolkarOutrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarOutrunner_Shoot", 6000, 0)
end

function KolkarOutrunner_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function KolkarOutrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarOutrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarOutrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3120, 1, "KolkarOutrunner_OnCombat")
RegisterUnitEvent(3120, 2, "KolkarOutrunner_OnLeaveCombat")
RegisterUnitEvent(3120, 3, "KolkarOutrunner_OnKilledTarget")
RegisterUnitEvent(3120, 4, "KolkarOutrunner_OnDied")

--[[ Durotar -- KulTiras Marine.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function KulTirasMarine_OnCombat(Unit, Event)
Unit:RegisterEvent("KulTirasMarine_ShieldBash", 6000, 0)
end

function KulTirasMarine_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11972, pUnit:GetMainTank()) 
end

function KulTirasMarine_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KulTirasMarine_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KulTirasMarine_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3129, 1, "KulTirasMarine_OnCombat")
RegisterUnitEvent(3129, 2, "KulTirasMarine_OnLeaveCombat")
RegisterUnitEvent(3129, 3, "KulTirasMarine_OnKilledTarget")
RegisterUnitEvent(3129, 4, "KulTirasMarine_OnDied")

--[[ Durotar -- KulTiras Sailor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function KulTirasSailor_OnCombat(Unit, Event)
Unit:RegisterEvent("KulTirasSailor_RushingCharge", 8000, 0)
end

function KulTirasSailor_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function KulTirasSailor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KulTirasSailor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KulTirasSailor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3128, 1, "KulTirasSailor_OnCombat")
RegisterUnitEvent(3128, 2, "KulTirasSailor_OnLeaveCombat")
RegisterUnitEvent(3128, 3, "KulTirasSailor_OnKilledTarget")
RegisterUnitEvent(3128, 4, "KulTirasSailor_OnDied")

--[[ Durotar -- Lieutenant Benedict.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function LieutenantBenedict_OnCombat(Unit, Event)
Unit:RegisterEvent("LieutenantBenedict_DefensiveStance", 1000, 1)
Unit:RegisterEvent("LieutenantBenedict_ImprovedBlocking", 6000, 0)
Unit:RegisterEvent("LieutenantBenedict_ShieldBash", 8000, 0)
end

function LieutenantBenedict_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function LieutenantBenedict_ImprovedBlocking(pUnit, Event) 
pUnit:CastSpell(3248) 
end

function LieutenantBenedict_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(72, pUnit:GetMainTank()) 
end

function LieutenantBenedict_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LieutenantBenedict_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LieutenantBenedict_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3192, 1, "LieutenantBenedict_OnCombat")
RegisterUnitEvent(3192, 2, "LieutenantBenedict_OnLeaveCombat")
RegisterUnitEvent(3192, 3, "LieutenantBenedict_OnKilledTarget")
RegisterUnitEvent(3192, 4, "LieutenantBenedict_OnDied")

--[[ Durotar -- Lightning Hide.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function LightningHide_OnCombat(Unit, Event)
Unit:RegisterEvent("LightningHide_LizardBolt", 5000, 0)
end

function LightningHide_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function LightningHide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LightningHide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LightningHide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3131, 1, "LightningHide_OnCombat")
RegisterUnitEvent(3131, 2, "LightningHide_OnLeaveCombat")
RegisterUnitEvent(3131, 3, "LightningHide_OnKilledTarget")
RegisterUnitEvent(3131, 4, "LightningHide_OnDied")

--[[ Durotar -- Makrura Snapclaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function MakruraSnapclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("MarkuraSnapclaw_Claw",8000,0)
end

function MarkuraSnapclaw_Claw(pUnit,Event)
pUnit:FullCastSpellOnTarget(5424,pUnit:GetMainTank())
end

function MakruraSnapclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MakruraSnapclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MakruraSnapclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3105, 1, "MakruraSnapclaw_OnCombat")
RegisterUnitEvent(3105, 2, "MakruraSnapclaw_OnLeaveCombat")
RegisterUnitEvent(3105, 3, "MakruraSnapclaw_OnKilledTarget")
RegisterUnitEvent(3105, 4, "MakruraSnapclaw_OnDied")

--[[ Durotar -- Mammoth Shark.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function MammothShark_OnCombat(Unit, Event)
Unit:RegisterEvent("MammothShark_Thrash", 5000, 0)
end

function MammothShark_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function MammothShark_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MammothShark_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MammothShark_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12125, 1, "MammothShark_OnCombat")
RegisterUnitEvent(12125, 2, "MammothShark_OnLeaveCombat")
RegisterUnitEvent(12125, 3, "MammothShark_OnKilledTarget")
RegisterUnitEvent(12125, 4, "MammothShark_OnDied")

--[[ Durotar -- Minor Manifestation of Fire.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function MinorManifestationofFire_OnCombat(Unit, Event)
Unit:RegisterEvent("MinorManifestationofFire_FireShield", 1000, 1)
Unit:RegisterEvent("MinorManifestationofFire_FlameShock", 8000, 0)
end

function MinorManifestationofFire_FireShield(pUnit, Event) 
pUnit:CastSpell(134) 
end

function MinorManifestationofFire_FlameShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8050, pUnit:GetMainTank()) 
end

function MinorManifestationofFire_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MinorManifestationofFire_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MinorManifestationofFire_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5893, 1, "MinorManifestationofFire_OnCombat")
RegisterUnitEvent(5893, 2, "MinorManifestationofFire_OnLeaveCombat")
RegisterUnitEvent(5893, 3, "MinorManifestationofFire_OnKilledTarget")
RegisterUnitEvent(5893, 4, "MinorManifestationofFire_OnDied")

--[[ Durotar -- Razormane Battleguard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function RazormaneBattleguard_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneBattleguard_ImprovedBlocking", 8000, 0)
end

function RazormaneBattleguard_ImprovedBlocking(pUnit, Event) 
pUnit:CastSpell(3248) 
end

function RazormaneBattleguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneBattleguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneBattleguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3114, 1, "RazormaneBattleguard_OnCombat")
RegisterUnitEvent(3114, 2, "RazormaneBattleguard_OnLeaveCombat")
RegisterUnitEvent(3114, 3, "RazormaneBattleguard_OnKilledTarget")
RegisterUnitEvent(3114, 4, "RazormaneBattleguard_OnDied")

--[[ Durotar -- Razormane Dustrunner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function RazormaneDustrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneDustrunner_FaerieFire", 2000, 2)
Unit:RegisterEvent("RazormaneDustrunner_Rejuvenation", 12000, 0)
end

function RazormaneDustrunner_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6950, pUnit:GetMainTank()) 
end

function RazormaneDustrunner_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(774) 
end

function RazormaneDustrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneDustrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneDustrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3113, 1, "RazormaneDustrunner_OnCombat")
RegisterUnitEvent(3113, 2, "RazormaneDustrunner_OnLeaveCombat")
RegisterUnitEvent(3113, 3, "RazormaneDustrunner_OnKilledTarget")
RegisterUnitEvent(3113, 4, "RazormaneDustrunner_OnDied")

--[[ Durotar -- Razormane Quilboar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function RazormaneQuilboar_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneQuilboar_RazorMane", 2000, 2)
end

function RazormaneQuilboar_RazorMane(pUnit, Event) 
pUnit:CastSpell(5280) 
end

function RazormaneQuilboar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneQuilboar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneQuilboar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3111, 1, "RazormaneQuilboar_OnCombat")
RegisterUnitEvent(3111, 2, "RazormaneQuilboar_OnLeaveCombat")
RegisterUnitEvent(3111, 3, "RazormaneQuilboar_OnKilledTarget")
RegisterUnitEvent(3111, 4, "RazormaneQuilboar_OnDied")

--[[ Durotar -- Razormane Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function RazormaneScout_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneScout_Shoot", 6000, 0)
end

function RazormaneScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function RazormaneScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3112, 1, "RazormaneScout_OnCombat")
RegisterUnitEvent(3112, 2, "RazormaneScout_OnLeaveCombat")
RegisterUnitEvent(3112, 3, "RazormaneScout_OnKilledTarget")
RegisterUnitEvent(3112, 4, "RazormaneScout_OnDied")

--[[ Durotar -- Thunder Lizard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ThunderLizard_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderLizard_LizardBolt", 5000, 0)
end

function ThunderLizard_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function ThunderLizard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderLizard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderLizard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3130, 1, "ThunderLizard_OnCombat")
RegisterUnitEvent(3130, 2, "ThunderLizard_OnLeaveCombat")
RegisterUnitEvent(3130, 3, "ThunderLizard_OnKilledTarget")
RegisterUnitEvent(3130, 4, "ThunderLizard_OnDied")

--[[ Durotar -- Venomtail Scorpid.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function VenomtailScorpid_OnCombat(Unit, Event)
Unit:RegisterEvent("VenomtailScorpid_VenomSting", 10000, 0)
end

function VenomtailScorpid_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function VenomtailScorpid_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VenomtailScorpid_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VenomtailScorpid_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3127, 1, "VenomtailScorpid_OnCombat")
RegisterUnitEvent(3127, 2, "VenomtailScorpid_OnLeaveCombat")
RegisterUnitEvent(3127, 3, "VenomtailScorpid_OnKilledTarget")
RegisterUnitEvent(3127, 4, "VenomtailScorpid_OnDied")

--[[ Durotar -- Vile Familiar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function VileFamiliar_OnCombat(Unit, Event)
Unit:RegisterEvent("VileFamiliar_Fireball", 8000, 0)
end

function VileFamiliar_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11921, pUnit:GetMainTank()) 
end

function VileFamiliar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VileFamiliar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VileFamiliar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3101, 1, "VileFamiliar_OnCombat")
RegisterUnitEvent(3101, 2, "VileFamiliar_OnLeaveCombat")
RegisterUnitEvent(3101, 3, "VileFamiliar_OnKilledTarget")
RegisterUnitEvent(3101, 4, "VileFamiliar_OnDied")

--[[ Durotar -- Voodoo Troll.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function VoodooTroll_OnCombat(Unit, Event)
Unit:RegisterEvent("VoodooTroll_LightningShield", 5000, 0)
Unit:RegisterEvent("VoodooTroll_HealingWave", 12000, 0)
end

function VoodooTroll_LightningShield(pUnit, Event) 
pUnit:CastSpell(324) 
end

function VoodooTroll_HealingWave(pUnit, Event) 
pUnit:CastSpell(332) 
end

function VoodooTroll_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VoodooTroll_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VoodooTroll_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3206, 1, "VoodooTroll_OnCombat")
RegisterUnitEvent(3206, 2, "VoodooTroll_OnLeaveCombat")
RegisterUnitEvent(3206, 3, "VoodooTroll_OnKilledTarget")
RegisterUnitEvent(3206, 4, "VoodooTroll_OnDied")

--[[ Durotar -- Warlord Kolkanis.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WarlordKolkanis_OnCombat(Unit, Event)
Unit:RegisterEvent("WarlordKolkanis_Pummel", 5000, 0)
Unit:RegisterEvent("WarlordKolkanis_Thunderclap", 7000, 0)
end

function WarlordKolkanis_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function WarlordKolkanis_Thunderclap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8078, pUnit:GetMainTank()) 
end

function WarlordKolkanis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarlordKolkanis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarlordKolkanis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5808, 1, "WarlordKolkanis_OnCombat")
RegisterUnitEvent(5808, 2, "WarlordKolkanis_OnLeaveCombat")
RegisterUnitEvent(5808, 3, "WarlordKolkanis_OnKilledTarget")
RegisterUnitEvent(5808, 4, "WarlordKolkanis_OnDied")

--[[ Durotar -- Watch Commander Zalaphil.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WatchCommanderZalaphil_OnCombat(Unit, Event)
Unit:RegisterEvent("WatchCommanderZalaphil_DefensiveStance", 1000, 1)
Unit:RegisterEvent("WatchCommanderZalaphil_ShieldBash", 8000, 0)
end

function WatchCommanderZalaphil_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function WatchCommanderZalaphil_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(72, pUnit:GetMainTank()) 
end

function WatchCommanderZalaphil_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WatchCommanderZalaphil_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WatchCommanderZalaphil_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3192, 1, "WatchCommanderZalaphil_OnCombat")
RegisterUnitEvent(3192, 2, "WatchCommanderZalaphil_OnLeaveCombat")
RegisterUnitEvent(3192, 3, "WatchCommanderZalaphil_OnKilledTarget")
RegisterUnitEvent(3192, 4, "WatchCommanderZalaphil_OnDied")

--[[ Durotar -- Yarrog Baneshadow.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function YarrogBaneshadow_OnCombat(Unit, Event)
Unit:RegisterEvent("YarrogBaneshadow_Immolate", 6000, 0)
Unit:RegisterEvent("YarrogBaneshadow_Corruption", 8000, 0)
end

function YarrogBaneshadow_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(348, pUnit:GetMainTank()) 
end

function YarrogBaneshadow_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(172, pUnit:GetMainTank()) 
end

function YarrogBaneshadow_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function YarrogBaneshadow_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function YarrogBaneshadow_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3183, 1, "YarrogBaneshadow_OnCombat")
RegisterUnitEvent(3183, 2, "YarrogBaneshadow_OnLeaveCombat")
RegisterUnitEvent(3183, 3, "YarrogBaneshadow_OnKilledTarget")
RegisterUnitEvent(3183, 4, "YarrogBaneshadow_OnDied")

--[[ Durotar -- Zalazane.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function Zalazane_OnCombat(Unit, Event)
Unit:RegisterEvent("Zalazane_Shrink", 6000, 0)
Unit:RegisterEvent("Zalazane_HealingWave", 12000, 0)
end

function Zalazane_Shrink(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7289, pUnit:GetMainTank()) 
end

function Zalazane_HealingWave(pUnit, Event) 
pUnit:CastSpell(332) 
end

function Zalazane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Zalazane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Zalazane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3205, 1, "Zalazane_OnCombat")
RegisterUnitEvent(3205, 2, "Zalazane_OnLeaveCombat")
RegisterUnitEvent(3205, 3, "Zalazane_OnKilledTarget")
RegisterUnitEvent(3205, 4, "Zalazane_OnDied")

--[[ ALL CREDITS GO TO BLUA SCRIPTING AND THE
                 WRITER OF THESE SCRIPTS BLACKHER0 and Mikebeck
    BlackHer0, Novembar, 4th, 2008. --]]