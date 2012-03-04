--[[ Tanaris -- Centipaar Sandreaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CentipaarSandreaver_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarSandreaver_ArcingSmash", 5000, 0)
Unit:RegisterEvent("CentipaarSandreaver_Thrash", 6000, 0)
end

function CentipaarSandreaver_ArcingSmash(pUnit, Event) 
pUnit:CastSpell(8374) 
end

function CentipaarSandreaver_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function CentipaarSandreaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarSandreaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarSandreaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5460, 1, "CentipaarSandreaver_OnCombat")
RegisterUnitEvent(5460, 2, "CentipaarSandreaver_OnLeaveCombat")
RegisterUnitEvent(5460, 3, "CentipaarSandreaver_OnKilledTarget")
RegisterUnitEvent(5460, 4, "CentipaarSandreaver_OnDied")

--[[ Tanaris -- Centipaar Stinger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CentipaarStinger_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarStinger_VenomSting", 10000, 0)
Unit:RegisterEvent("CentipaarStinger_Thrash", 6000, 0)
end

function CentipaarStinger_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function CentipaarStinger_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function CentipaarStinger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarStinger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarStinger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5456, 1, "CentipaarStinger_OnCombat")
RegisterUnitEvent(5456, 2, "CentipaarStinger_OnLeaveCombat")
RegisterUnitEvent(5456, 3, "CentipaarStinger_OnKilledTarget")
RegisterUnitEvent(5456, 4, "CentipaarStinger_OnDied")

--[[ Tanaris -- Centipaar Swarmer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CentipaarSwarmer_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarSwarmer_SilithidSwarm", 10000, 1)
Unit:RegisterEvent("CentipaarSwarmer_Thrash", 6000, 0)
end

function CentipaarSwarmer_SilithidSwarm(pUnit, Event) 
pUnit:CastSpell(6589) 
end

function CentipaarSwarmer_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function CentipaarSwarmer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarSwarmer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarSwarmer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5457, 1, "CentipaarSwarmer_OnCombat")
RegisterUnitEvent(5457, 2, "CentipaarSwarmer_OnLeaveCombat")
RegisterUnitEvent(5457, 3, "CentipaarSwarmer_OnKilledTarget")
RegisterUnitEvent(5457, 4, "CentipaarSwarmer_OnDied")

--[[ Tanaris -- Centipaar Tunneler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CentipaarTunneler_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarTunneler_PierceArmor", 15000, 0)
Unit:RegisterEvent("CentipaarTunneler_Thrash", 6000, 0)
end

function CentipaarTunneler_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function CentipaarTunneler_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function CentipaarTunneler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarTunneler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarTunneler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5459, 1, "CentipaarTunneler_OnCombat")
RegisterUnitEvent(5459, 2, "CentipaarTunneler_OnLeaveCombat")
RegisterUnitEvent(5459, 3, "CentipaarTunneler_OnKilledTarget")
RegisterUnitEvent(5459, 4, "CentipaarTunneler_OnDied")

--[[ Tanaris -- Centipaar Wasp.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CentipaarWasp_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarWasp_Poison", 10000, 0)
Unit:RegisterEvent("CentipaarWasp_Thrash", 6000, 0)
end

function CentipaarWasp_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function CentipaarWasp_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function CentipaarWasp_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarWasp_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarWasp_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5455, 1, "CentipaarWasp_OnCombat")
RegisterUnitEvent(5455, 2, "CentipaarWasp_OnLeaveCombat")
RegisterUnitEvent(5455, 3, "CentipaarWasp_OnKilledTarget")
RegisterUnitEvent(5455, 4, "CentipaarWasp_OnDied")

--[[ Tanaris -- Centipaar Worker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CentipaarWorker_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarWorker_Thrash", 6000, 0)
end

function CentipaarWorker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarWorker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarWorker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5458, 1, "CentipaarWorker_OnCombat")
RegisterUnitEvent(5458, 2, "CentipaarWorker_OnLeaveCombat")
RegisterUnitEvent(5458, 3, "CentipaarWorker_OnKilledTarget")
RegisterUnitEvent(5458, 4, "CentipaarWorker_OnDied")

--[[ Tanaris -- Chronalis.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function Chronalis_OnCombat(Unit, Event)
Unit:RegisterEvent("Chronalis_SandBreath", 10000, 0)
Unit:RegisterEvent("Chronalis_Cleave", 5000, 0)
end

function Chronalis_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function Chronalis_SandBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20717, pUnit:GetMainTank()) 
end

function Chronalis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Chronalis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Chronalis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8197, 1, "Chronalis_OnCombat")
RegisterUnitEvent(8197, 2, "Chronalis_OnLeaveCombat")
RegisterUnitEvent(8197, 3, "Chronalis_OnKilledTarget")
RegisterUnitEvent(8197, 4, "Chronalis_OnDied")

--[[ Tanaris -- Dune Smasher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DuneSmasher_OnCombat(Unit, Event)
Unit:RegisterEvent("DuneSmasher_HeadCrack", 10000, 0)
end

function DuneSmasher_HeadCrack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9791, pUnit:GetMainTank()) 
end

function DuneSmasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DuneSmasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DuneSmasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5469, 1, "DuneSmasher_OnCombat")
RegisterUnitEvent(5469, 2, "DuneSmasher_OnLeaveCombat")
RegisterUnitEvent(5469, 3, "DuneSmasher_OnKilledTarget")
RegisterUnitEvent(5469, 4, "DuneSmasher_OnDied")

--[[ Tanaris -- Dunemaul Brute.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DunemaulBrute_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulBrute_Uppercut", 7000, 0)
end

function DunemaulBrute_Uppercut(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10966, pUnit:GetMainTank()) 
end

function DunemaulBrute_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulBrute_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulBrute_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5474, 1, "DunemaulBrute_OnCombat")
RegisterUnitEvent(5474, 2, "DunemaulBrute_OnLeaveCombat")
RegisterUnitEvent(5474, 3, "DunemaulBrute_OnKilledTarget")
RegisterUnitEvent(5474, 4, "DunemaulBrute_OnDied")

--[[ Tanaris -- Dunemaul Enforcer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DunemaulEnforcer_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulEnforcer_DemoralizingShout", 10000, 0)
end

function DunemaulEnforcer_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function DunemaulEnforcer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulEnforcer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulEnforcer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5472, 1, "DunemaulEnforcer_OnCombat")
RegisterUnitEvent(5472, 2, "DunemaulEnforcer_OnLeaveCombat")
RegisterUnitEvent(5472, 3, "DunemaulEnforcer_OnKilledTarget")
RegisterUnitEvent(5472, 4, "DunemaulEnforcer_OnDied")

--[[ Tanaris -- Dunemaul Ogre.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DunemaulOgre_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulOgre_BattleStance", 1000, 1)
Unit:RegisterEvent("DunemaulOgre_HeroicStrike", 4000, 0)
end

function DunemaulOgre_BattleStance(pUnit, Event) 
pUnit:CastSpell(7165) 
end

function DunemaulOgre_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function DunemaulOgre_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulOgre_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulOgre_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5471, 1, "DunemaulOgre_OnCombat")
RegisterUnitEvent(5471, 2, "DunemaulOgre_OnLeaveCombat")
RegisterUnitEvent(5471, 3, "DunemaulOgre_OnKilledTarget")
RegisterUnitEvent(5471, 4, "DunemaulOgre_OnDied")

--[[ Tanaris -- Dunemaul Ogre Mage.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DunemaulOgreMage_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulOgreMage_Bloodlust", 10000, 0)
Unit:RegisterEvent("DunemaulOgreMage_Slow", 15000, 0)
Unit:RegisterEvent("DunemaulOgreMage_Fireball", 5000, 0)
end

function DunemaulOgreMage_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function DunemaulOgreMage_Slow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11436, pUnit:GetMainTank()) 
end

function DunemaulOgreMage_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function DunemaulOgreMage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulOgreMage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulOgreMage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5473, 1, "DunemaulOgreMage_OnCombat")
RegisterUnitEvent(5473, 2, "DunemaulOgreMage_OnLeaveCombat")
RegisterUnitEvent(5473, 3, "DunemaulOgreMage_OnKilledTarget")
RegisterUnitEvent(5473, 4, "DunemaulOgreMage_OnDied")

--[[ Tanaris -- Dunemaul Warlock.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DunemaulWarlock_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulWarlock_Shadowbolt", 8000, 0)
end

function DunemaulWarlock_Shadowbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function DunemaulWarlock_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulWarlock_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulWarlock_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5475, 1, "DunemaulWarlock_OnCombat")
RegisterUnitEvent(5475, 2, "DunemaulWarlock_OnLeaveCombat")
RegisterUnitEvent(5475, 3, "DunemaulWarlock_OnKilledTarget")
RegisterUnitEvent(5475, 4, "DunemaulWarlock_OnDied")

--[[ Tanaris -- Fire Roc.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function FireRoc_OnCombat(Unit, Event)
Unit:RegisterEvent("FireRoc_Flamespit", 6000, 0)
end

function FireRoc_Flamespit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11021, pUnit:GetMainTank()) 
end

function FireRoc_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FireRoc_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FireRoc_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5429, 1, "FireRoc_OnCombat")
RegisterUnitEvent(5429, 2, "FireRoc_OnLeaveCombat")
RegisterUnitEvent(5429, 3, "FireRoc_OnKilledTarget")
RegisterUnitEvent(5429, 4, "FireRoc_OnDied")

--[[ Tanaris -- Glasshide Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GlasshideBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("GlasshideBasilisk_CrystalFlash", 12000, 2)
end

function GlasshideBasilisk_CrystalFlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5106, pUnit:GetMainTank()) 
end

function GlasshideBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlasshideBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlasshideBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5419, 1, "GlasshideBasilisk_OnCombat")
RegisterUnitEvent(5419, 2, "GlasshideBasilisk_OnLeaveCombat")
RegisterUnitEvent(5419, 3, "GlasshideBasilisk_OnKilledTarget")
RegisterUnitEvent(5419, 4, "GlasshideBasilisk_OnDied")

--[[ Tanaris -- Glasshide Gazer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GlasshideGazer_OnCombat(Unit, Event)
Unit:RegisterEvent("GlasshideGazer_CrystalGaze", 10000, 0)
end

function GlasshideGazer_CrystalGaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3635, pUnit:GetMainTank()) 
end

function GlasshideGazer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlasshideGazer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlasshideGazer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5420, 1, "GlasshideGazer_OnCombat")
RegisterUnitEvent(5420, 2, "GlasshideGazer_OnLeaveCombat")
RegisterUnitEvent(5420, 3, "GlasshideGazer_OnKilledTarget")
RegisterUnitEvent(5420, 4, "GlasshideGazer_OnDied")

--[[ Tanaris -- Glasshide Petrifier.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GlasshidePetrifier_OnCombat(Unit, Event)
Unit:RegisterEvent("GlasshidePetrifier_CrystalGaze", 15000, 0)
end

function GlasshidePetrifier_CrystalGaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11020, pUnit:GetMainTank()) 
end

function GlasshidePetrifier_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlasshidePetrifier_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlasshidePetrifier_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5421, 1, "GlasshidePetrifier_OnCombat")
RegisterUnitEvent(5421, 2, "GlasshidePetrifier_OnLeaveCombat")
RegisterUnitEvent(5421, 3, "GlasshidePetrifier_OnKilledTarget")
RegisterUnitEvent(5421, 4, "GlasshidePetrifier_OnDied")

--[[ Tanaris -- Gormarok the Ravager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GormaroktheRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("GormaroktheRavager_Cleave", 4000, 0)
Unit:RegisterEvent("GormaroktheRavager_Enrage", 120000, 0)
Unit:RegisterEvent("GormaroktheRavager_MortalStrike", 6000, 0)
end

function GormaroktheRavager_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function GormaroktheRavager_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16856, pUnit:GetMainTank()) 
end

function GormaroktheRavager_Enrage(pUnit, Event) 
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function GormaroktheRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GormaroktheRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GormaroktheRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12046, 1, "GormaroktheRavager_OnCombat")
RegisterUnitEvent(12046, 2, "GormaroktheRavager_OnLeaveCombat")
RegisterUnitEvent(12046, 3, "GormaroktheRavager_OnKilledTarget")
RegisterUnitEvent(12046, 4, "GormaroktheRavager_OnDied")

--[[ Tanaris -- Greater Firebird.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GreaterFirebird_OnCombat(Unit, Event)
Unit:RegisterEvent("GreaterFirebird_CrimsonFury", 8000, 0)
Unit:RegisterEvent("GreaterFirebird_FireNova", 10000, 0)
end

function GreaterFirebird_CrimsonFury(pUnit, Event) 
pUnit:CastSpell(16843) 
end

function GreaterFirebird_FireNova(pUnit, Event) 
pUnit:CastSpell(11970) 
end

function GreaterFirebird_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreaterFirebird_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreaterFirebird_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8207, 1, "GreaterFirebird_OnCombat")
RegisterUnitEvent(8207, 2, "GreaterFirebird_OnLeaveCombat")
RegisterUnitEvent(8207, 3, "GreaterFirebird_OnKilledTarget")
RegisterUnitEvent(8207, 4, "GreaterFirebird_OnDied")

--[[ Tanaris -- Gusting Vortex.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GustingVortex_OnCombat(Unit, Event)
Unit:RegisterEvent("GustingVortex_GustofWind", 8000, 0)
end

function GustingVortex_GustofWind(pUnit, Event) 
pUnit:CastSpell(6982) 
end

function GustingVortex_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GustingVortex_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GustingVortex_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8667, 1, "GustingVortex_OnCombat")
RegisterUnitEvent(8667, 2, "GustingVortex_OnLeaveCombat")
RegisterUnitEvent(8667, 3, "GustingVortex_OnKilledTarget")
RegisterUnitEvent(8667, 4, "GustingVortex_OnDied")

--[[ Tanaris -- Haarka the Ravenous.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HaarkatheRavenous_OnCombat(Unit, Event)
Unit:RegisterEvent("HaarkatheRavenous_SunderArmor", 10000, 0)
Unit:RegisterEvent("HaarkatheRavenous_Thrash", 5000, 0)
end

function HaarkatheRavenous_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21081, pUnit:GetMainTank()) 
end

function HaarkatheRavenous_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function HaarkatheRavenous_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HaarkatheRavenous_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HaarkatheRavenous_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8205, 1, "HaarkatheRavenous_OnCombat")
RegisterUnitEvent(8205, 2, "HaarkatheRavenous_OnLeaveCombat")
RegisterUnitEvent(8205, 3, "HaarkatheRavenous_OnKilledTarget")
RegisterUnitEvent(8205, 4, "HaarkatheRavenous_OnDied")

--[[ Tanaris -- Hazzali Sandreaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HazzaliSandreaver_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliSandreaver_ArcingSmash", 4000, 0)
end

function HazzaliSandreaver_ArcingSmash(pUnit, Event) 
pUnit:CastSpell(8374) 
end

function HazzaliSandreaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliSandreaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliSandreaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5454, 1, "HazzaliSandreaver_OnCombat")
RegisterUnitEvent(5454, 2, "HazzaliSandreaver_OnLeaveCombat")
RegisterUnitEvent(5454, 3, "HazzaliSandreaver_OnKilledTarget")
RegisterUnitEvent(5454, 4, "HazzaliSandreaver_OnDied")

--[[ Tanaris -- Hazzali Stinger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HazzaliStinger_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliStinger_VenomSting", 10000, 0)
end

function HazzaliStinger_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function HazzaliStinger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliStinger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliStinger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5450, 1, "HazzaliStinger_OnCombat")
RegisterUnitEvent(5450, 2, "HazzaliStinger_OnLeaveCombat")
RegisterUnitEvent(5450, 3, "HazzaliStinger_OnKilledTarget")
RegisterUnitEvent(5450, 4, "HazzaliStinger_OnDied")

--[[ Tanaris -- Hazzali Swarmer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HazzaliSwarmer_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliSwarmer_SilithidSwarm", 10000, 1)
end

function HazzaliSwarmer_SilithidSwarm(pUnit, Event) 
pUnit:CastSpell(6589) 
end

function HazzaliSwarmer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliSwarmer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliSwarmer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5451, 1, "HazzaliSwarmer_OnCombat")
RegisterUnitEvent(5451, 2, "HazzaliSwarmer_OnLeaveCombat")
RegisterUnitEvent(5451, 3, "HazzaliSwarmer_OnKilledTarget")
RegisterUnitEvent(5451, 4, "HazzaliSwarmer_OnDied")

--[[ Tanaris -- Hazzali Tunneler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HazzaliTunneler_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliTunneler_PierceArmor", 10000, 0)
end

function HazzaliTunneler_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function HazzaliTunneler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliTunneler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliTunneler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5453, 1, "HazzaliTunneler_OnCombat")
RegisterUnitEvent(5453, 2, "HazzaliTunneler_OnLeaveCombat")
RegisterUnitEvent(5453, 3, "HazzaliTunneler_OnKilledTarget")
RegisterUnitEvent(5453, 4, "HazzaliTunneler_OnDied")

--[[ Tanaris -- Hazzali Wasp.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HazzaliWasp_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliWasp_Poison", 10000, 0)
end

function HazzaliWasp_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HazzaliWasp_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliWasp_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliWasp_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5453, 1, "HazzaliWasp_OnCombat")
RegisterUnitEvent(5453, 2, "HazzaliWasp_OnLeaveCombat")
RegisterUnitEvent(5453, 3, "HazzaliWasp_OnKilledTarget")
RegisterUnitEvent(5453, 4, "HazzaliWasp_OnDied")

--[[ Tanaris -- JinZallah the Sandbringer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function JinZallahtheSandbringer_OnCombat(Unit, Event)
Unit:RegisterEvent("JinZallahtheSandbringer_DustCloud", 15000, 0)
Unit:RegisterEvent("JinZallahtheSandbringer_LightningBolt", 8000, 0)
Unit:RegisterEvent("JinZallahtheSandbringer_SandStorms", 10000, 1)
end

function JinZallahtheSandbringer_DustCloud(pUnit, Event) 
pUnit:CastSpell(7272) 
end

function JinZallahtheSandbringer_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20824, pUnit:GetMainTank()) 
end

function JinZallahtheSandbringer_SandStorms(pUnit, Event) 
pUnit:CastSpell(10132) 
end

function JinZallahtheSandbringer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function JinZallahtheSandbringer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function JinZallahtheSandbringer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8200, 1, "JinZallahtheSandbringer_OnCombat")
RegisterUnitEvent(8200, 2, "JinZallahtheSandbringer_OnLeaveCombat")
RegisterUnitEvent(8200, 3, "JinZallahtheSandbringer_OnKilledTarget")
RegisterUnitEvent(8200, 4, "JinZallahtheSandbringer_OnDied")

--[[ Tanaris -- Kregg Keelhaul.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function KreggKeelhaul_OnCombat(Unit, Event)
Unit:RegisterEvent("KreggKeelhaul_Cleave", 4000, 0)
Unit:RegisterEvent("KreggKeelhaul_Strike", 6000, 0)
end

function KreggKeelhaul_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function KreggKeelhaul_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function KreggKeelhaul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KreggKeelhaul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KreggKeelhaul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8203, 1, "KreggKeelhaul_OnCombat")
RegisterUnitEvent(8203, 2, "KreggKeelhaul_OnLeaveCombat")
RegisterUnitEvent(8203, 3, "KreggKeelhaul_OnKilledTarget")
RegisterUnitEvent(8203, 4, "KreggKeelhaul_OnDied")

--[[ Tanaris -- Land Rager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function LandRager_OnCombat(Unit, Event)
Unit:RegisterEvent("LandRager_Enrage", 120000, 0)
end

function LandRager_Enrage(pUnit, Event) 
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function LandRager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LandRager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LandRager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5465, 1, "LandRager_OnCombat")
RegisterUnitEvent(5465, 2, "LandRager_OnLeaveCombat")
RegisterUnitEvent(5465, 3, "LandRager_OnKilledTarget")
RegisterUnitEvent(5465, 4, "LandRager_OnDied")

--[[ Tanaris -- Occulus.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function Occulus_OnCombat(Unit, Event)
Unit:RegisterEvent("Occulus_ArcaneBlast", 6000, 0)
Unit:RegisterEvent("Occulus_SandBreath", 8000, 0)
Unit:RegisterEvent("Occulus_Swoop", 7000, 0)
end

function Occulus_ArcaneBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10833, pUnit:GetMainTank()) 
end

function Occulus_SandBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20717, pUnit:GetMainTank()) 
end

function Occulus_Swoop(pUnit, Event) 
pUnit:CastSpell(18144) 
end

function Occulus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Occulus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Occulus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8196, 1, "Occulus_OnCombat")
RegisterUnitEvent(8196, 2, "Occulus_OnLeaveCombat")
RegisterUnitEvent(8196, 3, "Occulus_OnKilledTarget")
RegisterUnitEvent(8196, 4, "Occulus_OnDied")

--[[ Tanaris -- Omgorn the Lost.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function OmgorntheLost_OnCombat(Unit, Event)
Unit:RegisterEvent("OmgorntheLost_MortalStrike", 6000, 0)
Unit:RegisterEvent("OmgorntheLost_Enrage", 12000, 0)
end

function OmgorntheLost_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16856, pUnit:GetMainTank()) 
end

function OmgorntheLost_Enrage(pUnit, Event)
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function OmgorntheLost_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OmgorntheLost_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OmgorntheLost_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8201, 1, "OmgorntheLost_OnCombat")
RegisterUnitEvent(8201, 2, "OmgorntheLost_OnLeaveCombat")
RegisterUnitEvent(8201, 3, "OmgorntheLost_OnKilledTarget")
RegisterUnitEvent(8201, 4, "OmgorntheLost_OnDied")

--[[ Tanaris -- Rabid Blisterpaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function RabidBlisterpaw_OnCombat(Unit, Event)
Unit:RegisterEvent("RabidBlisterpaw_Rabies", 10000, 1)
end

function RabidBlisterpaw_Rabies(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3150, pUnit:GetMainTank()) 
end

function RabidBlisterpaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RabidBlisterpaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RabidBlisterpaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5427, 1, "RabidBlisterpaw_OnCombat")
RegisterUnitEvent(5427, 2, "RabidBlisterpaw_OnLeaveCombat")
RegisterUnitEvent(5427, 3, "RabidBlisterpaw_OnKilledTarget")
RegisterUnitEvent(5427, 4, "RabidBlisterpaw_OnDied")

--[[ Tanaris -- Raging Dune Smasher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function RagingDuneSmasher_OnCombat(Unit, Event)
Unit:RegisterEvent("RagingDuneSmasher_Enrage", 120000, 0)
end

function RagingDuneSmasher_Enrage(pUnit, Event) 
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function RagingDuneSmasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RagingDuneSmasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RagingDuneSmasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5470, 1, "RagingDuneSmasher_OnCombat")
RegisterUnitEvent(5470, 2, "RagingDuneSmasher_OnLeaveCombat")
RegisterUnitEvent(5470, 3, "RagingDuneSmasher_OnKilledTarget")
RegisterUnitEvent(5470, 4, "RagingDuneSmasher_OnDied")

--[[ Tanaris -- Sandfury Axe Thrower.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SandfuryAxeThrower_OnCombat(Unit, Event)
Unit:RegisterEvent("SandfuryAxeThrower_Throw", 4000, 0)
end

function SandfuryAxeThrower_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function SandfuryAxeThrower_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SandfuryAxeThrower_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SandfuryAxeThrower_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5646, 1, "SandfuryAxeThrower_OnCombat")
RegisterUnitEvent(5646, 2, "SandfuryAxeThrower_OnLeaveCombat")
RegisterUnitEvent(5646, 3, "SandfuryAxeThrower_OnKilledTarget")
RegisterUnitEvent(5646, 4, "SandfuryAxeThrower_OnDied")

--[[ Tanaris -- Sandfury Firecaller.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SandfuryFirecaller_OnCombat(Unit, Event)
Unit:RegisterEvent("SandfuryFirecaller_Fireball", 5000, 0)
end

function SandfuryFirecaller_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20823, pUnit:GetMainTank()) 
end

function SandfuryFirecaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SandfuryFirecaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SandfuryFirecaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5647, 1, "SandfuryFirecaller_OnCombat")
RegisterUnitEvent(5647, 2, "SandfuryFirecaller_OnLeaveCombat")
RegisterUnitEvent(5647, 3, "SandfuryFirecaller_OnKilledTarget")
RegisterUnitEvent(5647, 4, "SandfuryFirecaller_OnDied")

--[[ Tanaris -- Sandfury Hideskinner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SandfuryHideskinner_OnCombat(Unit, Event)
Unit:RegisterEvent("SandfuryHideskinner_Backstab", 4000, 0)
end

function SandfuryHideskinner_Backstab(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7159, pUnit:GetMainTank()) 
end

function SandfuryHideskinner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SandfuryHideskinner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SandfuryHideskinner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5645, 1, "SandfuryHideskinner_OnCombat")
RegisterUnitEvent(5645, 2, "SandfuryHideskinner_OnLeaveCombat")
RegisterUnitEvent(5645, 3, "SandfuryHideskinner_OnKilledTarget")
RegisterUnitEvent(5645, 4, "SandfuryHideskinner_OnDied")

--[[ Tanaris -- Scorpid Duneburrower.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ScorpidDuneburrower_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidDuneburrower_VenomSting", 10000, 0)
end

function ScorpidDuneburrower_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function ScorpidDuneburrower_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidDuneburrower_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidDuneburrower_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7803, 1, "ScorpidDuneburrower_OnCombat")
RegisterUnitEvent(7803, 2, "ScorpidDuneburrower_OnLeaveCombat")
RegisterUnitEvent(7803, 3, "ScorpidDuneburrower_OnKilledTarget")
RegisterUnitEvent(7803, 4, "ScorpidDuneburrower_OnDied")

--[[ Tanaris -- Scorpid Dunestalker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ScorpidDunestalker_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidDunestalker_VenomSting", 10000, 0)
end

function ScorpidDunestalker_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function ScorpidDunestalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidDunestalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidDunestalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5424, 1, "ScorpidDunestalker_OnCombat")
RegisterUnitEvent(5424, 2, "ScorpidDunestalker_OnLeaveCombat")
RegisterUnitEvent(5424, 3, "ScorpidDunestalker_OnKilledTarget")
RegisterUnitEvent(5424, 4, "ScorpidDunestalker_OnDied")

--[[ Tanaris -- Scorpid Tail Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ScorpidTailLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidTailLasher_Lash", 8000, 0)
end

function ScorpidTailLasher_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6607, pUnit:GetMainTank()) 
end

function ScorpidTailLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidTailLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidTailLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5423, 1, "ScorpidTailLasher_OnCombat")
RegisterUnitEvent(5423, 2, "ScorpidTailLasher_OnLeaveCombat")
RegisterUnitEvent(5423, 3, "ScorpidTailLasher_OnKilledTarget")
RegisterUnitEvent(5423, 4, "ScorpidTailLasher_OnDied")

--[[ Tanaris -- Soriid the Devourer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SoriidtheDevourer_OnCombat(Unit, Event)
Unit:RegisterEvent("SoriidtheDevourer_PierceArmor", 25000, 0)
Unit:RegisterEvent("SoriidtheDevourer_Rend", 20000, 0)
end

function SoriidtheDevourer_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12097, pUnit:GetMainTank()) 
end

function SoriidtheDevourer_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13445, pUnit:GetMainTank()) 
end

function SoriidtheDevourer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SoriidtheDevourer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SoriidtheDevourer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8204, 1, "SoriidtheDevourer_OnCombat")
RegisterUnitEvent(8204, 2, "SoriidtheDevourer_OnLeaveCombat")
RegisterUnitEvent(8204, 3, "SoriidtheDevourer_OnKilledTarget")
RegisterUnitEvent(8204, 4, "SoriidtheDevourer_OnDied")

--[[ Tanaris -- Southsea Dock Worker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SouthseaDockWorker_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaDockWorker_HeadCrack", 10000, 0)
end

function SouthseaDockWorker_HeadCrack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3148, pUnit:GetMainTank()) 
end

function SouthseaDockWorker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaDockWorker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaDockWorker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7857, 1, "SouthseaDockWorker_OnCombat")
RegisterUnitEvent(7857, 2, "SouthseaDockWorker_OnLeaveCombat")
RegisterUnitEvent(7857, 3, "SouthseaDockWorker_OnKilledTarget")
RegisterUnitEvent(7857, 4, "SouthseaDockWorker_OnDied")

--[[ Tanaris -- Southsea Freebooter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SouthseaFreebooter_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaFreebooter_Shot", 6000, 0)
end

function SouthseaFreebooter_Shot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SouthseaFreebooter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaFreebooter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaFreebooter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7856, 1, "SouthseaFreebooter_OnCombat")
RegisterUnitEvent(7856, 2, "SouthseaFreebooter_OnLeaveCombat")
RegisterUnitEvent(7856, 3, "SouthseaFreebooter_OnKilledTarget")
RegisterUnitEvent(7856, 4, "SouthseaFreebooter_OnDied")

--[[ Tanaris -- Southsea Pirate.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SouthseaPirate_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaPirate_Strike", 6000, 0)
end

function SouthseaPirate_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function SouthseaPirate_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaPirate_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaPirate_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7855, 1, "SouthseaPirate_OnCombat")
RegisterUnitEvent(7855, 2, "SouthseaPirate_OnLeaveCombat")
RegisterUnitEvent(7855, 3, "SouthseaPirate_OnKilledTarget")
RegisterUnitEvent(7855, 4, "SouthseaPirate_OnDied")

--[[ Tanaris -- Southsea Swashbuckler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SouthseaSwashbuckler_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaSwashbuckler_Disarm", 10000, 0)
end

function SouthseaSwashbuckler_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function SouthseaSwashbuckler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaSwashbuckler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaSwashbuckler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7858, 1, "SouthseaSwashbuckler_OnCombat")
RegisterUnitEvent(7858, 2, "SouthseaSwashbuckler_OnLeaveCombat")
RegisterUnitEvent(7858, 3, "SouthseaSwashbuckler_OnKilledTarget")
RegisterUnitEvent(7858, 4, "SouthseaSwashbuckler_OnDied")

--[[ Tanaris -- Thistleshrub Dew Collector.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ThistleshrubDewCollector_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistleshrubDewCollector_EntanglingRoots", 10000, 0)
end

function ThistleshrubDewCollector_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11922, pUnit:GetMainTank()) 
end

function ThistleshrubDewCollector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistleshrubDewCollector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistleshrubDewCollector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5481, 1, "ThistleshrubDewCollector_OnCombat")
RegisterUnitEvent(5481, 2, "ThistleshrubDewCollector_OnLeaveCombat")
RegisterUnitEvent(5481, 3, "ThistleshrubDewCollector_OnKilledTarget")
RegisterUnitEvent(5481, 4, "ThistleshrubDewCollector_OnDied")

--[[ Tanaris -- Thistleshrub Rootshaper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ThistleshrubRootshaper_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistleshrubRootshaper_EarthgrabTotem", 10000, 1)
end

function ThistleshrubRootshaper_EarthgrabTotem(pUnit, Event) 
pUnit:CastSpell(8376) 
end

function ThistleshrubRootshaper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistleshrubRootshaper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistleshrubRootshaper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5485, 1, "ThistleshrubRootshaper_OnCombat")
RegisterUnitEvent(5485, 2, "ThistleshrubRootshaper_OnLeaveCombat")
RegisterUnitEvent(5485, 3, "ThistleshrubRootshaper_OnKilledTarget")
RegisterUnitEvent(5485, 4, "ThistleshrubRootshaper_OnDied")

--[[ Tanaris -- Warleader Krazzilak.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WarleaderKrazzilak_OnCombat(Unit, Event)
Unit:RegisterEvent("WarleaderKrazzilak_Backhand", 8000, 0)
Unit:RegisterEvent("WarleaderKrazzilak_Hamstring", 15000, 0)
Unit:RegisterEvent("WarleaderKrazzilak_InfectedWound", 20000, 1)
end

function WarleaderKrazzilak_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18103, pUnit:GetMainTank()) 
end

function WarleaderKrazzilak_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function WarleaderKrazzilak_InfectedWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17230, pUnit:GetMainTank()) 
end

function WarleaderKrazzilak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarleaderKrazzilak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarleaderKrazzilak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8199, 1, "WarleaderKrazzilak_OnCombat")
RegisterUnitEvent(8199, 2, "WarleaderKrazzilak_OnLeaveCombat")
RegisterUnitEvent(8199, 3, "WarleaderKrazzilak_OnKilledTarget")
RegisterUnitEvent(8199, 4, "WarleaderKrazzilak_OnDied")

--[[ Tanaris -- Wastewander Assassin.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WastewanderAssassin_OnCombat(Unit, Event)
Unit:RegisterEvent("WastewanderAssassin_Execute", 5000, 0)
end

function WastewanderAssassin_Execute(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7160, pUnit:GetMainTank()) 
end

function WastewanderAssassin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastewanderAssassin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastewanderAssassin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5623, 1, "WastewanderAssassin_OnCombat")
RegisterUnitEvent(5623, 2, "WastewanderAssassin_OnLeaveCombat")
RegisterUnitEvent(5623, 3, "WastewanderAssassin_OnKilledTarget")
RegisterUnitEvent(5623, 4, "WastewanderAssassin_OnDied")

--[[ Tanaris -- Wastewander Bandit.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WastewanderBandit_OnCombat(Unit, Event)
Unit:RegisterEvent("WastewanderBandit_Backstab", 5000, 0)
Unit:RegisterEvent("WastewanderBandit_Gouge", 6000, 0)
end

function WastewanderBandit_Backstab(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8721, pUnit:GetMainTank()) 
end

function WastewanderBandit_Gouge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8629, pUnit:GetMainTank()) 
end

function WastewanderBandit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastewanderBandit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastewanderBandit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5618, 1, "WastewanderBandit_OnCombat")
RegisterUnitEvent(5618, 2, "WastewanderBandit_OnLeaveCombat")
RegisterUnitEvent(5618, 3, "WastewanderBandit_OnKilledTarget")
RegisterUnitEvent(5618, 4, "WastewanderBandit_OnDied")

--[[ Tanaris -- Wastewander Rogue.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WastewanderRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("WastewanderRogue_Backstab", 5000, 0)
end

function WastewanderRogue_Backstab(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8721, pUnit:GetMainTank()) 
end

function WastewanderRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastewanderRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastewanderRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5615, 1, "WastewanderRogue_OnCombat")
RegisterUnitEvent(5615, 2, "WastewanderRogue_OnLeaveCombat")
RegisterUnitEvent(5615, 3, "WastewanderRogue_OnKilledTarget")
RegisterUnitEvent(5615, 4, "WastewanderRogue_OnDied")

--[[ Tanaris -- Wastewander Shadow Mage.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WastewanderShadowMage_OnCombat(Unit, Event)
Unit:RegisterEvent("WastewanderShadowMage_Shadowbolt", 8000, 0)
Unit:RegisterEvent("WastewanderShadowMage_Immolate", 10000, 2)
end

function WastewanderShadowMage_Shadowbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20825, pUnit:GetMainTank()) 
end

function WastewanderShadowMage_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20826, pUnit:GetMainTank()) 
end

function WastewanderShadowMage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastewanderShadowMage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastewanderShadowMage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5617, 1, "WastewanderShadowMage_OnCombat")
RegisterUnitEvent(5617, 2, "WastewanderShadowMage_OnLeaveCombat")
RegisterUnitEvent(5617, 3, "WastewanderShadowMage_OnKilledTarget")
RegisterUnitEvent(5617, 4, "WastewanderShadowMage_OnDied")

--[[ Tanaris -- Wastewander Thief.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WastewanderThief_OnCombat(Unit, Event)
Unit:RegisterEvent("WastewanderThief_Disarm", 10000, 0)
end

function WastewanderThief_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function WastewanderThief_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastewanderThief_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastewanderThief_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5616, 1, "WastewanderThief_OnCombat")
RegisterUnitEvent(5616, 2, "WastewanderThief_OnLeaveCombat")
RegisterUnitEvent(5616, 3, "WastewanderThief_OnKilledTarget")
RegisterUnitEvent(5616, 4, "WastewanderThief_OnDied")

--[[ ALL CREDITS GO TO BLUA SCRIPTING AND THE
                 WRITER OF THESE SCRIPTS BLACKHER0 and Mikebeck
    BlackHer0, Novembar, 4th, 2008. --]]