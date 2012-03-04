--[[ Mulgore -- Arra'Chea.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function Arrachea_OnCombat(Unit, Event)
Unit:RegisterEvent("Arrachea_HeadButt", 10000, 0)
end

function Arrachea_HeadButt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6730, pUnit:GetClosestPlayer()) 
end

function Arrachea_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Arrachea_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Arrachea_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3058, 1, "Arrachea_OnCombat")
RegisterUnitEvent(3058, 2, "Arrachea_OnLeaveCombat")
RegisterUnitEvent(3058, 3, "Arrachea_OnKilledTarget")
RegisterUnitEvent(3058, 4, "Arrachea_OnDied")

--[[ Mulgore -- Bel'dun Appraiser.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function BaeldunAppraiser_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunAppraiser_LesserHeal", 5000, 0)
end

function BaeldunAppraiser_LesserHeal(pUnit, Event) 
pUnit:CastSpell(2052) 
end

function BaeldunAppraiser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunAppraiser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunAppraiser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2990, 1, "BaeldunAppraiser_OnCombat")
RegisterUnitEvent(2990, 2, "BaeldunAppraiser_OnLeaveCombat")
RegisterUnitEvent(2990, 3, "BaeldunAppraiser_OnKilledTarget")
RegisterUnitEvent(2990, 4, "BaeldunAppraiser_OnDied")

--[[ Mulgore -- Bristleback Battleboar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]


function BristlebackBattleboar_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackBattleboar_BoarCharge", 8000, 0)
end

function BristlebackBattleboar_BoarCharge(pUnit, Event) 
pUnit:CastSpell(3385) 
end

function BristlebackBattleboar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackBattleboar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackBattleboar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2954, 1, "BristlebackBattleboar_OnCombat")
RegisterUnitEvent(2954, 2, "BristlebackBattleboar_OnLeaveCombat")
RegisterUnitEvent(2954, 3, "BristlebackBattleboar_OnKilledTarget")
RegisterUnitEvent(2954, 4, "BristlebackBattleboar_OnDied")

--[[ Mulgore -- Bristleback Interloper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function BristlebackInterloper_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackInterloper_MuscleTear", 10000, 0)
end

function BristlebackInterloper_MuscleTear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12166, pUnit:GetMainTank()) 
end

function BristlebackInterloper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackInterloper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackInterloper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3232, 1, "BristlebackInterloper_OnCombat")
RegisterUnitEvent(3232, 2, "BristlebackInterloper_OnLeaveCombat")
RegisterUnitEvent(3232, 3, "BristlebackInterloper_OnKilledTarget")
RegisterUnitEvent(3232, 4, "BristlebackInterloper_OnDied")

--[[ Mulgore -- Bristleback Shamman.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function BristlebackShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackShaman_LightningBolt", 5000, 0)
end

function BristlebackShaman_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetClosestPlayer()) 
end

function BristlebackShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2953, 1, "BristlebackShaman_OnCombat")
RegisterUnitEvent(2953, 2, "BristlebackShaman_OnLeaveCombat")
RegisterUnitEvent(2953, 3, "BristlebackShaman_OnKilledTarget")
RegisterUnitEvent(2953, 4, "BristlebackShaman_OnDied")

--[[ Mulgore -- Elder Plainstrider.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function ElderPlainstrider_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderPlainstrider_DustCloud", 20000, 0)
end

function ElderPlainstrider_DustCloud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7272, pUnit:GetClosestPlayer()) 
end

function ElderPlainstrider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderPlainstrider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderPlainstrider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2957, 1, "ElderPlainstrider_OnCombat")
RegisterUnitEvent(2957, 2, "ElderPlainstrider_OnLeaveCombat")
RegisterUnitEvent(2957, 3, "ElderPlainstrider_OnKilledTarget")
RegisterUnitEvent(2957, 4, "ElderPlainstrider_OnDied")

--[[ Mulgore -- Galak Outrunner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]


function GalakOutrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakOutrunner_Shot", 6000, 0)
end

function GalakOutrunner_Shot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GalakOutrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakOutrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakOutrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2968, 1, "GalakOutrunner_OnCombat")
RegisterUnitEvent(2968, 2, "GalakOutrunner_OnLeaveCombat")
RegisterUnitEvent(2968, 3, "GalakOutrunner_OnKilledTarget")
RegisterUnitEvent(2968, 4, "GalakOutrunner_OnDied")

--[[ Mulgore -- Kodo Bull.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function KodoBull_OnCombat(Unit, Event)
Unit:RegisterEvent("KodoBull_Tramble", 6000, 0)
end

function KodoBull_Tramble(pUnit, Event) 
pUnit:CastSpell(5568, pUnit:GetClosestPlayer()) 
end

function KodoBull_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KodoBull_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KodoBull_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2973, 1, "KodoBull_OnCombat")
RegisterUnitEvent(2973, 2, "KodoBull_OnLeaveCombat")
RegisterUnitEvent(2973, 3, "KodoBull_OnKilledTarget")
RegisterUnitEvent(2973, 4, "KodoBull_OnDied")

--[[ Mulgore -- Kodo Calf.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function KodoCalf_OnCombat(Unit, Event)
Unit:RegisterEvent("KodoCalf_RushingCharge", 10000, 0)
end

function KodoCalf_RushingCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6268, pUnit:GetMainTank()) 
end

function KodoCalf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KodoCalf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KodoCalf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2972, 1, "KodoCalf_OnCombat")
RegisterUnitEvent(2972, 2, "KodoCalf_OnLeaveCombat")
RegisterUnitEvent(2972, 3, "KodoCalf_OnKilledTarget")
RegisterUnitEvent(2972, 4, "KodoCalf_OnDied")

--[[ Mulgore -- Kodo Matriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function KodoMatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("KodoMatriarch_Tramble", 6000, 0)
end

function KodoMatriarch_Tramble(pUnit, Event) 
pUnit:CastSpell(5568, pUnit:GetClosestPlayer()) 
end

function KodoMatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KodoMatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KodoMatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2974, 1, "KodoMatriarch_OnCombat")
RegisterUnitEvent(2974, 2, "KodoMatriarch_OnLeaveCombat")
RegisterUnitEvent(2974, 3, "KodoMatriarch_OnKilledTarget")
RegisterUnitEvent(2974, 4, "KodoMatriarch_OnDied")

--[[ Mulgore -- Mazzranache.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function Mazzranache_OnCombat(Unit, Event)
Unit:RegisterEvent("Mazzranache_DeadlyPoison", 10000, 0)
Unit:RegisterEvent("Mazzranache_RushingCharge", 8000, 0)
end

function Mazzranache_DeadlyPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3538, pUnit:GetMainTank()) 
end

function Mazzranache_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function Mazzranache_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Mazzranache_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Mazzranache_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3068, 1, "Mazzranache_OnCombat")
RegisterUnitEvent(3068, 2, "Mazzranache_OnLeaveCombat")
RegisterUnitEvent(3068, 3, "Mazzranache_OnKilledTarget")
RegisterUnitEvent(3068, 4, "Mazzranache_OnDied")

--[[ Mulgore -- Palemane Poacher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function PalemanePoacher_OnCombat(Unit, Event)
Unit:RegisterEvent("PalemanePoacher_QuickShot", 10000, 0)
Unit:RegisterEvent("PalemanePoacher_Shoot", 6000, 0)
end

function PalemanePoacher_QuickShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1516, pUnit:GetMainTank()) 
end

function PalemanePoacher_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function PalemanePoacher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PalemanePoacher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PalemanePoacher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2951, 1, "PalemanePoacher_OnCombat")
RegisterUnitEvent(2951, 2, "PalemanePoacher_OnLeaveCombat")
RegisterUnitEvent(2951, 3, "PalemanePoacher_OnKilledTarget")
RegisterUnitEvent(2951, 4, "PalemanePoacher_OnDied")

--[[ Mulgore -- Palemane Skinner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function PalemaneSkinner_OnCombat(Unit, Event)
Unit:RegisterEvent("PalemaneSkinner_Rejuvenation", 10000, 0)
end

function PalemaneSkinner_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(774) 
end

function PalemaneSkinner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PalemaneSkinner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PalemaneSkinner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2950, 1, "PalemaneSkinner_OnCombat")
RegisterUnitEvent(2950, 2, "PalemaneSkinner_OnLeaveCombat")
RegisterUnitEvent(2950, 3, "PalemaneSkinner_OnKilledTarget")
RegisterUnitEvent(2950, 4, "PalemaneSkinner_OnDied")

--[[ Mulgore -- Palemane Tanner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function PalemaneTanner_OnCombat(Unit, Event)
Unit:RegisterEvent("PalemaneTanner_Wrath", 10000, 0)
end

function PalemaneTanner_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function PalemaneTanner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PalemaneTanner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PalemaneTanner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2949, 1, "PalemaneTanner_OnCombat")
RegisterUnitEvent(2949, 2, "PalemaneTanner_OnLeaveCombat")
RegisterUnitEvent(2949, 3, "PalemaneTanner_OnKilledTarget")
RegisterUnitEvent(2949, 4, "PalemaneTanner_OnDied")

--[[ Mulgore -- Prairie Wolf.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function PrairieWolf_OnCombat(Unit, Event)
Unit:RegisterEvent("PrairieWolf_ThreateningGrowl", 10000, 2)
end

function PrairieWolf_ThreateningGrowl(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5781, pUnit:GetMainTank()) 
end

function PrairieWolf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PrairieWolf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PrairieWolf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2958, 1, "PrairieWolf_OnCombat")
RegisterUnitEvent(2958, 2, "PrairieWolf_OnLeaveCombat")
RegisterUnitEvent(2958, 3, "PrairieWolf_OnKilledTarget")
RegisterUnitEvent(2958, 4, "PrairieWolf_OnDied")

--[[ Mulgore -- Prairie Wolf Alfa.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function PrairieWolfAlfa_OnCombat(Unit, Event)
Unit:RegisterEvent("PrairieWolfAlfa_ThreateningGrowl", 10000, 2)
end

function PrairieWolfAlfa_ThreateningGrowl(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5781, pUnit:GetMainTank()) 
end

function PrairieWolfAlfa_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PrairieWolfAlfa_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PrairieWolfAlfa_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2960, 1, "PrairieWolfAlfa_OnCombat")
RegisterUnitEvent(2960, 2, "PrairieWolfAlfa_OnLeaveCombat")
RegisterUnitEvent(2960, 3, "PrairieWolfAlfa_OnKilledTarget")
RegisterUnitEvent(2960, 4, "PrairieWolfAlfa_OnDied")

--[[ Mulgore -- Seer Graytongue.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SeerGraytongue_OnCombat(Unit, Event)
Unit:RegisterEvent("SeerGraytongue_MarkoftheWild", 1000, 1)
end

function SeerGraytongue_MarkoftheWild(pUnit, Event) 
pUnit:CastSpell(1126) 
end

function SeerGraytongue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeerGraytongue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeerGraytongue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2982, 1, "SeerGraytongue_OnCombat")
RegisterUnitEvent(2982, 2, "SeerGraytongue_OnLeaveCombat")
RegisterUnitEvent(2982, 3, "SeerGraytongue_OnKilledTarget")
RegisterUnitEvent(2982, 4, "SeerGraytongue_OnDied")

--[[ Mulgore -- Seer Ravenfeather.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SeerRavenfeather_OnCombat(Unit, Event)
Unit:RegisterEvent("SeerRavenfeather_RockSkin", 10000, 0)
end

function SeerRavenfeather_RockSkin(pUnit, Event) 
pUnit:CastSpell(8314) 
end

function SeerRavenfeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeerRavenfeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeerRavenfeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5888, 1, "SeerRavenfeather_OnCombat")
RegisterUnitEvent(5888, 2, "SeerRavenfeather_OnLeaveCombat")
RegisterUnitEvent(5888, 3, "SeerRavenfeather_OnKilledTarget")
RegisterUnitEvent(5888, 4, "SeerRavenfeather_OnDied")

--[[ Mulgore -- Seer Wiserunner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SeerWiserunner_OnCombat(Unit, Event)
Unit:RegisterEvent("SeerWiserunner_MarkoftheWild", 1000, 1)
end

function SeerWiserunner_MarkoftheWild(pUnit, Event) 
pUnit:CastSpell(1126) 
end

function SeerWiserunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeerWiserunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeerWiserunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2984, 1, "SeerWiserunner_OnCombat")
RegisterUnitEvent(2984, 2, "SeerWiserunner_OnLeaveCombat")
RegisterUnitEvent(2984, 3, "SeerWiserunner_OnKilledTarget")
RegisterUnitEvent(2984, 4, "SeerWiserunner_OnDied")

--[[ Mulgore -- Sister Hatelash.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SisterHatelash_OnCombat(Unit, Event)
Unit:RegisterEvent("SisterHatelash_LightningBarrier", 1000, 1)
Unit:RegisterEvent("SisterHatelash_LightningBolt", 8000, 0)
end

function SisterHatelash_LightningBarrier(pUnit, Event) 
pUnit:CastSpell(6960) 
end

function SisterHatelash_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetClosestPlayer()) 
end

function SisterHatelash_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SisterHatelash_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SisterHatelash_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5785, 1, "SisterHatelash_OnCombat")
RegisterUnitEvent(5785, 2, "SisterHatelash_OnLeaveCombat")
RegisterUnitEvent(5785, 3, "SisterHatelash_OnKilledTarget")
RegisterUnitEvent(5785, 4, "SisterHatelash_OnDied")

--[[ Mulgore -- Swoop.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function Swoop_OnCombat(Unit, Event)
Unit:RegisterEvent("Swoop_Swoop", 6000, 0)
end

function Swoop_Swoop(pUnit, Event) 
pUnit:CastSpell(5708) 
end

function Swoop_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Swoop_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Swoop_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2970, 1, "Swoop_OnCombat")
RegisterUnitEvent(2970, 2, "Swoop_OnLeaveCombat")
RegisterUnitEvent(2970, 3, "Swoop_OnKilledTarget")
RegisterUnitEvent(2970, 4, "Swoop_OnDied")

--[[ Mulgore -- Snagglespear.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function Snagglespear_OnCombat(Unit, Event)
Unit:RegisterEvent("Snagglespear_Net", 10000, 0)
end

function Snagglespear_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function Snagglespear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Snagglespear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Snagglespear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5786, 1, "Snagglespear_OnCombat")
RegisterUnitEvent(5786, 2, "Snagglespear_OnLeaveCombat")
RegisterUnitEvent(5786, 3, "Snagglespear_OnKilledTarget")
RegisterUnitEvent(5786, 4, "Snagglespear_OnDied")

--[[ Mulgore -- Taloned Swoop.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function TalonedSwoop_OnCombat(Unit, Event)
Unit:RegisterEvent("TalonedSwoop_Swoop", 6000, 0)
end

function TalonedSwoop_TalonedSwoop(pUnit, Event) 
pUnit:CastSpell(5708) 
end

function TalonedSwoop_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TalonedSwoop_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TalonedSwoop_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2971, 1, "TalonedSwoop_OnCombat")
RegisterUnitEvent(2971, 2, "TalonedSwoop_OnLeaveCombat")
RegisterUnitEvent(2971, 3, "TalonedSwoop_OnKilledTarget")
RegisterUnitEvent(2971, 4, "TalonedSwoop_OnDied")

--[[ Mulgore -- The Rake.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function TheRake_OnCombat(Unit, Event)
Unit:RegisterEvent("TheRake_MuscleTear", 8000, 0)
end

function TheRake_MuscleTear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12166, pUnit:GetMainTank()) 
end

function TheRake_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheRake_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheRake_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5807, 1, "TheRake_OnCombat")
RegisterUnitEvent(5807, 2, "TheRake_OnLeaveCombat")
RegisterUnitEvent(5807, 3, "TheRake_OnKilledTarget")
RegisterUnitEvent(5807, 4, "TheRake_OnDied")

--[[ Mulgore -- Venture Co. Supervisor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function VentureCoSupervisor_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoSupervisor_BattleShout", 10000, 2)
end

function VentureCoSupervisor_BattleShout(pUnit, Event) 
pUnit:CastSpell(6673) 
end

function VentureCoSupervisor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoSupervisor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoSupervisor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2979, 1, "VentureCoSupervisor_OnCombat")
RegisterUnitEvent(2979, 2, "VentureCoSupervisor_OnLeaveCombat")
RegisterUnitEvent(2979, 3, "VentureCoSupervisor_OnKilledTarget")
RegisterUnitEvent(2979, 4, "VentureCoSupervisor_OnDied")

--[[ Mulgore -- Windfury Matriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function WindfuryMatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("WindfuryMatriarch_LightningBolt", 8000, 0)
Unit:RegisterEvent("WindfuryMatriarch_HealingWave", 15000, 0)
end

function WindfuryMatriarch_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetClosestPlayer()) 
end

function WindfuryMatriarch_HealingWave(pUnit, Event) 
pUnit:CastSpell(332) 
end

function WindfuryMatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WindfuryMatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WindfuryMatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2965, 1, "WindfuryMatriarch_OnCombat")
RegisterUnitEvent(2965, 2, "WindfuryMatriarch_OnLeaveCombat")
RegisterUnitEvent(2965, 3, "WindfuryMatriarch_OnKilledTarget")
RegisterUnitEvent(2965, 4, "WindfuryMatriarch_OnDied")

--[[ Mulgore -- Windfury Sorceress.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function WindfurySorceress_OnCombat(Unit, Event)
Unit:RegisterEvent("WindfurySorceress_Frostbolt", 8000, 0)
end

function WindfurySorceress_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13322, pUnit:GetMainTank()) 
end

function WindfurySorceress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WindfurySorceress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WindfurySorceress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2964, 1, "WindfurySorceress_OnCombat")
RegisterUnitEvent(2964, 2, "WindfurySorceress_OnLeaveCombat")
RegisterUnitEvent(2964, 3, "WindfurySorceress_OnKilledTarget")
RegisterUnitEvent(2964, 4, "WindfurySorceress_OnDied")

--[[ Mulgore -- Wiry Swoop.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function WirySwoop_OnCombat(Unit, Event)
Unit:RegisterEvent("WirySwoop_Swoop", 6000, 0)
end

function WirySwoop_WirySwoop(pUnit, Event) 
pUnit:CastSpell(5708) 
end

function WirySwoop_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WirySwoop_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WirySwoop_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2969, 1, "WirySwoop_OnCombat")
RegisterUnitEvent(2969, 2, "WirySwoop_OnLeaveCombat")
RegisterUnitEvent(2969, 3, "WirySwoop_OnKilledTarget")
RegisterUnitEvent(2969, 4, "WirySwoop_OnDied")

--[[ ALL CREDITS GO TO BLUA SCRIPTING AND THE
                 WRITER OF THESE SCRIPTS BLACKHER0 and Mikebeck
    BlackHer0, Novembar, 1th, 2008. --]]