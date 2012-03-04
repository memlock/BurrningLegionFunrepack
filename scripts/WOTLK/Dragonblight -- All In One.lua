--[[ Dragonblight -- Wyrmbait.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Wyrmbait_OnCombat(Unit, Event)
Unit:RegisterEvent("Wyrmbait_Shoot", 6000, 0)
end

function Wyrmbait_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function Wyrmbait_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Wyrmbait_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Wyrmbait_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27843, 1, "Wyrmbait_OnCombat")
RegisterUnitEvent(27843, 2, "Wyrmbait_OnLeaveCombat")
RegisterUnitEvent(27843, 3, "Wyrmbait_OnKilledTarget")
RegisterUnitEvent(27843, 4, "Wyrmbait_OnDied")


--[[ Dragonblight -- 7th Legion Wyrm Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionWyrmHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionWyrmHunter_Shoot", 6000, 0)
end

function thLegionWyrmHunter_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function thLegionWyrmHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionWyrmHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionWyrmHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26779, 1, "thLegionWyrmHunter_OnCombat")
RegisterUnitEvent(26779, 2, "thLegionWyrmHunter_OnLeaveCombat")
RegisterUnitEvent(26779, 3, "thLegionWyrmHunter_OnKilledTarget")
RegisterUnitEvent(26779, 4, "thLegionWyrmHunter_OnDied")


--[[ Dragonblight -- 7th Legion Cavalier.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionCavalier_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionCavalier_MortalStrike", 8000, 0)
Unit:RegisterEvent("thLegionCavalier_SnapKick", 6000, 0)
end

function thLegionCavalier_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19643, pUnit:GetMainTank()) 
end

function thLegionCavalier_SnapKick(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15618, pUnit:GetMainTank()) 
end

function thLegionCavalier_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionCavalier_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionCavalier_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27161, 1, "thLegionCavalier_OnCombat")
RegisterUnitEvent(27161, 2, "thLegionCavalier_OnLeaveCombat")
RegisterUnitEvent(27161, 3, "thLegionCavalier_OnKilledTarget")
RegisterUnitEvent(27161, 4, "thLegionCavalier_OnDied")


--[[ Dragonblight -- 7th Legion Cleric.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionCleric_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionCleric_Heal", 14000, 0)
Unit:RegisterEvent("thLegionCleric_HolySmite", 6000, 0)
end

function thLegionCleric_Heal(pUnit, Event) 
pUnit:CastSpell(31739) 
end

function thLegionCleric_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25054, pUnit:GetMainTank()) 
end

function thLegionCleric_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionCleric_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionCleric_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26780, 1, "thLegionCleric_OnCombat")
RegisterUnitEvent(26780, 2, "thLegionCleric_OnLeaveCombat")
RegisterUnitEvent(26780, 3, "thLegionCleric_OnKilledTarget")
RegisterUnitEvent(26780, 4, "thLegionCleric_OnDied")


--[[ Dragonblight -- 7th Legion Elite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionElite_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionElite_Net", 8000, 0)
Unit:RegisterEvent("thLegionElite_Shoot", 6000, 0)
end

function thLegionElite_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function thLegionElite_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50092, pUnit:GetMainTank()) 
end

function thLegionElite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionElite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionElite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27588, 1, "thLegionElite_OnCombat")
RegisterUnitEvent(27588, 2, "thLegionElite_OnLeaveCombat")
RegisterUnitEvent(27588, 3, "thLegionElite_OnKilledTarget")
RegisterUnitEvent(27588, 4, "thLegionElite_OnDied")


--[[ Dragonblight -- 7th Legion Elite2.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionElitetwo_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionElitetwo_Net", 8000, 0)
Unit:RegisterEvent("thLegionElitetwo_Shoot", 6000, 0)
end

function thLegionElitetwo_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function thLegionElitetwo_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50092, pUnit:GetMainTank()) 
end

function thLegionElitetwo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionElitetwo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionElitetwo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27713, 1, "thLegionElitetwo_OnCombat")
RegisterUnitEvent(27713, 2, "thLegionElitetwo_OnLeaveCombat")
RegisterUnitEvent(27713, 3, "thLegionElitetwo_OnKilledTarget")
RegisterUnitEvent(27713, 4, "thLegionElitetwo_OnDied")


--[[ Dragonblight -- 7th Legion Rifleman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionRifleman_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionRifleman_Net", 8000, 0)
Unit:RegisterEvent("thLegionRifleman_Shoot", 6000, 0)
end

function thLegionRifleman_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function thLegionRifleman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50092, pUnit:GetMainTank()) 
end

function thLegionRifleman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionRifleman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionRifleman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27791, 1, "thLegionRifleman_OnCombat")
RegisterUnitEvent(27791, 2, "thLegionRifleman_OnLeaveCombat")
RegisterUnitEvent(27791, 3, "thLegionRifleman_OnKilledTarget")
RegisterUnitEvent(27791, 4, "thLegionRifleman_OnDied")


--[[ Dragonblight -- 7th Legion Infantryman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionInfantryman_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionInfantryman_ConcussionBlow", 10000, 0)
Unit:RegisterEvent("thLegionInfantryman_DemoralizingShout", 2000, 1)
end

function thLegionInfantryman_ConcussionBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32588, pUnit:GetMainTank()) 
end

function thLegionInfantryman_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(16244) 
end

function thLegionInfantryman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionInfantryman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionInfantryman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27160, 1, "thLegionInfantryman_OnCombat")
RegisterUnitEvent(27160, 2, "thLegionInfantryman_OnLeaveCombat")
RegisterUnitEvent(27160, 3, "thLegionInfantryman_OnKilledTarget")
RegisterUnitEvent(27160, 4, "thLegionInfantryman_OnDied")


--[[ Dragonblight -- 7th Legion Sentinel.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionSentinel_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionSentinel_GlaiveThrow", 8000, 0)
Unit:RegisterEvent("thLegionSentinel_Shoot", 6000, 0)
Unit:RegisterEvent("thLegionSentinel_ShootMagicArrow", 7000, 0)
end

function thLegionSentinel_GlaiveThrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49481, pUnit:GetMainTank()) 
end

function thLegionSentinel_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15547, pUnit:GetMainTank()) 
end

function thLegionSentinel_ShootMagicArrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48530, pUnit:GetMainTank()) 
end

function thLegionSentinel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionSentinel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionSentinel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27162, 1, "thLegionSentinel_OnCombat")
RegisterUnitEvent(27162, 2, "thLegionSentinel_OnLeaveCombat")
RegisterUnitEvent(27162, 3, "thLegionSentinel_OnKilledTarget")
RegisterUnitEvent(27162, 4, "thLegionSentinel_OnDied")


--[[ Dragonblight -- Admiral Barean Westwind.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AdmiralBareanWestwind_OnCombat(Unit, Event)
Unit:RegisterEvent("AdmiralBareanWestwind_ProtectionSphere", 15000, 0)
end

function AdmiralBareanWestwind_ProtectionSphere(pUnit, Event) 
pUnit:CastSpell(50161) 
end

function AdmiralBareanWestwind_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AdmiralBareanWestwind_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AdmiralBareanWestwind_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27951, 1, "AdmiralBareanWestwind_OnCombat")
RegisterUnitEvent(27951, 2, "AdmiralBareanWestwind_OnLeaveCombat")
RegisterUnitEvent(27951, 3, "AdmiralBareanWestwind_OnKilledTarget")
RegisterUnitEvent(27951, 4, "AdmiralBareanWestwind_OnDied")


--[[ Dragonblight -- Alliance Conscript.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AllianceConscript_OnCombat(Unit, Event)
Unit:RegisterEvent("AllianceConscript_HeroicStrike", 8000, 0)
Unit:RegisterEvent("AllianceConscript_ShieldBlock", 5000, 0)
Unit:RegisterEvent("AllianceConscript_Shoot", 6000, 0)
end

function AllianceConscript_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(29426, pUnit:GetMainTank()) 
end

function AllianceConscript_ShieldBlock(pUnit, Event) 
pUnit:CastSpell(32587) 
end

function AllianceConscript_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function AllianceConscript_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AllianceConscript_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AllianceConscript_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27564, 1, "AllianceConscript_OnCombat")
RegisterUnitEvent(27564, 2, "AllianceConscript_OnLeaveCombat")
RegisterUnitEvent(27564, 3, "AllianceConscript_OnKilledTarget")
RegisterUnitEvent(27564, 4, "AllianceConscript_OnDied")


--[[ Dragonblight -- Alystros the Verdant Keeper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AlystrostheVerdantKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("AlystrostheVerdantKeeper_LapsingDream", 1000, 1)
Unit:RegisterEvent("AlystrostheVerdantKeeper_TalonStrike", 5000, 0)
Unit:RegisterEvent("AlystrostheVerdantKeeper_WingBeat", 8000, 0)
end

function AlystrostheVerdantKeeper_LapsingDream(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51922, pUnit:GetMainTank()) 
end

function AlystrostheVerdantKeeper_TalonStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51937, pUnit:GetMainTank()) 
end

function AlystrostheVerdantKeeper_WingBeat(pUnit, Event) 
pUnit:CastSpell(51938) 
end

function AlystrostheVerdantKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AlystrostheVerdantKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AlystrostheVerdantKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27249, 1, "AlystrostheVerdantKeeper_OnCombat")
RegisterUnitEvent(27249, 2, "AlystrostheVerdantKeeper_OnLeaveCombat")
RegisterUnitEvent(27249, 3, "AlystrostheVerdantKeeper_OnKilledTarget")
RegisterUnitEvent(27249, 4, "AlystrostheVerdantKeeper_OnDied")


--[[ Dragonblight -- Angrathar Aberration.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AngratharAberration_OnCombat(Unit, Event)
Unit:RegisterEvent("AngratharAberration_Enrage", 1000, 1)
end

function AngratharAberration_Enrage(pUnit, Event) 
pUnit:CastSpell(31540) 
end

function AngratharAberration_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AngratharAberration_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AngratharAberration_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27631, 1, "AngratharAberration_OnCombat")
RegisterUnitEvent(27631, 2, "AngratharAberration_OnLeaveCombat")
RegisterUnitEvent(27631, 3, "AngratharAberration_OnKilledTarget")
RegisterUnitEvent(27631, 4, "AngratharAberration_OnDied")


--[[ Dragonblight -- Angrathar Necrolord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AngratharNecrolord_OnCombat(Unit, Event)
Unit:RegisterEvent("AngratharNecrolord_ShadowBolt", 7000, 0)
end

function AngratharNecrolord_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AngratharNecrolord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AngratharNecrolord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AngratharNecrolord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27603, 1, "AngratharNecrolord_OnCombat")
RegisterUnitEvent(27603, 2, "AngratharNecrolord_OnLeaveCombat")
RegisterUnitEvent(27603, 3, "AngratharNecrolord_OnKilledTarget")
RegisterUnitEvent(27603, 4, "AngratharNecrolord_OnDied")


--[[ Dragonblight -- Anokra the Manipulator.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AnokratheManipulator_OnCombat(Unit, Event)
Unit:RegisterEvent("AnokratheManipulator_MindBlast", 6000, 0)
Unit:RegisterEvent("AnokratheManipulator_MindFlay", 8000, 0)
Unit:RegisterEvent("AnokratheManipulator_WaveringWill", 2000, 1)
end

function AnokratheManipulator_MindBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13860, pUnit:GetMainTank()) 
end

function AnokratheManipulator_MindFlay(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16568, pUnit:GetMainTank()) 
end

function AnokratheManipulator_WaveringWill(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51676, pUnit:GetMainTank()) 
end

function AnokratheManipulator_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnokratheManipulator_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnokratheManipulator_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26769, 1, "AnokratheManipulator_OnCombat")
RegisterUnitEvent(26769, 2, "AnokratheManipulator_OnLeaveCombat")
RegisterUnitEvent(26769, 3, "AnokratheManipulator_OnKilledTarget")
RegisterUnitEvent(26769, 4, "AnokratheManipulator_OnDied")


--[[ Dragonblight -- Anubar Ambusher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AnubarAmbusher_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarAmbusher_Rush", 6000, 0)
end

function AnubarAmbusher_Rush(pUnit, Event) 
pUnit:CastSpell(50347) 
end

function AnubarAmbusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarAmbusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarAmbusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26402, 1, "AnubarAmbusher_OnCombat")
RegisterUnitEvent(26402, 2, "AnubarAmbusher_OnLeaveCombat")
RegisterUnitEvent(26402, 3, "AnubarAmbusher_OnKilledTarget")
RegisterUnitEvent(26402, 4, "AnubarAmbusher_OnDied")


--[[ Dragonblight -- Anubar Blightbeast.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AnubarBlightbeast_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarBlightbeast_BlightedShriek", 8000, 0)
Unit:RegisterEvent("AnubarBlightbeast_PoisonBolt", 6000, 0)
end

function AnubarBlightbeast_BlightedShriek(pUnit, Event) 
pUnit:CastSpell(47443) 
end

function AnubarBlightbeast_PoisonBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21971, pUnit:GetMainTank()) 
end

function AnubarBlightbeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarBlightbeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarBlightbeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26607, 1, "AnubarBlightbeast_OnCombat")
RegisterUnitEvent(26607, 2, "AnubarBlightbeast_OnLeaveCombat")
RegisterUnitEvent(26607, 3, "AnubarBlightbeast_OnKilledTarget")
RegisterUnitEvent(26607, 4, "AnubarBlightbeast_OnDied")


--[[ Dragonblight -- Anubar Cultist.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AnubarCultist_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarCultist_Empower", 2000, 1)
Unit:RegisterEvent("AnubarCultist_ShadowBolt", 8000, 0)
Unit:RegisterEvent("AnubarCultist_Zeal", 3000, 1)
end

function AnubarCultist_Empower(pUnit, Event) 
pUnit:CastSpell(47257) 
end

function AnubarCultist_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AnubarCultist_Zeal(pUnit, Event) 
pUnit:CastSpell(51605) 
end

function AnubarCultist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarCultist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarCultist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26319, 1, "AnubarCultist_OnCombat")
RegisterUnitEvent(26319, 2, "AnubarCultist_OnLeaveCombat")
RegisterUnitEvent(26319, 3, "AnubarCultist_OnKilledTarget")
RegisterUnitEvent(26319, 4, "AnubarCultist_OnDied")


--[[ Dragonblight -- Anubar Dreadweavert.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AnubarDreadweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarDreadweaver_Corruption", 5000, 1)
Unit:RegisterEvent("AnubarDreadweaver_ShadowBolt", 8000, 0)
end

function AnubarDreadweaver_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32063, pUnit:GetMainTank()) 
end

function AnubarDreadweaver_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AnubarDreadweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarDreadweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarDreadweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26413, 1, "AnubarDreadweaver_OnCombat")
RegisterUnitEvent(26413, 2, "AnubarDreadweaver_OnLeaveCombat")
RegisterUnitEvent(26413, 3, "AnubarDreadweaver_OnKilledTarget")
RegisterUnitEvent(26413, 4, "AnubarDreadweaver_OnDied")


--[[ Dragonblight -- Anubar Underlord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AnubarUnderlord_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarUnderlord_RearingStomp", 8000, 0)
end

function AnubarUnderlord_RearingStomp(pUnit, Event) 
pUnit:CastSpell(51681) 
end

function AnubarUnderlord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarUnderlord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarUnderlord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26605, 1, "AnubarUnderlord_OnCombat")
RegisterUnitEvent(26605, 2, "AnubarUnderlord_OnLeaveCombat")
RegisterUnitEvent(26605, 3, "AnubarUnderlord_OnKilledTarget")
RegisterUnitEvent(26605, 4, "AnubarUnderlord_OnDied")


--[[ Dragonblight -- Arcane Wyrm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ArcaneWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("ArcaneWyrm_ArcaneInfusion", 5000, 2)
end

function ArcaneWyrm_ArcaneInfusion(pUnit, Event) 
pUnit:CastSpell(51732) 
end

function ArcaneWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArcaneWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArcaneWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26322, 1, "ArcaneWyrm_OnCombat")
RegisterUnitEvent(26322, 2, "ArcaneWyrm_OnLeaveCombat")
RegisterUnitEvent(26322, 3, "ArcaneWyrm_OnKilledTarget")
RegisterUnitEvent(26322, 4, "ArcaneWyrm_OnDied")


--[[ Dragonblight -- Arcanimus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Arcanimus_OnCombat(Unit, Event)
Unit:RegisterEvent("Arcanimus_ArcaneExplosion", 6000, 0)
end

function Arcanimus_ArcaneExplosion(pUnit, Event) 
pUnit:CastSpell(51820) 
end

function Arcanimus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Arcanimus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Arcanimus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26370, 1, "Arcanimus_OnCombat")
RegisterUnitEvent(26370, 2, "Arcanimus_OnLeaveCombat")
RegisterUnitEvent(26370, 3, "Arcanimus_OnKilledTarget")
RegisterUnitEvent(26370, 4, "Arcanimus_OnDied")


--[[ Dragonblight -- Arctic Ram.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ArcticRam_OnCombat(Unit, Event)
Unit:RegisterEvent("ArcticRam_Gore", 8000, 0)
end

function ArcticRam_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function ArcticRam_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArcticRam_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArcticRam_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26426, 1, "ArcticRam_OnCombat")
RegisterUnitEvent(26426, 2, "ArcticRam_OnLeaveCombat")
RegisterUnitEvent(26426, 3, "ArcticRam_OnKilledTarget")
RegisterUnitEvent(26426, 4, "ArcticRam_OnDied")


--[[ Dragonblight -- Azure Dragon.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AzureDragon_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureDragon_FrostBreath", 10000, 1)
end

function AzureDragon_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49111, pUnit:GetMainTank()) 
end

function AzureDragon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureDragon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureDragon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27608, 1, "AzureDragon_OnCombat")
RegisterUnitEvent(27608, 2, "AzureDragon_OnLeaveCombat")
RegisterUnitEvent(27608, 3, "AzureDragon_OnKilledTarget")
RegisterUnitEvent(27608, 4, "AzureDragon_OnDied")


--[[ Dragonblight -- Azure Drake.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AzureDrake_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureDrake_FrostBreath", 10000, 1)
end

function AzureDrake_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49111, pUnit:GetMainTank()) 
end

function AzureDrake_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureDrake_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureDrake_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27682, 1, "AzureDrake_OnCombat")
RegisterUnitEvent(27682, 2, "AzureDrake_OnLeaveCombat")
RegisterUnitEvent(27682, 3, "AzureDrake_OnKilledTarget")
RegisterUnitEvent(27682, 4, "AzureDrake_OnDied")


--[[ Dragonblight -- Battered Drakkari Berserker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function BatteredDrakkariBerserker_OnCombat(Unit, Event)
Unit:RegisterEvent("BatteredDrakkariBerserker_Enrage", 10000, 1)
Unit:RegisterEvent("BatteredDrakkariBerserker_Knockdown", 6000, 0)
end

function BatteredDrakkariBerserker_Enrage(pUnit, Event) 
pUnit:CastSpell(50420) 
end

function BatteredDrakkariBerserker_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(37592, pUnit:GetMainTank()) 
end

function BatteredDrakkariBerserker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BatteredDrakkariBerserker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BatteredDrakkariBerserker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26943, 1, "BatteredDrakkariBerserker_OnCombat")
RegisterUnitEvent(26943, 2, "BatteredDrakkariBerserker_OnLeaveCombat")
RegisterUnitEvent(26943, 3, "BatteredDrakkariBerserker_OnKilledTarget")
RegisterUnitEvent(26943, 4, "BatteredDrakkariBerserker_OnDied")


--[[ Dragonblight -- Bishop Street.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function BishopStreet_OnCombat(Unit, Event)
Unit:RegisterEvent("BishopStreet_HolySmite", 5000, 0)
Unit:RegisterEvent("BishopStreet_PowerWordShield", 2000, 1)
end

function BishopStreet_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20820, pUnit:GetMainTank()) 
end

function BishopStreet_PowerWordShield(pUnit, Event) 
pUnit:CastSpell(11974) 
end

function BishopStreet_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BishopStreet_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BishopStreet_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27246, 1, "BishopStreet_OnCombat")
RegisterUnitEvent(27246, 2, "BishopStreet_OnLeaveCombat")
RegisterUnitEvent(27246, 3, "BishopStreet_OnKilledTarget")
RegisterUnitEvent(27246, 4, "BishopStreet_OnDied")


--[[ Dragonblight -- Blacksmith Goodman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function BlacksmithGoodman_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksmithGoodman_CrushArmor", 6000, 0)
Unit:RegisterEvent("BlacksmithGoodman_SkullCrack", 8000, 0)
end

function BlacksmithGoodman_CrushArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33661, pUnit:GetMainTank()) 
end

function BlacksmithGoodman_SkullCrack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15621, pUnit:GetMainTank()) 
end

function BlacksmithGoodman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksmithGoodman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksmithGoodman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27234, 1, "BlacksmithGoodman_OnCombat")
RegisterUnitEvent(27234, 2, "BlacksmithGoodman_OnLeaveCombat")
RegisterUnitEvent(27234, 3, "BlacksmithGoodman_OnKilledTarget")
RegisterUnitEvent(27234, 4, "BlacksmithGoodman_OnDied")


--[[ Dragonblight -- Blighted Elk.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function BlightedElk_OnCombat(Unit, Event)
Unit:RegisterEvent("BlightedElk_PlagueBlight", 8000, 0)
end

function BlightedElk_PlagueBlight(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43506, pUnit:GetMainTank()) 
end

function BlightedElk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlightedElk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlightedElk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26616, 1, "BlightedElk_OnCombat")
RegisterUnitEvent(26616, 2, "BlightedElk_OnLeaveCombat")
RegisterUnitEvent(26616, 3, "BlightedElk_OnKilledTarget")
RegisterUnitEvent(26616, 4, "BlightedElk_OnDied")


--[[ Dragonblight -- Bloodfeast.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Bloodfeast_OnCombat(Unit, Event)
Unit:RegisterEvent("Bloodfeast_InciteMaggots", 4000, 1)
end

function Bloodfeast_InciteMaggots(pUnit, Event) 
pUnit:CastSpell(52126) 
end

function Bloodfeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bloodfeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bloodfeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27008, 1, "Bloodfeast_OnCombat")
RegisterUnitEvent(27008, 2, "Bloodfeast_OnLeaveCombat")
RegisterUnitEvent(27008, 3, "Bloodfeast_OnKilledTarget")
RegisterUnitEvent(27008, 4, "Bloodfeast_OnDied")


--[[ Dragonblight -- Bloodpaw Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function BloodpawShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodpawShaman_Bloodlust", 4000, 1)
Unit:RegisterEvent("BloodpawShaman_EarthShock", 6000, 0)
Unit:RegisterEvent("BloodpawShaman_Stormstrike", 8000, 0)
end

function BloodpawShaman_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function BloodpawShaman_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13281, pUnit:GetMainTank()) 
end

function BloodpawShaman_Stormstrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51876, pUnit:GetMainTank()) 
end

function BloodpawShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodpawShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodpawShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27343, 1, "BloodpawShaman_OnCombat")
RegisterUnitEvent(27343, 2, "BloodpawShaman_OnLeaveCombat")
RegisterUnitEvent(27343, 3, "BloodpawShaman_OnKilledTarget")
RegisterUnitEvent(27343, 4, "BloodpawShaman_OnDied")


--[[ Dragonblight -- Bloodpaw Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function BloodpawWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodpawWarrior_Maul", 5000, 0)
end

function BloodpawWarrior_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51875, pUnit:GetMainTank()) 
end

function BloodpawWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodpawWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodpawWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27342, 1, "BloodpawWarrior_OnCombat")
RegisterUnitEvent(27342, 2, "BloodpawWarrior_OnLeaveCombat")
RegisterUnitEvent(27342, 3, "BloodpawWarrior_OnKilledTarget")
RegisterUnitEvent(27342, 4, "BloodpawWarrior_OnDied")


--[[ Dragonblight -- Bonesunder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Bonesunder_OnCombat(Unit, Event)
Unit:RegisterEvent("Bonesunder_BoneCrack", 10000, 0)
end

function Bonesunder_BoneCrack(pUnit, Event) 
pUnit:CastSpell(52080) 
end

function Bonesunder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bonesunder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bonesunder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27006, 1, "Bonesunder_OnCombat")
RegisterUnitEvent(27006, 2, "Bonesunder_OnLeaveCombat")
RegisterUnitEvent(27006, 3, "Bonesunder_OnKilledTarget")
RegisterUnitEvent(27006, 4, "Bonesunder_OnDied")


--[[ Dragonblight -- Bronze Shrine Warden.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function BronzeShrineWarden_OnCombat(Unit, Event)
Unit:RegisterEvent("BronzeShrineWarden_SandBreath", 8000, 0)
Unit:RegisterEvent("BronzeShrineWarden_StopTime", 15000, 0)
end

function BronzeShrineWarden_SandBreath(pUnit, Event) 
pUnit:CastSpell(20716) 
end

function BronzeShrineWarden_StopTime(pUnit, Event) 
pUnit:CastSpell(60077) 
end

function BronzeShrineWarden_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BronzeShrineWarden_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BronzeShrineWarden_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26277, 1, "BronzeShrineWarden_OnCombat")
RegisterUnitEvent(26277, 2, "BronzeShrineWarden_OnLeaveCombat")
RegisterUnitEvent(26277, 3, "BronzeShrineWarden_OnKilledTarget")
RegisterUnitEvent(26277, 4, "BronzeShrineWarden_OnDied")


--[[ Dragonblight -- Burning Depths Necrolyte.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function BurningDepthsNecrolyte_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningDepthsNecrolyte_DestructiveStrike", 6000, 0)
Unit:RegisterEvent("BurningDepthsNecrolyte_ObsidianEssence", 2000, 1)
end

function BurningDepthsNecrolyte_DestructiveStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51430, pUnit:GetMainTank()) 
end

function BurningDepthsNecrolyte_ObsidianEssence(pUnit, Event) 
pUnit:CastSpell(48616) 
end

function BurningDepthsNecrolyte_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningDepthsNecrolyte_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningDepthsNecrolyte_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27356, 1, "BurningDepthsNecrolyte_OnCombat")
RegisterUnitEvent(27356, 2, "BurningDepthsNecrolyte_OnLeaveCombat")
RegisterUnitEvent(27356, 3, "BurningDepthsNecrolyte_OnKilledTarget")
RegisterUnitEvent(27356, 4, "BurningDepthsNecrolyte_OnDied")


--[[ Dragonblight -- Burning Depths Necromancer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function BurningDepthsNecromancer_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningDepthsNecromancer_PowerRelease", 7000, 0)
end

function BurningDepthsNecromancer_PowerRelease(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51431, pUnit:GetMainTank()) 
end

function BurningDepthsNecromancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningDepthsNecromancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningDepthsNecromancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27358, 1, "BurningDepthsNecromancer_OnCombat")
RegisterUnitEvent(27358, 2, "BurningDepthsNecromancer_OnLeaveCombat")
RegisterUnitEvent(27358, 3, "BurningDepthsNecromancer_OnKilledTarget")
RegisterUnitEvent(27358, 4, "BurningDepthsNecromancer_OnDied")


--[[ Dragonblight -- Captain Drayzen.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CaptainDrayzen_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainDrayzen_Cleave", 6000, 0)
Unit:RegisterEvent("CaptainDrayzen_MortalStrike", 8000, 0)
Unit:RegisterEvent("CaptainDrayzen_Whirlwind", 7000, 0)
end

function CaptainDrayzen_Cleave(pUnit, Event) 
pUnit:CastSpell(42724) 
end

function CaptainDrayzen_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15708, pUnit:GetMainTank()) 
end

function CaptainDrayzen_Whirlwind(pUnit, Event) 
pUnit:CastSpell(38619) 
end

function CaptainDrayzen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainDrayzen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainDrayzen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27751, 1, "CaptainDrayzen_OnCombat")
RegisterUnitEvent(27751, 2, "CaptainDrayzen_OnLeaveCombat")
RegisterUnitEvent(27751, 3, "CaptainDrayzen_OnKilledTarget")
RegisterUnitEvent(27751, 4, "CaptainDrayzen_OnDied")


--[[ Dragonblight -- Captain Emmy Malin.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CaptainEmmyMalin_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainEmmyMalin_FrostNova", 10000, 0)
Unit:RegisterEvent("CaptainEmmyMalin_Frostbolt", 8000, 0)
Unit:RegisterEvent("CaptainEmmyMalin_IceLance", 3000, 0)
end

function CaptainEmmyMalin_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function CaptainEmmyMalin_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function CaptainEmmyMalin_IceLance(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49906, pUnit:GetMainTank()) 
end

function CaptainEmmyMalin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainEmmyMalin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainEmmyMalin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26762, 1, "CaptainEmmyMalin_OnCombat")
RegisterUnitEvent(26762, 2, "CaptainEmmyMalin_OnLeaveCombat")
RegisterUnitEvent(26762, 3, "CaptainEmmyMalin_OnKilledTarget")
RegisterUnitEvent(26762, 4, "CaptainEmmyMalin_OnDied")


--[[ Dragonblight -- Captain Iskandar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CaptainIskandar_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainIskandar_Cleave", 6000, 0)
Unit:RegisterEvent("CaptainIskandar_MortalStrike", 8000, 0)
Unit:RegisterEvent("CaptainIskandar_Whirlwind", 7000, 0)
end

function CaptainIskandar_Cleave(pUnit, Event) 
pUnit:CastSpell(42724) 
end

function CaptainIskandar_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15708, pUnit:GetMainTank()) 
end

function CaptainIskandar_Whirlwind(pUnit, Event) 
pUnit:CastSpell(38619) 
end

function CaptainIskandar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainIskandar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainIskandar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27657, 1, "CaptainIskandar_OnCombat")
RegisterUnitEvent(27657, 2, "CaptainIskandar_OnLeaveCombat")
RegisterUnitEvent(27657, 3, "CaptainIskandar_OnKilledTarget")
RegisterUnitEvent(27657, 4, "CaptainIskandar_OnDied")


--[[ Dragonblight -- Captain Shely.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CaptainShely_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainShely_RunThrough", 5000, 1)
end

function CaptainShely_RunThrough(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50853, pUnit:GetMainTank()) 
end

function CaptainShely_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainShely_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainShely_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27232, 1, "CaptainShely_OnCombat")
RegisterUnitEvent(27232, 2, "CaptainShely_OnLeaveCombat")
RegisterUnitEvent(27232, 3, "CaptainShely_OnKilledTarget")
RegisterUnitEvent(27232, 4, "CaptainShely_OnDied")


--[[ Dragonblight -- Chilltusk.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Chilltusk_OnCombat(Unit, Event)
Unit:RegisterEvent("Chilltusk_IceSlash", 6000, 0)
Unit:RegisterEvent("Chilltusk_TuskStrike", 5000, 0)
end

function Chilltusk_IceSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51878, pUnit:GetMainTank()) 
end

function Chilltusk_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function Chilltusk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Chilltusk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Chilltusk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27005, 1, "Chilltusk_OnCombat")
RegisterUnitEvent(27005, 2, "Chilltusk_OnLeaveCombat")
RegisterUnitEvent(27005, 3, "Chilltusk_OnKilledTarget")
RegisterUnitEvent(27005, 4, "Chilltusk_OnDied")


--[[ Dragonblight -- Coldwind Waste Huntress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ColdwindWasteHuntress_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdwindWasteHuntress_EyePeck", 6000, 0)
end

function ColdwindWasteHuntress_EyePeck(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49865, pUnit:GetMainTank()) 
end

function ColdwindWasteHuntress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdwindWasteHuntress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdwindWasteHuntress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26575, 1, "ColdwindWasteHuntress_OnCombat")
RegisterUnitEvent(26575, 2, "ColdwindWasteHuntress_OnLeaveCombat")
RegisterUnitEvent(26575, 3, "ColdwindWasteHuntress_OnKilledTarget")
RegisterUnitEvent(26575, 4, "ColdwindWasteHuntress_OnDied")


--[[ Dragonblight -- Coldwind Witch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ColdwindWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdwindWitch_ColdwindBlast", 7000, 0)
end

function ColdwindWitch_ColdwindBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51877, pUnit:GetMainTank()) 
end

function ColdwindWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdwindWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdwindWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26577, 1, "ColdwindWitch_OnCombat")
RegisterUnitEvent(26577, 2, "ColdwindWitch_OnLeaveCombat")
RegisterUnitEvent(26577, 3, "ColdwindWitch_OnKilledTarget")
RegisterUnitEvent(26577, 4, "ColdwindWitch_OnDied")


--[[ Dragonblight -- Commander Jordan.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CommanderJordan_OnCombat(Unit, Event)
Unit:RegisterEvent("CommanderJordan_AvengingWrath", 6000, 1)
Unit:RegisterEvent("CommanderJordan_Consecration", 7000, 0)
end

function CommanderJordan_AvengingWrath(pUnit, Event) 
pUnit:CastSpell(50837) 
end

function CommanderJordan_Consecration(pUnit, Event) 
pUnit:CastSpell(32773) 
end

function CommanderJordan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CommanderJordan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CommanderJordan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27237, 1, "CommanderJordan_OnCombat")
RegisterUnitEvent(27237, 2, "CommanderJordan_OnLeaveCombat")
RegisterUnitEvent(27237, 3, "CommanderJordan_OnKilledTarget")
RegisterUnitEvent(27237, 4, "CommanderJordan_OnDied")


--[[ Dragonblight -- Corrupted Lothalor Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CorruptedLothalorAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedLothalorAncient_ArcaneDischarge", 6000, 0)
Unit:RegisterEvent("CorruptedLothalorAncient_ArcaneExplosion", 5000, 0)
end

function CorruptedLothalorAncient_ArcaneDischarge(pUnit, Event) 
pUnit:CastSpell(51727) 
end

function CorruptedLothalorAncient_ArcaneExplosion(pUnit, Event) 
pUnit:CastSpell(51725) 
end

function CorruptedLothalorAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedLothalorAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedLothalorAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26333, 1, "CorruptedLothalorAncient_OnCombat")
RegisterUnitEvent(26333, 2, "CorruptedLothalorAncient_OnLeaveCombat")
RegisterUnitEvent(26333, 3, "CorruptedLothalorAncient_OnKilledTarget")
RegisterUnitEvent(26333, 4, "CorruptedLothalorAncient_OnDied")


--[[ Dragonblight -- Corrupted Rager.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CorruptedRager_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedRager_CorrodeArmor", 8000, 0)
end

function CorruptedRager_CorrodeArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51613, pUnit:GetMainTank()) 
end

function CorruptedRager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedRager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedRager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(21223, 1, "CorruptedRager_OnCombat")
RegisterUnitEvent(21223, 2, "CorruptedRager_OnLeaveCombat")
RegisterUnitEvent(21223, 3, "CorruptedRager_OnKilledTarget")
RegisterUnitEvent(21223, 4, "CorruptedRager_OnDied")


function CrazedInduleSurvivor_OnCombat(Unit, Event)
Unit:RegisterEvent("CrazedInduleSurvivor_Crazed", 4000, 1)
Unit:RegisterEvent("CrazedInduleSurvivor_MortalStrike", 7000, 0)
end

function CrazedInduleSurvivor_Crazed(pUnit, Event) 
pUnit:CastSpell(48139) 
end

function CrazedInduleSurvivor_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39171, pUnit:GetMainTank()) 
end

function CrazedInduleSurvivor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrazedInduleSurvivor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrazedInduleSurvivor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32409, 1, "CrazedInduleSurvivor_OnCombat")
RegisterUnitEvent(32409, 2, "CrazedInduleSurvivor_OnLeaveCombat")
RegisterUnitEvent(32409, 3, "CrazedInduleSurvivor_OnKilledTarget")
RegisterUnitEvent(32409, 4, "CrazedInduleSurvivor_OnDied")


--[[ Dragonblight -- Crystalline Ice Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CrystallineIceElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("CrystallineIceElemental_IceSlash", 6000, 0)
end

function CrystallineIceElemental_IceSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51878, pUnit:GetMainTank()) 
end

function CrystallineIceElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrystallineIceElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrystallineIceElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26316, 1, "CrystallineIceElemental_OnCombat")
RegisterUnitEvent(26316, 2, "CrystallineIceElemental_OnLeaveCombat")
RegisterUnitEvent(26316, 3, "CrystallineIceElemental_OnKilledTarget")
RegisterUnitEvent(26316, 4, "CrystallineIceElemental_OnDied")


--[[ Dragonblight -- Crystalline Ice Giant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CrystallineIceGiant_OnCombat(Unit, Event)
Unit:RegisterEvent("CrystallineIceGiant_IceStalagmite", 8000, 0)
Unit:RegisterEvent("CrystallineIceGiant_IceBoulder", 5500, 0)
end

function CrystallineIceGiant_IceStalagmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50597, pUnit:GetMainTank()) 
end

function CrystallineIceGiant_IceBoulder(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50588, pUnit:GetMainTank()) 
end

function CrystallineIceGiant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrystallineIceGiant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrystallineIceGiant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26291, 1, "CrystallineIceGiant_OnCombat")
RegisterUnitEvent(26291, 2, "CrystallineIceGiant_OnLeaveCombat")
RegisterUnitEvent(26291, 3, "CrystallineIceGiant_OnKilledTarget")
RegisterUnitEvent(26291, 4, "CrystallineIceGiant_OnDied")


--[[ Dragonblight -- Dahlia Suntouch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DahliaSuntouch_OnCombat(Unit, Event)
Unit:RegisterEvent("DahliaSuntouch_BansheeCurse", 4000, 1)
Unit:RegisterEvent("DahliaSuntouch_BansheeScreech", 6000, 1)
Unit:RegisterEvent("DahliaSuntouch_BansheeWail", 7000, 0)
end

function DahliaSuntouch_BansheeCurse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51899, pUnit:GetMainTank()) 
end

function DahliaSuntouch_BansheeScreech(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51897, pUnit:GetMainTank()) 
end

function DahliaSuntouch_BansheeWail(pUnit, Event) 
pUnit:FullCastSpellOnTarget(28993, pUnit:GetMainTank()) 
end

function DahliaSuntouch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DahliaSuntouch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DahliaSuntouch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27680, 1, "DahliaSuntouch_OnCombat")
RegisterUnitEvent(27680, 2, "DahliaSuntouch_OnLeaveCombat")
RegisterUnitEvent(27680, 3, "DahliaSuntouch_OnKilledTarget")
RegisterUnitEvent(27680, 4, "DahliaSuntouch_OnDied")


--[[ Dragonblight -- Darkspear Spear Thrower.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DarkspearSpearThrower_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkspearSpearThrower_Net", 10000, 0)
Unit:RegisterEvent("DarkspearSpearThrower_Throw", 5000, 0)
end

function DarkspearSpearThrower_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function DarkspearSpearThrower_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38556, pUnit:GetMainTank()) 
end

function DarkspearSpearThrower_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkspearSpearThrower_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkspearSpearThrower_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27560, 1, "DarkspearSpearThrower_OnCombat")
RegisterUnitEvent(27560, 2, "DarkspearSpearThrower_OnLeaveCombat")
RegisterUnitEvent(27560, 3, "DarkspearSpearThrower_OnKilledTarget")
RegisterUnitEvent(27560, 4, "DarkspearSpearThrower_OnDied")


--[[ Dragonblight -- Death Knight Champion.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DeathKnightChampion_OnCombat(Unit, Event)
Unit:RegisterEvent("DeathKnightChampion_BloodPresence", 1000, 1)
Unit:RegisterEvent("DeathKnightChampion_PlagueStrike", 8000, 0)
end

function DeathKnightChampion_BloodPresence(pUnit, Event) 
pUnit:CastSpell(50689) 
end

function DeathKnightChampion_PlagueStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50688, pUnit:GetMainTank()) 
end

function DeathKnightChampion_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeathKnightChampion_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeathKnightChampion_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27288, 1, "DeathKnightChampion_OnCombat")
RegisterUnitEvent(27288, 2, "DeathKnightChampion_OnLeaveCombat")
RegisterUnitEvent(27288, 3, "DeathKnightChampion_OnKilledTarget")
RegisterUnitEvent(27288, 4, "DeathKnightChampion_OnDied")


--[[ Dragonblight -- Deathbringer Revenant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DeathbringerRevenant_OnCombat(Unit, Event)
Unit:RegisterEvent("DeathbringerRevenant_Strangulate", 8000, 0)
end

function DeathbringerRevenant_Strangulate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51131, pUnit:GetMainTank()) 
end

function DeathbringerRevenant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeathbringerRevenant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeathbringerRevenant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27382, 1, "DeathbringerRevenant_OnCombat")
RegisterUnitEvent(27382, 2, "DeathbringerRevenant_OnLeaveCombat")
RegisterUnitEvent(27382, 3, "DeathbringerRevenant_OnKilledTarget")
RegisterUnitEvent(27382, 4, "DeathbringerRevenant_OnDied")


--[[ Dragonblight -- Decrepit Necromancer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DecrepitNecromancer_OnCombat(Unit, Event)
Unit:RegisterEvent("DecrepitNecromancer_ConversionBeam", 8000, 0)
Unit:RegisterEvent("DecrepitNecromancer_ShadowBolt", 5000, 0)
end

function DecrepitNecromancer_ConversionBeam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50659, pUnit:GetMainTank()) 
end

function DecrepitNecromancer_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function DecrepitNecromancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DecrepitNecromancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DecrepitNecromancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26942, 1, "DecrepitNecromancer_OnCombat")
RegisterUnitEvent(26942, 2, "DecrepitNecromancer_OnLeaveCombat")
RegisterUnitEvent(26942, 3, "DecrepitNecromancer_OnKilledTarget")
RegisterUnitEvent(26942, 4, "DecrepitNecromancer_OnDied")


--[[ Dragonblight -- Deranged Indule Villager.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DerangedInduleVillager_OnCombat(Unit, Event)
Unit:RegisterEvent("DerangedInduleVillager_DerangedTantrum", 7000, 0)
end

function DerangedInduleVillager_DerangedTantrum(pUnit, Event) 
pUnit:CastSpell(51782) 
end

function DerangedInduleVillager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DerangedInduleVillager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DerangedInduleVillager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26411, 1, "DerangedInduleVillager_OnCombat")
RegisterUnitEvent(26411, 2, "DerangedInduleVillager_OnLeaveCombat")
RegisterUnitEvent(26411, 3, "DerangedInduleVillager_OnKilledTarget")
RegisterUnitEvent(26411, 4, "DerangedInduleVillager_OnDied")


--[[ Dragonblight -- Devout Bodyguard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DevoutBodyguard_OnCombat(Unit, Event)
Unit:RegisterEvent("DevoutBodyguard_PiercingHowl", 8000, 0)
end

function DevoutBodyguard_PiercingHowl(pUnit, Event) 
pUnit:CastSpell(38256) 
end

function DevoutBodyguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DevoutBodyguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DevoutBodyguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27247, 1, "DevoutBodyguard_OnCombat")
RegisterUnitEvent(27247, 2, "DevoutBodyguard_OnLeaveCombat")
RegisterUnitEvent(27247, 3, "DevoutBodyguard_OnKilledTarget")
RegisterUnitEvent(27247, 4, "DevoutBodyguard_OnDied")


--[[ Dragonblight -- Dragonblight Mage Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DragonblightMageHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("DragonblightMageHunter_ArcaneReflection", 9000, 1)
Unit:RegisterEvent("DragonblightMageHunter_FireReflection", 8000, 1)
Unit:RegisterEvent("DragonblightMageHunter_FrostReflection", 7000, 1)
Unit:RegisterEvent("DragonblightMageHunter_ShadowReflection", 6000, 1)
end

function DragonblightMageHunter_ArcaneReflection(pUnit, Event) 
pUnit:CastSpell(51766) 
end

function DragonblightMageHunter_FireReflection(pUnit, Event) 
pUnit:CastSpell(51758) 
end

function DragonblightMageHunter_FrostReflection(pUnit, Event) 
pUnit:CastSpell(51763) 
end

function DragonblightMageHunter_ShadowReflection(pUnit, Event) 
pUnit:CastSpell(51764) 
end

function DragonblightMageHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DragonblightMageHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DragonblightMageHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26280, 1, "DragonblightMageHunter_OnCombat")
RegisterUnitEvent(26280, 2, "DragonblightMageHunter_OnLeaveCombat")
RegisterUnitEvent(26280, 3, "DragonblightMageHunter_OnKilledTarget")
RegisterUnitEvent(26280, 4, "DragonblightMageHunter_OnDied")


--[[ Dragonblight -- Dragonblight Mage Huntertwo.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DragonblightMageHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("DragonblightMageHunter_ArcaneReflection", 9000, 1)
Unit:RegisterEvent("DragonblightMageHunter_FireReflection", 8000, 1)
Unit:RegisterEvent("DragonblightMageHunter_FrostReflection", 7000, 1)
Unit:RegisterEvent("DragonblightMageHunter_ShadowReflection", 6000, 1)
end

function DragonblightMageHunter_ArcaneReflection(pUnit, Event) 
pUnit:CastSpell(51766) 
end

function DragonblightMageHunter_FireReflection(pUnit, Event) 
pUnit:CastSpell(51758) 
end

function DragonblightMageHunter_FrostReflection(pUnit, Event) 
pUnit:CastSpell(51763) 
end

function DragonblightMageHunter_ShadowReflection(pUnit, Event) 
pUnit:CastSpell(51764) 
end

function DragonblightMageHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DragonblightMageHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DragonblightMageHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32572, 1, "DragonblightMageHunter_OnCombat")
RegisterUnitEvent(32572, 2, "DragonblightMageHunter_OnLeaveCombat")
RegisterUnitEvent(32572, 3, "DragonblightMageHunter_OnKilledTarget")
RegisterUnitEvent(32572, 4, "DragonblightMageHunter_OnDied")


--[[ Dragonblight -- Dragonbone Condor.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DragonboneCondor_OnCombat(Unit, Event)
Unit:RegisterEvent("DragonboneCondor_EvasiveManeuver", 6000, 0)
end

function DragonboneCondor_EvasiveManeuver(pUnit, Event) 
pUnit:CastSpell(51946) 
end

function DragonboneCondor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DragonboneCondor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DragonboneCondor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26483, 1, "DragonboneCondor_OnCombat")
RegisterUnitEvent(26483, 2, "DragonboneCondor_OnLeaveCombat")
RegisterUnitEvent(26483, 3, "DragonboneCondor_OnKilledTarget")
RegisterUnitEvent(26483, 4, "DragonboneCondor_OnDied")


--[[ Dragonblight -- Drakegore.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Drakegore_OnCombat(Unit, Event)
Unit:RegisterEvent("Drakegore_BurningFists", 2000, 1)
Unit:RegisterEvent("Drakegore_MagnataurCharge", 6000, 0)
end

function Drakegore_BurningFists(pUnit, Event) 
pUnit:CastSpell(52101) 
end

function Drakegore_MagnataurCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52088, pUnit:GetMainTank()) 
end

function Drakegore_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Drakegore_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Drakegore_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27009, 1, "Drakegore_OnCombat")
RegisterUnitEvent(27009, 2, "Drakegore_OnLeaveCombat")
RegisterUnitEvent(27009, 3, "Drakegore_OnKilledTarget")
RegisterUnitEvent(27009, 4, "Drakegore_OnDied")


--[[ Dragonblight -- Dreadbone Invader.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DreadboneInvader_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadboneInvader_Soulthirst", 10000, 0)
end

function DreadboneInvader_Soulthirst(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51290, pUnit:GetMainTank()) 
end

function DreadboneInvader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadboneInvader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadboneInvader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27286, 1, "DreadboneInvader_OnCombat")
RegisterUnitEvent(27286, 2, "DreadboneInvader_OnLeaveCombat")
RegisterUnitEvent(27286, 3, "DreadboneInvader_OnKilledTarget")
RegisterUnitEvent(27286, 4, "DreadboneInvader_OnDied")


--[[ Dragonblight -- Dregmar Runebrand.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DregmarRunebrand_OnCombat(Unit, Event)
Unit:RegisterEvent("DregmarRunebrand_RuneShield", 20000, 1)
end

function DregmarRunebrand_RuneShield(pUnit, Event) 
pUnit:CastSpell(48325) 
end

function DregmarRunebrand_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DregmarRunebrand_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DregmarRunebrand_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27003, 1, "DregmarRunebrand_OnCombat")
RegisterUnitEvent(27003, 2, "DregmarRunebrand_OnLeaveCombat")
RegisterUnitEvent(27003, 3, "DregmarRunebrand_OnKilledTarget")
RegisterUnitEvent(27003, 4, "DregmarRunebrand_OnDied")


--[[ Dragonblight -- Duke Vallenhal.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DukeVallenhal_OnCombat(Unit, Event)
Unit:RegisterEvent("DukeVallenhal_BloodPresence", 1000, 1)
Unit:RegisterEvent("DukeVallenhal_Bloodworm", 4000, 1)
end

function DukeVallenhal_BloodPresence(pUnit, Event) 
pUnit:CastSpell(50689) 
end

function DukeVallenhal_Bloodworm(pUnit, Event) 
pUnit:CastSpell(51879) 
end

function DukeVallenhal_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DukeVallenhal_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DukeVallenhal_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26926, 1, "DukeVallenhal_OnCombat")
RegisterUnitEvent(26926, 2, "DukeVallenhal_OnLeaveCombat")
RegisterUnitEvent(26926, 3, "DukeVallenhal_OnKilledTarget")
RegisterUnitEvent(26926, 4, "DukeVallenhal_OnDied")


--[[ Dragonblight -- Emaciated Mammoth.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function EmaciatedMammoth_OnCombat(Unit, Event)
Unit:RegisterEvent("EmaciatedMammoth_Trample", 6000, 0)
end

function EmaciatedMammoth_Trample(pUnit, Event) 
pUnit:CastSpell(51944) 
end

function EmaciatedMammoth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmaciatedMammoth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmaciatedMammoth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26272, 1, "EmaciatedMammoth_OnCombat")
RegisterUnitEvent(26272, 2, "EmaciatedMammoth_OnLeaveCombat")
RegisterUnitEvent(26272, 3, "EmaciatedMammoth_OnKilledTarget")
RegisterUnitEvent(26272, 4, "EmaciatedMammoth_OnDied")


--[[ Dragonblight -- Emaciated Mammoth Bull.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function EmaciatedMammothBull_OnCombat(Unit, Event)
Unit:RegisterEvent("EmaciatedMammothBull_Trample", 6000, 0)
end

function EmaciatedMammothBull_Trample(pUnit, Event) 
pUnit:CastSpell(51944) 
end

function EmaciatedMammothBull_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmaciatedMammothBull_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmaciatedMammothBull_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26271, 1, "EmaciatedMammothBull_OnCombat")
RegisterUnitEvent(26271, 2, "EmaciatedMammothBull_OnLeaveCombat")
RegisterUnitEvent(26271, 3, "EmaciatedMammothBull_OnKilledTarget")
RegisterUnitEvent(26271, 4, "EmaciatedMammothBull_OnDied")


--[[ Dragonblight -- Emerald Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function EmeraldLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("EmeraldLasher_DreamLash", 7000, 0)
end

function EmeraldLasher_DreamLash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51901, pUnit:GetMainTank()) 
end

function EmeraldLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmeraldLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmeraldLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27254, 1, "EmeraldLasher_OnCombat")
RegisterUnitEvent(27254, 2, "EmeraldLasher_OnLeaveCombat")
RegisterUnitEvent(27254, 3, "EmeraldLasher_OnKilledTarget")
RegisterUnitEvent(27254, 4, "EmeraldLasher_OnDied")


--[[ Dragonblight -- Emerald Skytalon.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function EmeraldSkytalon_OnCombat(Unit, Event)
Unit:RegisterEvent("EmeraldSkytalon_Swoop", 8000, 0)
Unit:RegisterEvent("EmeraldSkytalon_TalonStrike", 6000, 0)
end

function EmeraldSkytalon_Swoop(pUnit, Event) 
pUnit:CastSpell(51919) 
end

function EmeraldSkytalon_TalonStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32909, pUnit:GetMainTank()) 
end

function EmeraldSkytalon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmeraldSkytalon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmeraldSkytalon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27244, 1, "EmeraldSkytalon_OnCombat")
RegisterUnitEvent(27244, 2, "EmeraldSkytalon_OnLeaveCombat")
RegisterUnitEvent(27244, 3, "EmeraldSkytalon_OnKilledTarget")
RegisterUnitEvent(27244, 4, "EmeraldSkytalon_OnDied")


--[[ Dragonblight -- Enraged Apparition.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function EnragedApparition_OnCombat(Unit, Event)
Unit:RegisterEvent("EnragedApparition_Enrage", 10000, 1)
end

function EnragedApparition_Enrage(pUnit, Event) 
pUnit:CastSpell(50420) 
end

function EnragedApparition_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnragedApparition_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnragedApparition_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27551, 1, "EnragedApparition_OnCombat")
RegisterUnitEvent(27551, 2, "EnragedApparition_OnLeaveCombat")
RegisterUnitEvent(27551, 3, "EnragedApparition_OnKilledTarget")
RegisterUnitEvent(27551, 4, "EnragedApparition_OnDied")


--[[ Dragonblight -- Focus Wizard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FocusWizard_OnCombat(Unit, Event)
Unit:RegisterEvent("FocusWizard_ArcaneFocus", 1000, 1)
Unit:RegisterEvent("FocusWizard_FrostfireBolt", 5000, 1)
Unit:RegisterEvent("FocusWizard_LightningBolt", 8000, 0)
end

function FocusWizard_ArcaneFocus(pUnit, Event) 
pUnit:CastSpell(51777) 
end

function FocusWizard_FrostfireBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51779, pUnit:GetMainTank()) 
end

function FocusWizard_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49418, pUnit:GetMainTank()) 
end

function FocusWizard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FocusWizard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FocusWizard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26816, 1, "FocusWizard_OnCombat")
RegisterUnitEvent(26816, 2, "FocusWizard_OnLeaveCombat")
RegisterUnitEvent(26816, 3, "FocusWizard_OnKilledTarget")
RegisterUnitEvent(26816, 4, "FocusWizard_OnDied")


--[[ Dragonblight -- Fordragon Gryphon Rider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FordragonGryphonRider_OnCombat(Unit, Event)
Unit:RegisterEvent("FordragonGryphonRider_Stormhammer", 9000, 0)
end

function FordragonGryphonRider_Stormhammer(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49482, pUnit:GetMainTank()) 
end

function FordragonGryphonRider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FordragonGryphonRider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FordragonGryphonRider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27521, 1, "FordragonGryphonRider_OnCombat")
RegisterUnitEvent(27521, 2, "FordragonGryphonRider_OnLeaveCombat")
RegisterUnitEvent(27521, 3, "FordragonGryphonRider_OnKilledTarget")
RegisterUnitEvent(27521, 4, "FordragonGryphonRider_OnDied")


--[[ Dragonblight -- Fordragon Knight.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FordragonKnight_OnCombat(Unit, Event)
Unit:RegisterEvent("FordragonKnight_RallyingCry", 2000, 1)
end

function FordragonKnight_RallyingCry(pUnit, Event) 
pUnit:CastSpell(31732) 
end

function FordragonKnight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FordragonKnight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FordragonKnight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27531, 1, "FordragonKnight_OnCombat")
RegisterUnitEvent(27531, 2, "FordragonKnight_OnLeaveCombat")
RegisterUnitEvent(27531, 3, "FordragonKnight_OnKilledTarget")
RegisterUnitEvent(27531, 4, "FordragonKnight_OnDied")


--[[ Dragonblight -- Fordragon Marksman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FordragonMarksman_OnCombat(Unit, Event)
Unit:RegisterEvent("FordragonMarksman_Shoot", 5000, 0)
Unit:RegisterEvent("FordragonMarksman_ExplodingShot", 7000, 0)
Unit:RegisterEvent("FordragonMarksman_RapidShot", 9000, 0)
end

function FordragonMarksman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32103, pUnit:GetMainTank()) 
end

function FordragonMarksman_ExplodingShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7896, pUnit:GetMainTank()) 
end

function FordragonMarksman_RapidShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49474, pUnit:GetMainTank()) 
end

function FordragonMarksman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FordragonMarksman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FordragonMarksman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27540, 1, "FordragonMarksman_OnCombat")
RegisterUnitEvent(27540, 2, "FordragonMarksman_OnLeaveCombat")
RegisterUnitEvent(27540, 3, "FordragonMarksman_OnKilledTarget")
RegisterUnitEvent(27540, 4, "FordragonMarksman_OnDied")


--[[ Dragonblight -- Fordragon Sentinel.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FordragonSentinel_OnCombat(Unit, Event)
Unit:RegisterEvent("FordragonSentinel_GlaiveThrow", 8000, 0)
end

function FordragonSentinel_GlaiveThrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49481, pUnit:GetMainTank()) 
end

function FordragonSentinel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FordragonSentinel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FordragonSentinel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27576, 1, "FordragonSentinel_OnCombat")
RegisterUnitEvent(27576, 2, "FordragonSentinel_OnLeaveCombat")
RegisterUnitEvent(27576, 3, "FordragonSentinel_OnKilledTarget")
RegisterUnitEvent(27576, 4, "FordragonSentinel_OnDied")


--[[ Dragonblight -- Forgotten Captain.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ForgottenCaptain_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenCaptain_Stormhammer", 9000, 0)
end

function ForgottenCaptain_Stormhammer(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51591, pUnit:GetMainTank()) 
end

function ForgottenCaptain_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenCaptain_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenCaptain_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27220, 1, "ForgottenCaptain_OnCombat")
RegisterUnitEvent(27220, 2, "ForgottenCaptain_OnLeaveCombat")
RegisterUnitEvent(27220, 3, "ForgottenCaptain_OnKilledTarget")
RegisterUnitEvent(27220, 4, "ForgottenCaptain_OnDied")


--[[ Dragonblight -- Forgotten Footman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ForgottenFootman_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenFootman_ShieldBlock", 5000, 0)
end

function ForgottenFootman_ShieldBlock(pUnit, Event) 
pUnit:CastSpell(32587) 
end

function ForgottenFootman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenFootman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenFootman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27229, 1, "ForgottenFootman_OnCombat")
RegisterUnitEvent(27229, 2, "ForgottenFootman_OnLeaveCombat")
RegisterUnitEvent(27229, 3, "ForgottenFootman_OnKilledTarget")
RegisterUnitEvent(27229, 4, "ForgottenFootman_OnDied")


--[[ Dragonblight -- Forgotten Knight.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ForgottenKnight_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenKnight_Throw", 5000, 0)
end

function ForgottenKnight_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38556, pUnit:GetMainTank()) 
end

function ForgottenKnight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenKnight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenKnight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27224, 1, "ForgottenKnight_OnCombat")
RegisterUnitEvent(27224, 2, "ForgottenKnight_OnLeaveCombat")
RegisterUnitEvent(27224, 3, "ForgottenKnight_OnKilledTarget")
RegisterUnitEvent(27224, 4, "ForgottenKnight_OnDied")


--[[ Dragonblight -- Forgotten Peasant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ForgottenPeasant_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenPeasant_Bonk", 6000, 0)
end

function ForgottenPeasant_Bonk(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51601, pUnit:GetMainTank()) 
end

function ForgottenPeasant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenPeasant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenPeasant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27226, 1, "ForgottenPeasant_OnCombat")
RegisterUnitEvent(27226, 2, "ForgottenPeasant_OnLeaveCombat")
RegisterUnitEvent(27226, 3, "ForgottenPeasant_OnKilledTarget")
RegisterUnitEvent(27226, 4, "ForgottenPeasant_OnDied")


--[[ Dragonblight -- Forgotten Rifleman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ForgottenRifleman_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenRifleman_ConcussiveShot", 7000, 0)
Unit:RegisterEvent("ForgottenRifleman_Shoot", 5000, 0)
end

function ForgottenRifleman_ConcussiveShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17174, pUnit:GetMainTank()) 
end

function ForgottenRifleman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15547, pUnit:GetMainTank()) 
end

function ForgottenRifleman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenRifleman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenRifleman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27225, 1, "ForgottenRifleman_OnCombat")
RegisterUnitEvent(27225, 2, "ForgottenRifleman_OnLeaveCombat")
RegisterUnitEvent(27225, 3, "ForgottenRifleman_OnKilledTarget")
RegisterUnitEvent(27225, 4, "ForgottenRifleman_OnDied")


--[[ Dragonblight -- Frenzied Gargoyle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FrenziedGargoyle_OnCombat(Unit, Event)
Unit:RegisterEvent("FrenziedGargoyle_GargoyleStrike", 6500, 0)
end

function FrenziedGargoyle_GargoyleStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31664, pUnit:GetMainTank()) 
end

function FrenziedGargoyle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrenziedGargoyle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrenziedGargoyle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27691, 1, "FrenziedGargoyle_OnCombat")
RegisterUnitEvent(27691, 2, "FrenziedGargoyle_OnLeaveCombat")
RegisterUnitEvent(27691, 3, "FrenziedGargoyle_OnKilledTarget")
RegisterUnitEvent(27691, 4, "FrenziedGargoyle_OnDied")


--[[ Dragonblight -- Frigid Abomination Attacker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FrigidAbominationAttacker_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidAbominationAttacker_Cleave", 8000, 0)
end

function FrigidAbominationAttacker_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function FrigidAbominationAttacker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidAbominationAttacker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidAbominationAttacker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27531, 1, "FrigidAbominationAttacker_OnCombat")
RegisterUnitEvent(27531, 2, "FrigidAbominationAttacker_OnLeaveCombat")
RegisterUnitEvent(27531, 3, "FrigidAbominationAttacker_OnKilledTarget")
RegisterUnitEvent(27531, 4, "FrigidAbominationAttacker_OnDied")


--[[ Dragonblight -- Frigid Ghoul.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FrigidGhoul_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidGhoul_RotArmor", 8000, 0)
end

function FrigidGhoul_RotArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50361, pUnit:GetMainTank()) 
end

function FrigidGhoul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidGhoul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidGhoul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27534, 1, "FrigidGhoul_OnCombat")
RegisterUnitEvent(27534, 2, "FrigidGhoul_OnLeaveCombat")
RegisterUnitEvent(27534, 3, "FrigidGhoul_OnKilledTarget")
RegisterUnitEvent(27534, 4, "FrigidGhoul_OnDied")


--[[ Dragonblight -- Frigid Ghoul Attacker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FrigidGhoulAttacker_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidGhoulAttacker_RotArmor", 8000, 0)
end

function FrigidGhoulAttacker_RotArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50361, pUnit:GetMainTank()) 
end

function FrigidGhoulAttacker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidGhoulAttacker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidGhoulAttacker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27685, 1, "FrigidGhoulAttacker_OnCombat")
RegisterUnitEvent(27685, 2, "FrigidGhoulAttacker_OnLeaveCombat")
RegisterUnitEvent(27685, 3, "FrigidGhoulAttacker_OnKilledTarget")
RegisterUnitEvent(27685, 4, "FrigidGhoulAttacker_OnDied")


--[[ Dragonblight -- Frigid Necromancer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FrigidNecromancer_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidNecromancer_BoneArmor", 2000, 1)
Unit:RegisterEvent("FrigidNecromancer_ShadowBolt", 7000, 0)
end

function FrigidNecromancer_BoneArmor(pUnit, Event) 
pUnit:CastSpell(50324) 
end

function FrigidNecromancer_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function FrigidNecromancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidNecromancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidNecromancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27539, 1, "FrigidNecromancer_OnCombat")
RegisterUnitEvent(27539, 2, "FrigidNecromancer_OnLeaveCombat")
RegisterUnitEvent(27539, 3, "FrigidNecromancer_OnKilledTarget")
RegisterUnitEvent(27539, 4, "FrigidNecromancer_OnDied")


--[[ Dragonblight -- Frigid Necromancer Attacker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FrigidNecromancerAttacker_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidNecromancerAttacker_BoneArmor", 2000, 1)
Unit:RegisterEvent("FrigidNecromancerAttacker_ShadowBolt", 7000, 0)
end

function FrigidNecromancerAttacker_BoneArmor(pUnit, Event) 
pUnit:CastSpell(50324) 
end

function FrigidNecromancerAttacker_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function FrigidNecromancerAttacker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidNecromancerAttacker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidNecromancerAttacker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27687, 1, "FrigidNecromancerAttacker_OnCombat")
RegisterUnitEvent(27687, 2, "FrigidNecromancerAttacker_OnLeaveCombat")
RegisterUnitEvent(27687, 3, "FrigidNecromancerAttacker_OnKilledTarget")
RegisterUnitEvent(27687, 4, "FrigidNecromancerAttacker_OnDied")


--[[ Dragonblight -- Gigantaur.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Gigantaur_OnCombat(Unit, Event)
Unit:RegisterEvent("Gigantaur_GiganticBlow", 6000, 0)
Unit:RegisterEvent("Gigantaur_Hamstring", 8000, 0)
end

function Gigantaur_GiganticBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52139, pUnit:GetMainTank()) 
end

function Gigantaur_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function Gigantaur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Gigantaur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Gigantaur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26836, 1, "Gigantaur_OnCombat")
RegisterUnitEvent(26836, 2, "Gigantaur_OnLeaveCombat")
RegisterUnitEvent(26836, 3, "Gigantaur_OnKilledTarget")
RegisterUnitEvent(26836, 4, "Gigantaur_OnDied")


--[[ Dragonblight -- Goramosh.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Goramosh_OnCombat(Unit, Event)
Unit:RegisterEvent("Goramosh_ConeofCold", 6000, 0)
Unit:RegisterEvent("Goramosh_Frostbolt", 8000, 0)
end

function Goramosh_ConeofCold(pUnit, Event) 
pUnit:CastSpell(20828) 
end

function Goramosh_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function Goramosh_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Goramosh_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Goramosh_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26349, 1, "Goramosh_OnCombat")
RegisterUnitEvent(26349, 2, "Goramosh_OnLeaveCombat")
RegisterUnitEvent(26349, 3, "Goramosh_OnKilledTarget")
RegisterUnitEvent(26349, 4, "Goramosh_OnDied")


--[[ Dragonblight -- Grand Necrolord Antiok.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function GrandNecrolordAntiok_OnCombat(Unit, Event)
Unit:RegisterEvent("GrandNecrolordAntiok_ScreamofChaos", 15000, 1)
Unit:RegisterEvent("GrandNecrolordAntiok_ShadowBolt", 8000, 0)
Unit:RegisterEvent("GrandNecrolordAntiok_ShroudofLightning", 28000, 1)
end

function GrandNecrolordAntiok_ScreamofChaos(pUnit, Event) 
pUnit:CastSpell(50497) 
end

function GrandNecrolordAntiok_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(55984, pUnit:GetMainTank()) 
end

function GrandNecrolordAntiok_ShroudofLightning(pUnit, Event) 
pUnit:CastSpell(50494) 
end

function GrandNecrolordAntiok_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrandNecrolordAntiok_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrandNecrolordAntiok_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(28006, 1, "GrandNecrolordAntiok_OnCombat")
RegisterUnitEvent(28006, 2, "GrandNecrolordAntiok_OnLeaveCombat")
RegisterUnitEvent(28006, 3, "GrandNecrolordAntiok_OnKilledTarget")
RegisterUnitEvent(28006, 4, "GrandNecrolordAntiok_OnDied")


--[[ Dragonblight -- Gromthar the Thunderbringer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function GromthartheThunderbringer_OnCombat(Unit, Event)
Unit:RegisterEvent("GromthartheThunderbringer_MagnataurCharge", 8000, 0)
Unit:RegisterEvent("GromthartheThunderbringer_Thunder", 10000, 0)
end

function GromthartheThunderbringer_MagnataurCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52169, pUnit:GetMainTank()) 
end

function GromthartheThunderbringer_Thunder(pUnit, Event) 
pUnit:CastSpell(52166) 
end

function GromthartheThunderbringer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GromthartheThunderbringer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GromthartheThunderbringer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27002, 1, "GromthartheThunderbringer_OnCombat")
RegisterUnitEvent(27002, 2, "GromthartheThunderbringer_OnLeaveCombat")
RegisterUnitEvent(27002, 3, "GromthartheThunderbringer_OnKilledTarget")
RegisterUnitEvent(27002, 4, "GromthartheThunderbringer_OnDied")


--[[ Dragonblight -- High Cultist Zangus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function HighCultistZangus_OnCombat(Unit, Event)
Unit:RegisterEvent("HighCultistZangus_ShadowBolt", 7000, 0)
Unit:RegisterEvent("HighCultistZangus_Zeal", 2000, 1)
end

function HighCultistZangus_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function HighCultistZangus_Zeal(pUnit, Event) 
pUnit:CastSpell(51605) 
end

function HighCultistZangus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighCultistZangus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighCultistZangus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26655, 1, "HighCultistZangus_OnCombat")
RegisterUnitEvent(26655, 2, "HighCultistZangus_OnLeaveCombat")
RegisterUnitEvent(26655, 3, "HighCultistZangus_OnKilledTarget")
RegisterUnitEvent(26655, 4, "HighCultistZangus_OnDied")


--[[ Dragonblight -- High General Abbendis.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function HighGeneralAbbendis_OnCombat(Unit, Event)
Unit:RegisterEvent("HighGeneralAbbendis_JudgementofOnslaught", 4000, 1)
Unit:RegisterEvent("HighGeneralAbbendis_RagingConsecration", 6000, 1)
Unit:RegisterEvent("HighGeneralAbbendis_SealofOnslaught", 8000, 1)
end

function HighGeneralAbbendis_JudgementofOnslaught(pUnit, Event) 
pUnit:CastSpell(50905) 
end

function HighGeneralAbbendis_RagingConsecration(pUnit, Event) 
pUnit:CastSpell(50915) 
end

function HighGeneralAbbendis_SealofOnslaught(pUnit, Event) 
pUnit:CastSpell(50908) 
end

function HighGeneralAbbendis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighGeneralAbbendis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighGeneralAbbendis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27210, 1, "HighGeneralAbbendis_OnCombat")
RegisterUnitEvent(27210, 2, "HighGeneralAbbendis_OnLeaveCombat")
RegisterUnitEvent(27210, 3, "HighGeneralAbbendis_OnKilledTarget")
RegisterUnitEvent(27210, 4, "HighGeneralAbbendis_OnDied")


--[[ Dragonblight -- High Shaman Bloodpaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function HighShamanBloodpaw_OnCombat(Unit, Event)
Unit:RegisterEvent("HighShamanBloodpaw_Bloodlust", 11000, 0)
Unit:RegisterEvent("HighShamanBloodpaw_ChainLightning", 10000, 0)
Unit:RegisterEvent("HighShamanBloodpaw_FrostShock", 6000, 0)
Unit:RegisterEvent("HighShamanBloodpaw_LightningBolt", 8000, 0)
end

function HighShamanBloodpaw_Bloodlust(pUnit, Event) 
pUnit:CastSpell(28902) 
end

function HighShamanBloodpaw_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22355, pUnit:GetMainTank()) 
end

function HighShamanBloodpaw_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19133, pUnit:GetMainTank()) 
end

function HighShamanBloodpaw_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22414, pUnit:GetMainTank()) 
end

function HighShamanBloodpaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighShamanBloodpaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighShamanBloodpaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27762, 1, "HighShamanBloodpaw_OnCombat")
RegisterUnitEvent(27762, 2, "HighShamanBloodpaw_OnLeaveCombat")
RegisterUnitEvent(27762, 3, "HighShamanBloodpaw_OnKilledTarget")
RegisterUnitEvent(27762, 4, "HighShamanBloodpaw_OnDied")


--[[ Dragonblight -- Horde Conscript.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function HordeConscript_OnCombat(Unit, Event)
Unit:RegisterEvent("HordeConscript_HeroicStrike", 8000, 0)
Unit:RegisterEvent("HordeConscript_Shoot", 6000, 0)
end

function HordeConscript_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(29426, pUnit:GetMainTank()) 
end

function HordeConscript_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function HordeConscript_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HordeConscript_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HordeConscript_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27749, 1, "HordeConscript_OnCombat")
RegisterUnitEvent(27749, 2, "HordeConscript_OnLeaveCombat")
RegisterUnitEvent(27749, 3, "HordeConscript_OnKilledTarget")
RegisterUnitEvent(27749, 4, "HordeConscript_OnDied")


--[[ Dragonblight -- Hulking Atrocity.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function HulkingAtrocity_OnCombat(Unit, Event)
Unit:RegisterEvent("HulkingAtrocity_InfectedBite", 7000, 0)
end

function HulkingAtrocity_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49861, pUnit:GetMainTank()) 
end

function HulkingAtrocity_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HulkingAtrocity_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HulkingAtrocity_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26948, 1, "HulkingAtrocity_OnCombat")
RegisterUnitEvent(26948, 2, "HulkingAtrocity_OnLeaveCombat")
RegisterUnitEvent(26948, 3, "HulkingAtrocity_OnKilledTarget")
RegisterUnitEvent(26948, 4, "HulkingAtrocity_OnDied")


--[[ Dragonblight -- Hulking Jormungar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function HulkingJormungar_OnCombat(Unit, Event)
Unit:RegisterEvent("HulkingJormungar_CorrosivePoison", 4000, 1)
Unit:RegisterEvent("HulkingJormungar_CorrosiveSpit", 6000, 1)
end

function HulkingJormungar_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50293, pUnit:GetMainTank()) 
end

function HulkingJormungar_CorrosiveSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47611, pUnit:GetMainTank()) 
end

function HulkingJormungar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HulkingJormungar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HulkingJormungar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26293, 1, "HulkingJormungar_OnCombat")
RegisterUnitEvent(26293, 2, "HulkingJormungar_OnLeaveCombat")
RegisterUnitEvent(26293, 3, "HulkingJormungar_OnKilledTarget")
RegisterUnitEvent(26293, 4, "HulkingJormungar_OnDied")


--[[ Dragonblight -- Ice Heart Jormungar Feeder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function IceHeartJormungarFeeder_OnCombat(Unit, Event)
Unit:RegisterEvent("IceHeartJormungarFeeder_CorrosiveSpit", 6000, 1)
end

function IceHeartJormungarFeeder_CorrosiveSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47447, pUnit:GetMainTank()) 
end

function IceHeartJormungarFeeder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceHeartJormungarFeeder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceHeartJormungarFeeder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26358, 1, "IceHeartJormungarFeeder_OnCombat")
RegisterUnitEvent(26358, 2, "IceHeartJormungarFeeder_OnLeaveCombat")
RegisterUnitEvent(26358, 3, "IceHeartJormungarFeeder_OnKilledTarget")
RegisterUnitEvent(26358, 4, "IceHeartJormungarFeeder_OnDied")


--[[ Dragonblight -- Ice Heart Jormungar Spawn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function IceHeartJormungarSpawn_OnCombat(Unit, Event)
Unit:RegisterEvent("IceHeartJormungarSpawn_GutRip", 5000, 3)
end

function IceHeartJormungarSpawn_GutRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43358, pUnit:GetMainTank()) 
end

function IceHeartJormungarSpawn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceHeartJormungarSpawn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceHeartJormungarSpawn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26359, 1, "IceHeartJormungarSpawn_OnCombat")
RegisterUnitEvent(26359, 2, "IceHeartJormungarSpawn_OnLeaveCombat")
RegisterUnitEvent(26359, 3, "IceHeartJormungarSpawn_OnKilledTarget")
RegisterUnitEvent(26359, 4, "IceHeartJormungarSpawn_OnDied")


--[[ Dragonblight -- Ice Revenant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function IceRevenant_OnCombat(Unit, Event)
Unit:RegisterEvent("IceRevenant_IcyTorrent", 7000, 0)
end

function IceRevenant_IcyTorrent(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51584, pUnit:GetMainTank()) 
end

function IceRevenant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceRevenant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceRevenant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26283, 1, "IceRevenant_OnCombat")
RegisterUnitEvent(26283, 2, "IceRevenant_OnLeaveCombat")
RegisterUnitEvent(26283, 3, "IceRevenant_OnKilledTarget")
RegisterUnitEvent(26283, 4, "IceRevenant_OnDied")


--[[ Dragonblight -- Icefist.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Icefist_OnCombat(Unit, Event)
Unit:RegisterEvent("Icefist_IceSlash", 6000, 0)
Unit:RegisterEvent("Icefist_TuskStrike", 8000, 0)
end

function Icefist_IceSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51878, pUnit:GetMainTank()) 
end

function Icefist_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function Icefist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Icefist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Icefist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27004, 1, "Icefist_OnCombat")
RegisterUnitEvent(27004, 2, "Icefist_OnLeaveCombat")
RegisterUnitEvent(27004, 3, "Icefist_OnKilledTarget")
RegisterUnitEvent(27004, 4, "Icefist_OnDied")


--[[ Dragonblight -- Iceshatter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Iceshatter_OnCombat(Unit, Event)
Unit:RegisterEvent("Iceshatter_MagnataurCharge", 8000, 0)
Unit:RegisterEvent("Iceshatter_PulsingShards", 6000, 0)
end

function Iceshatter_MagnataurCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52088, pUnit:GetMainTank()) 
end

function Iceshatter_PulsingShards(pUnit, Event) 
pUnit:CastSpell(52118) 
end

function Iceshatter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Iceshatter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Iceshatter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27007, 1, "Iceshatter_OnCombat")
RegisterUnitEvent(27007, 2, "Iceshatter_OnLeaveCombat")
RegisterUnitEvent(27007, 3, "Iceshatter_OnKilledTarget")
RegisterUnitEvent(27007, 4, "Iceshatter_OnDied")


--[[ Dragonblight -- Icestorm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Icestorm_OnCombat(Unit, Event)
Unit:RegisterEvent("Icestorm_FrostBreath", 7000, 0)
end

function Icestorm_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47428, pUnit:GetMainTank()) 
end

function Icestorm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Icestorm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Icestorm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26287, 1, "Icestorm_OnCombat")
RegisterUnitEvent(26287, 2, "Icestorm_OnLeaveCombat")
RegisterUnitEvent(26287, 3, "Icestorm_OnKilledTarget")
RegisterUnitEvent(26287, 4, "Icestorm_OnDied")


--[[ Dragonblight -- Indule Fisherman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InduleFisherman_OnCombat(Unit, Event)
Unit:RegisterEvent("InduleFisherman_ElectrifiedNet", 10000, 0)
end

function InduleFisherman_ElectrifiedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11820, pUnit:GetMainTank()) 
end

function InduleFisherman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InduleFisherman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InduleFisherman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26343, 1, "InduleFisherman_OnCombat")
RegisterUnitEvent(26343, 2, "InduleFisherman_OnLeaveCombat")
RegisterUnitEvent(26343, 3, "InduleFisherman_OnKilledTarget")
RegisterUnitEvent(26343, 4, "InduleFisherman_OnDied")


--[[ Dragonblight -- Indule Mystic.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InduleMystic_OnCombat(Unit, Event)
Unit:RegisterEvent("InduleMystic_MysticalBolt", 6000, 0)
end

function InduleMystic_MysticalBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51787, pUnit:GetMainTank()) 
end

function InduleMystic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InduleMystic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InduleMystic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26336, 1, "InduleMystic_OnCombat")
RegisterUnitEvent(26336, 2, "InduleMystic_OnLeaveCombat")
RegisterUnitEvent(26336, 3, "InduleMystic_OnKilledTarget")
RegisterUnitEvent(26336, 4, "InduleMystic_OnDied")


--[[ Dragonblight -- Indule Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InduleWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("InduleWarrior_SpectralStrike", 6000, 0)
end

function InduleWarrior_SpectralStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51786, pUnit:GetMainTank()) 
end

function InduleWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InduleWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InduleWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26344, 1, "InduleWarrior_OnCombat")
RegisterUnitEvent(26344, 2, "InduleWarrior_OnLeaveCombat")
RegisterUnitEvent(26344, 3, "InduleWarrior_OnKilledTarget")
RegisterUnitEvent(26344, 4, "InduleWarrior_OnDied")


--[[ Dragonblight -- Indule Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InfiniteChronoMagus_OnCombat(Unit, Event)
Unit:RegisterEvent("InfiniteChronoMagus_ShadowBlast", 9000, 0)
Unit:RegisterEvent("InfiniteChronoMagus_ShadowBolt", 6000, 0)
end

function InfiniteChronoMagus_ShadowBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38085, pUnit:GetMainTank()) 
end

function InfiniteChronoMagus_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function InfiniteChronoMagus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfiniteChronoMagus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfiniteChronoMagus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27898, 1, "InfiniteChronoMagus_OnCombat")
RegisterUnitEvent(27898, 2, "InfiniteChronoMagus_OnLeaveCombat")
RegisterUnitEvent(27898, 3, "InfiniteChronoMagus_OnKilledTarget")
RegisterUnitEvent(27898, 4, "InfiniteChronoMagus_OnDied")


--[[ Dragonblight -- Infinite Eradicator.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InfiniteEradicator_OnCombat(Unit, Event)
Unit:RegisterEvent("InfiniteEradicator_Hasten", 2000, 1)
Unit:RegisterEvent("InfiniteEradicator_TemporalVortex", 6000, 0)
Unit:RegisterEvent("InfiniteEradicator_WingBuffet", 8000, 0)
end

function InfiniteEradicator_Hasten(pUnit, Event) 
pUnit:CastSpell(31458) 
end

function InfiniteEradicator_TemporalVortex(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52657, pUnit:GetMainTank()) 
end

function InfiniteEradicator_WingBuffet(pUnit, Event) 
pUnit:CastSpell(31475) 
end

function InfiniteEradicator_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfiniteEradicator_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfiniteEradicator_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32185, 1, "InfiniteEradicator_OnCombat")
RegisterUnitEvent(32185, 2, "InfiniteEradicator_OnLeaveCombat")
RegisterUnitEvent(32185, 3, "InfiniteEradicator_OnKilledTarget")
RegisterUnitEvent(32185, 4, "InfiniteEradicator_OnDied")


--[[ Dragonblight -- Infinite Eradicator.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InfiniteTimebreaker_OnCombat(Unit, Event)
Unit:RegisterEvent("InfiniteTimebreaker_Enrage", 8000, 0)
Unit:RegisterEvent("InfiniteTimebreaker_TimeStop", 12000, 2)
end

function InfiniteTimebreaker_Enrage(pUnit, Event) 
pUnit:CastSpell(60075) 
end

function InfiniteTimebreaker_TimeStop(pUnit, Event) 
pUnit:FullCastSpellOnTarget(60074, pUnit:GetMainTank()) 
end

function InfiniteTimebreaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfiniteTimebreaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfiniteTimebreaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32186, 1, "InfiniteTimebreaker_OnCombat")
RegisterUnitEvent(32186, 2, "InfiniteTimebreaker_OnLeaveCombat")
RegisterUnitEvent(32186, 3, "InfiniteTimebreaker_OnKilledTarget")
RegisterUnitEvent(32186, 4, "InfiniteTimebreaker_OnDied")


--[[ Dragonblight -- Infinite Timerender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InfiniteTimerender_OnCombat(Unit, Event)
Unit:RegisterEvent("InfiniteTimerender_TimeLapse", 7000, 0)
end

function InfiniteTimerender_TimeLapse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51020, pUnit:GetMainTank()) 
end

function InfiniteTimerender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfiniteTimerender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfiniteTimerender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27900, 1, "InfiniteTimerender_OnCombat")
RegisterUnitEvent(27900, 2, "InfiniteTimerender_OnLeaveCombat")
RegisterUnitEvent(27900, 3, "InfiniteTimerender_OnKilledTarget")
RegisterUnitEvent(27900, 4, "InfiniteTimerender_OnDied")


--[[ Dragonblight -- Infinite Timerendertwo.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InfiniteTimerender_OnCombat(Unit, Event)
Unit:RegisterEvent("InfiniteTimerender_TimeLapse", 7000, 0)
end

function InfiniteTimerender_TimeLapse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51020, pUnit:GetMainTank()) 
end

function InfiniteTimerender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfiniteTimerender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfiniteTimerender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27900, 1, "InfiniteTimerender_OnCombat")
RegisterUnitEvent(27900, 2, "InfiniteTimerender_OnLeaveCombat")
RegisterUnitEvent(27900, 3, "InfiniteTimerender_OnKilledTarget")
RegisterUnitEvent(27900, 4, "InfiniteTimerender_OnDied")


--[[ Dragonblight -- Injured Mammoth.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InjuredMammoth_OnCombat(Unit, Event)
Unit:RegisterEvent("InjuredMammoth_Trample", 6000, 0)
end

function InjuredMammoth_Trample(pUnit, Event) 
pUnit:CastSpell(51944) 
end

function InjuredMammoth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InjuredMammoth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InjuredMammoth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26711, 1, "InjuredMammoth_OnCombat")
RegisterUnitEvent(26711, 2, "InjuredMammoth_OnLeaveCombat")
RegisterUnitEvent(26711, 3, "InjuredMammoth_OnKilledTarget")
RegisterUnitEvent(26711, 4, "InjuredMammoth_OnDied")


--[[ Dragonblight -- Jormungar Tunneler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function JormungarTunneler_OnCombat(Unit, Event)
Unit:RegisterEvent("JormungarTunneler_CorrodeFlesh", 4000, 1)
end

function JormungarTunneler_CorrodeFlesh(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51879, pUnit:GetMainTank()) 
end

function JormungarTunneler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function JormungarTunneler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function JormungarTunneler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26467, 1, "JormungarTunneler_OnCombat")
RegisterUnitEvent(26467, 2, "JormungarTunneler_OnLeaveCombat")
RegisterUnitEvent(26467, 3, "JormungarTunneler_OnKilledTarget")
RegisterUnitEvent(26467, 4, "JormungarTunneler_OnDied")


--[[ Dragonblight -- Kiliua .lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Kiliua_OnCombat(Unit, Event)
Unit:RegisterEvent("Kiliua_ClawGrasp", 9000, 0)
end

function Kiliua_ClawGrasp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53442, pUnit:GetMainTank()) 
end

function Kiliua_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Kiliua_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Kiliua_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26521, 1, "Kiliua_OnCombat")
RegisterUnitEvent(26521, 2, "Kiliua_OnLeaveCombat")
RegisterUnitEvent(26521, 3, "Kiliua_OnKilledTarget")
RegisterUnitEvent(26521, 4, "Kiliua_OnDied")


--[[ Dragonblight -- Kreug Oathbreaker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function KreugOathbreaker_OnCombat(Unit, Event)
Unit:RegisterEvent("KreugOathbreaker_Backbreaker", 12000, 0)
Unit:RegisterEvent("KreugOathbreaker_BrokenOath", 13000, 0)
Unit:RegisterEvent("KreugOathbreaker_InciteHorror", 14000, 0)
end

function KreugOathbreaker_Backbreaker(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53437, pUnit:GetMainTank()) 
end

function KreugOathbreaker_BrokenOath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(56310) 
end

function KreugOathbreaker_InciteHorror(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53438, pUnit:GetMainTank()) 
end

function KreugOathbreaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KreugOathbreaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KreugOathbreaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27105, 1, "KreugOathbreaker_OnCombat")
RegisterUnitEvent(27105, 2, "KreugOathbreaker_OnLeaveCombat")
RegisterUnitEvent(27105, 3, "KreugOathbreaker_OnKilledTarget")
RegisterUnitEvent(27105, 4, "KreugOathbreaker_OnDied")


--[[ Dragonblight -- Lead Cannoneer Zierhut.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function LeadCannoneerZierhut_OnCombat(Unit, Event)
Unit:RegisterEvent("LeadCannoneerZierhut_TorchToss", 2000, 1)
end

function LeadCannoneerZierhut_TorchToss(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50832, pUnit:GetMainTank()) 
end

function LeadCannoneerZierhut_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LeadCannoneerZierhut_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LeadCannoneerZierhut_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27235, 1, "LeadCannoneerZierhut_OnCombat")
RegisterUnitEvent(27235, 2, "LeadCannoneerZierhut_OnLeaveCombat")
RegisterUnitEvent(27235, 3, "LeadCannoneerZierhut_OnKilledTarget")
RegisterUnitEvent(27235, 4, "LeadCannoneerZierhut_OnDied")


--[[ Dragonblight -- Legion Commander Tyralion.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function LegionCommanderTyralion_OnCombat(Unit, Event)
Unit:RegisterEvent("LegionCommanderTyralion_Shoot", 5000, 0)
end

function LegionCommanderTyralion_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function LegionCommanderTyralion_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LegionCommanderTyralion_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LegionCommanderTyralion_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27844, 1, "LegionCommanderTyralion_OnCombat")
RegisterUnitEvent(27844, 2, "LegionCommanderTyralion_OnLeaveCombat")
RegisterUnitEvent(27844, 3, "LegionCommanderTyralion_OnKilledTarget")
RegisterUnitEvent(27844, 4, "LegionCommanderTyralion_OnDied")


--[[ Dragonblight -- Legion Commander Yorik.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function LegionCommanderYorik_OnCombat(Unit, Event)
Unit:RegisterEvent("LegionCommanderYorik_Shoot", 5000, 0)
end

function LegionCommanderYorik_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function LegionCommanderYorik_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LegionCommanderYorik_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LegionCommanderYorik_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27857, 1, "LegionCommanderYorik_OnCombat")
RegisterUnitEvent(27857, 2, "LegionCommanderYorik_OnLeaveCombat")
RegisterUnitEvent(27857, 3, "LegionCommanderYorik_OnKilledTarget")
RegisterUnitEvent(27857, 4, "LegionCommanderYorik_OnDied")


--[[ Dragonblight -- Leprous Servant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function LeprousServant_OnCombat(Unit, Event)
Unit:RegisterEvent("LeprousServant_LeprousTouch", 8000, 0)
end

function LeprousServant_LeprousTouch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51315, pUnit:GetMainTank()) 
end

function LeprousServant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LeprousServant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LeprousServant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27800, 1, "LeprousServant_OnCombat")
RegisterUnitEvent(27800, 2, "LeprousServant_OnLeaveCombat")
RegisterUnitEvent(27800, 3, "LeprousServant_OnKilledTarget")
RegisterUnitEvent(27800, 4, "LeprousServant_OnDied")


--[[ Dragonblight -- Lieutenant Tazinni.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function LieutenantTazinni_OnCombat(Unit, Event)
Unit:RegisterEvent("LieutenantTazinni_DragonsBreath", 7000, 0)
Unit:RegisterEvent("LieutenantTazinni_FrostfireBolt", 8000, 0)
end

function LieutenantTazinni_DragonsBreath(pUnit, Event) 
pUnit:CastSpell(35250) 
end

function LieutenantTazinni_FrostfireBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51779, pUnit:GetMainTank()) 
end

function LieutenantTazinni_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LieutenantTazinni_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LieutenantTazinni_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26815, 1, "LieutenantTazinni_OnCombat")
RegisterUnitEvent(26815, 2, "LieutenantTazinni_OnLeaveCombat")
RegisterUnitEvent(26815, 3, "LieutenantTazinni_OnKilledTarget")
RegisterUnitEvent(26815, 4, "LieutenantTazinni_OnDied")


--[[ Dragonblight -- Loguhn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function Loguhn_OnCombat(Unit, Event)
Unit:RegisterEvent("Loguhn_Enrage", 10000, 1)
Unit:RegisterEvent("Loguhn_SunderArmor", 5000, 0)
end

function Loguhn_Enrage(pUnit, Event) 
pUnit:CastSpell(8599)
end

function Loguhn_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50370, pUnit:GetMainTank()) 
end

function Loguhn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Loguhn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Loguhn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26196, 1, "Loguhn_OnCombat")
RegisterUnitEvent(26196, 2, "Loguhn_OnLeaveCombat")
RegisterUnitEvent(26196, 3, "Loguhn_OnKilledTarget")
RegisterUnitEvent(26196, 4, "Loguhn_OnDied")


--[[ Dragonblight -- Magnataur Patriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function MagnataurPatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("MagnataurPatriarch_Throw", 5000, 0)
end

function MagnataurPatriarch_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38556, pUnit:GetMainTank()) 
end

function MagnataurPatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagnataurPatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagnataurPatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26295, 1, "MagnataurPatriarch_OnCombat")
RegisterUnitEvent(26295, 2, "MagnataurPatriarch_OnLeaveCombat")
RegisterUnitEvent(26295, 3, "MagnataurPatriarch_OnKilledTarget")
RegisterUnitEvent(26295, 4, "MagnataurPatriarch_OnDied")


--[[ Dragonblight -- Magister Keldonus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function MagisterKeldonus_OnCombat(Unit, Event)
Unit:RegisterEvent("MagisterKeldonus_ArcaneBlast", 10000, 0)
Unit:RegisterEvent("MagisterKeldonus_FuryoftheBlue", 15000, 0)
Unit:RegisterEvent("MagisterKeldonus_MightofMalygos", 6000, 1)
Unit:RegisterEvent("MagisterKeldonus_PowerFlux", 13000, 0)
Unit:RegisterEvent("MagisterKeldonus_PowerSiphon", 18000, 0)
end

function MagisterKeldonus_ArcaneBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51830, pUnit:GetMainTank()) 
end

function MagisterKeldonus_FuryoftheBlue(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51808, pUnit:GetMainTank()) 
end

function MagisterKeldonus_MightofMalygos(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51800, pUnit:GetMainTank()) 
end

function MagisterKeldonus_PowerFlux(pUnit, Event) 
pUnit:CastSpell(51806) 
end

function MagisterKeldonus_PowerSiphon(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51804, pUnit:GetMainTank()) 
end

function MagisterKeldonus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagisterKeldonus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagisterKeldonus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26828, 1, "MagisterKeldonus_OnCombat")
RegisterUnitEvent(26828, 2, "MagisterKeldonus_OnLeaveCombat")
RegisterUnitEvent(26828, 3, "MagisterKeldonus_OnKilledTarget")
RegisterUnitEvent(26828, 4, "MagisterKeldonus_OnDied")


--[[ Dragonblight -- Mindless Wight.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function MindlessWight_OnCombat(Unit, Event)
Unit:RegisterEvent("MindlessWight_Smash", 6000, 0)
end

function MindlessWight_Smash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51334, pUnit:GetMainTank()) 
end

function MindlessWight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MindlessWight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MindlessWight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27287, 1, "MindlessWight_OnCombat")
RegisterUnitEvent(27287, 2, "MindlessWight_OnLeaveCombat")
RegisterUnitEvent(27287, 3, "MindlessWight_OnKilledTarget")
RegisterUnitEvent(27287, 4, "MindlessWight_OnDied")


--[[ Dragonblight -- Mistress of the Coldwind.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function MistressoftheColdwind_OnCombat(Unit, Event)
Unit:RegisterEvent("MistressoftheColdwind_ArcticWinds", 6500, 0)
Unit:RegisterEvent("MistressoftheColdwind_Renew", 18000, 0)
end

function MistressoftheColdwind_ArcticWinds(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52814, pUnit:GetMainTank()) 
end

function MistressoftheColdwind_Renew(pUnit, Event) 
pUnit:CastSpell(38210) 
end

function MistressoftheColdwind_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MistressoftheColdwind_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MistressoftheColdwind_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26578, 1, "MistressoftheColdwind_OnCombat")
RegisterUnitEvent(26578, 2, "MistressoftheColdwind_OnLeaveCombat")
RegisterUnitEvent(26578, 3, "MistressoftheColdwind_OnKilledTarget")
RegisterUnitEvent(26578, 4, "MistressoftheColdwind_OnDied")


--[[ Dragonblight -- Moonrest Highborne.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function MoonrestHighborne_OnCombat(Unit, Event)
Unit:RegisterEvent("MoonrestHighborne_ShadowWordDeath", 6000, 0)
end

function MoonrestHighborne_ShadowWordDeath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51818, pUnit:GetMainTank()) 
end

function MoonrestHighborne_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MoonrestHighborne_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MoonrestHighborne_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26455, 1, "MoonrestHighborne_OnCombat")
RegisterUnitEvent(26455, 2, "MoonrestHighborne_OnLeaveCombat")
RegisterUnitEvent(26455, 3, "MoonrestHighborne_OnKilledTarget")
RegisterUnitEvent(26455, 4, "MoonrestHighborne_OnDied")


--[[ Dragonblight -- Moonrest Stalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function MoonrestStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("MoonrestStalker_ManaBurn", 4000, 0)
end

function MoonrestStalker_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2691, pUnit:GetRandomPlayer(4)) 
end

function MoonrestStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MoonrestStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MoonrestStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26281, 1, "MoonrestStalker_OnCombat")
RegisterUnitEvent(26281, 2, "MoonrestStalker_OnLeaveCombat")
RegisterUnitEvent(26281, 3, "MoonrestStalker_OnKilledTarget")
RegisterUnitEvent(26281, 4, "MoonrestStalker_OnDied")


--[[ Dragonblight -- Naxxramas Necrolord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function NaxxramasNecrolord_OnCombat(Unit, Event)
Unit:RegisterEvent("NaxxramasNecrolord_ChaosBolt", 6000, 0)
end

function NaxxramasNecrolord_ChaosBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51287, pUnit:GetMainTank()) 
end

function NaxxramasNecrolord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NaxxramasNecrolord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NaxxramasNecrolord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27289, 1, "NaxxramasNecrolord_OnCombat")
RegisterUnitEvent(27289, 2, "NaxxramasNecrolord_OnLeaveCombat")
RegisterUnitEvent(27289, 3, "NaxxramasNecrolord_OnKilledTarget")
RegisterUnitEvent(27289, 4, "NaxxramasNecrolord_OnDied")


--[[ Dragonblight -- Naxxramas Shade.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function NaxxramasShade_OnCombat(Unit, Event)
Unit:RegisterEvent("NaxxramasShade_BlinkStrike", 6000, 0)
Unit:RegisterEvent("NaxxramasShade_DarkStrike", 5500, 0)
end

function NaxxramasShade_BlinkStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49961, pUnit:GetMainTank()) 
end

function NaxxramasShade_DarkStrike(pUnit, Event) 
pUnit:CastSpell(38926) 
end

function NaxxramasShade_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NaxxramasShade_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NaxxramasShade_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27824, 1, "NaxxramasShade_OnCombat")
RegisterUnitEvent(27824, 2, "NaxxramasShade_OnLeaveCombat")
RegisterUnitEvent(27824, 3, "NaxxramasShade_OnKilledTarget")
RegisterUnitEvent(27824, 4, "NaxxramasShade_OnDied")


--[[ Dragonblight -- Necrolord Amarion.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function NecrolordAmarion_OnCombat(Unit, Event)
Unit:RegisterEvent("NecrolordAmarion_Decimate", 5500, 0)
end

function NecrolordAmarion_Decimate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51339, pUnit:GetMainTank()) 
end

function NecrolordAmarion_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NecrolordAmarion_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NecrolordAmarion_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27508, 1, "NecrolordAmarion_OnCombat")
RegisterUnitEvent(27508, 2, "NecrolordAmarion_OnLeaveCombat")
RegisterUnitEvent(27508, 3, "NecrolordAmarion_OnKilledTarget")
RegisterUnitEvent(27508, 4, "NecrolordAmarion_OnDied")


--[[ Dragonblight -- Necrolord Horus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function NecrolordHorus_OnCombat(Unit, Event)
Unit:RegisterEvent("NecrolordHorus_CurseofImpotence", 4000, 1)
Unit:RegisterEvent("NecrolordHorus_ShadowBolt", 7000, 0)
end

function NecrolordHorus_CurseofImpotence(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51340, pUnit:GetMainTank()) 
end

function NecrolordHorus_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20298, pUnit:GetMainTank()) 
end

function NecrolordHorus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NecrolordHorus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NecrolordHorus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27805, 1, "NecrolordHorus_OnCombat")
RegisterUnitEvent(27805, 2, "NecrolordHorus_OnLeaveCombat")
RegisterUnitEvent(27805, 3, "NecrolordHorus_OnKilledTarget")
RegisterUnitEvent(27805, 4, "NecrolordHorus_OnDied")


--[[ Dragonblight -- Necrolord Xavius.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function NecrolordXavius_OnCombat(Unit, Event)
Unit:RegisterEvent("NecrolordXavius_ShadowBolt", 7000, 0)
Unit:RegisterEvent("NecrolordXavius_Shadowflame", 6000, 0)
end

function NecrolordXavius_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20298, pUnit:GetMainTank()) 
end

function NecrolordXavius_Shadowflame(pUnit, Event) 
pUnit:CastSpell(51337) 
end

function NecrolordXavius_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NecrolordXavius_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NecrolordXavius_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27826, 1, "NecrolordXavius_OnCombat")
RegisterUnitEvent(27826, 2, "NecrolordXavius_OnLeaveCombat")
RegisterUnitEvent(27826, 3, "NecrolordXavius_OnKilledTarget")
RegisterUnitEvent(27826, 4, "NecrolordXavius_OnDied")


--[[ Dragonblight -- Nexus Guardian.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function NexusGuardian_OnCombat(Unit, Event)
Unit:RegisterEvent("NexusGuardian_FrostBreath", 6500, 0)
Unit:RegisterEvent("NexusGuardian_FrostCleave", 8000, 0)
end

function NexusGuardian_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47425, pUnit:GetMainTank()) 
end

function NexusGuardian_FrostCleave(pUnit, Event) 
pUnit:CastSpell(51857) 
end

function NexusGuardian_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NexusGuardian_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NexusGuardian_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26276, 1, "NexusGuardian_OnCombat")
RegisterUnitEvent(26276, 2, "NexusGuardian_OnLeaveCombat")
RegisterUnitEvent(26276, 3, "NexusGuardian_OnKilledTarget")
RegisterUnitEvent(26276, 4, "NexusGuardian_OnDied")


--[[ Dragonblight -- Onslaught Bloodhound.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtBloodhound_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtBloodhound_Maul", 5000, 0)
end

function OnslaughtBloodhound_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51875, pUnit:GetMainTank()) 
end

function OnslaughtBloodhound_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtBloodhound_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtBloodhound_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27329, 1, "OnslaughtBloodhound_OnCombat")
RegisterUnitEvent(27329, 2, "OnslaughtBloodhound_OnLeaveCombat")
RegisterUnitEvent(27329, 3, "OnslaughtBloodhound_OnKilledTarget")
RegisterUnitEvent(27329, 4, "OnslaughtBloodhound_OnDied")


--[[ Dragonblight -- Onslaught Commander Iustus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtCommanderIustus_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtCommanderIustus_Bloodthirst", 6000, 0)
Unit:RegisterEvent("OnslaughtCommanderIustus_Whirlwind", 7000, 0)
end

function OnslaughtCommanderIustus_Bloodthirst(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35949, pUnit:GetMainTank()) 
end

function OnslaughtCommanderIustus_Whirlwind(pUnit, Event) 
pUnit:CastSpell(48281) 
end

function OnslaughtCommanderIustus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtCommanderIustus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtCommanderIustus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27334, 1, "OnslaughtCommanderIustus_OnCombat")
RegisterUnitEvent(27334, 2, "OnslaughtCommanderIustus_OnLeaveCombat")
RegisterUnitEvent(27334, 3, "OnslaughtCommanderIustus_OnKilledTarget")
RegisterUnitEvent(27334, 4, "OnslaughtCommanderIustus_OnDied")


--[[ Dragonblight -- Onslaught Death Knight.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtDeathKnight_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtDeathKnight_BloodPresence", 1000, 1)
Unit:RegisterEvent("OnslaughtDeathKnight_PlagueStrike", 8000, 0)
end

function OnslaughtDeathKnight_BloodPresence(pUnit, Event) 
pUnit:CastSpell(50689) 
end

function OnslaughtDeathKnight_PlagueStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50688, pUnit:GetMainTank()) 
end

function OnslaughtDeathKnight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtDeathKnight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtDeathKnight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27367, 1, "OnslaughtDeathKnight_OnCombat")
RegisterUnitEvent(27367, 2, "OnslaughtDeathKnight_OnLeaveCombat")
RegisterUnitEvent(27367, 3, "OnslaughtDeathKnight_OnKilledTarget")
RegisterUnitEvent(27367, 4, "OnslaughtDeathKnight_OnDied")


--[[ Dragonblight -- Onslaught Deckhand.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtDeckhand_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtDeckhand_SideKick", 6000, 0)
end

function OnslaughtDeckhand_SideKick(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50854, pUnit:GetMainTank()) 
end

function OnslaughtDeckhand_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtDeckhand_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtDeckhand_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27233, 1, "OnslaughtDeckhand_OnCombat")
RegisterUnitEvent(27233, 2, "OnslaughtDeckhand_OnLeaveCombat")
RegisterUnitEvent(27233, 3, "OnslaughtDeckhand_OnKilledTarget")
RegisterUnitEvent(27233, 4, "OnslaughtDeckhand_OnDied")


--[[ Dragonblight -- Onslaught Executioner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtExecutioner_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtExecutioner_Hamstring", 8000, 0)
Unit:RegisterEvent("OnslaughtExecutioner_MightyBlow", 9000, 0)
end

function OnslaughtExecutioner_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function OnslaughtExecutioner_MightyBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43673, pUnit:GetMainTank()) 
end

function OnslaughtExecutioner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtExecutioner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtExecutioner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27211, 1, "OnslaughtExecutioner_OnCombat")
RegisterUnitEvent(27211, 2, "OnslaughtExecutioner_OnLeaveCombat")
RegisterUnitEvent(27211, 3, "OnslaughtExecutioner_OnKilledTarget")
RegisterUnitEvent(27211, 4, "OnslaughtExecutioner_OnDied")


--[[ Dragonblight -- Onslaught Mason.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtMason_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtMason_SlingMortar", 6500, 0)
Unit:RegisterEvent("OnslaughtMason_SunderArmor", 5500, 0)
end

function OnslaughtMason_SlingMortar(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50701, pUnit:GetMainTank()) 
end

function OnslaughtMason_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50370, pUnit:GetMainTank()) 
end

function OnslaughtMason_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtMason_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtMason_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27333, 1, "OnslaughtMason_OnCombat")
RegisterUnitEvent(27333, 2, "OnslaughtMason_OnLeaveCombat")
RegisterUnitEvent(27333, 3, "OnslaughtMason_OnKilledTarget")
RegisterUnitEvent(27333, 4, "OnslaughtMason_OnDied")


--[[ Dragonblight -- Onslaught Raven Archon.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtRavenArchon_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtRavenArchon_RavenFlock", 7000, 0)
Unit:RegisterEvent("OnslaughtRavenArchon_UnholyFrenzy", 4000, 1)
end

function OnslaughtRavenArchon_RavenFlock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50740, pUnit:GetMainTank()) 
end

function OnslaughtRavenArchon_UnholyFrenzy(pUnit, Event) 
pUnit:CastSpell(50743) 
end

function OnslaughtRavenArchon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtRavenArchon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtRavenArchon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27357, 1, "OnslaughtRavenArchon_OnCombat")
RegisterUnitEvent(27357, 2, "OnslaughtRavenArchon_OnLeaveCombat")
RegisterUnitEvent(27357, 3, "OnslaughtRavenArchon_OnKilledTarget")
RegisterUnitEvent(27357, 4, "OnslaughtRavenArchon_OnDied")


--[[ Dragonblight -- Onslaught Raven Priest.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtRavenPriest_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtRavenPriest_RavenFlock", 7000, 0)
Unit:RegisterEvent("OnslaughtRavenPriest_RavenHeal", 9000, 0)
end

function OnslaughtRavenPriest_RavenFlock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50740, pUnit:GetClosestPlayer()) 
end

function OnslaughtRavenPriest_RavenHeal(pUnit, Event) 
pUnit:CastSpell(50750) 
end

function OnslaughtRavenPriest_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtRavenPriest_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtRavenPriest_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27202, 1, "OnslaughtRavenPriest_OnCombat")
RegisterUnitEvent(27202, 2, "OnslaughtRavenPriest_OnLeaveCombat")
RegisterUnitEvent(27202, 3, "OnslaughtRavenPriest_OnKilledTarget")
RegisterUnitEvent(27202, 4, "OnslaughtRavenPriest_OnDied")


--[[ Dragonblight -- Onslaught Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtScout_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtScout_Sprint", 4000, 1)
end

function OnslaughtScout_Sprint(pUnit, Event) 
pUnit:CastSpell(48594) 
end

function OnslaughtScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27332, 1, "OnslaughtScout_OnCombat")
RegisterUnitEvent(27332, 2, "OnslaughtScout_OnLeaveCombat")
RegisterUnitEvent(27332, 3, "OnslaughtScout_OnKilledTarget")
RegisterUnitEvent(27332, 4, "OnslaughtScout_OnDied")


--[[ Dragonblight -- Onslaught Workman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtWorkman_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtWorkman_Chop", 7000, 0)
end

function OnslaughtWorkman_Chop(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43410, pUnit:GetMainTank()) 
end

function OnslaughtWorkman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtWorkman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtWorkman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27207, 1, "OnslaughtWorkman_OnCombat")
RegisterUnitEvent(27207, 2, "OnslaughtWorkman_OnLeaveCombat")
RegisterUnitEvent(27207, 3, "OnslaughtWorkman_OnKilledTarget")
RegisterUnitEvent(27207, 4, "OnslaughtWorkman_OnDied")


--[[ Dragonblight -- Overseer Deathgaze.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OverseerDeathgaze_OnCombat(Unit, Event)
Unit:RegisterEvent("OverseerDeathgaze_ConversionBeam", 9100, 0)
Unit:RegisterEvent("OverseerDeathgaze_ShadowBolt", 6000, 0)
end

function OverseerDeathgaze_ConversionBeam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50659, pUnit:GetMainTank()) 
end

function OverseerDeathgaze_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12739, pUnit:GetMainTank()) 
end

function OverseerDeathgaze_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OverseerDeathgaze_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OverseerDeathgaze_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27122, 1, "OverseerDeathgaze_OnCombat")
RegisterUnitEvent(27122, 2, "OverseerDeathgaze_OnLeaveCombat")
RegisterUnitEvent(27122, 3, "OverseerDeathgaze_OnKilledTarget")
RegisterUnitEvent(27122, 4, "OverseerDeathgaze_OnDied")


--[[ Dragonblight -- Reconstructed Frost Wyrm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function ReconstructedFrostWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("ReconstructedFrostWyrm_FrostBreath", 6500, 0)
end

function ReconstructedFrostWyrm_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47425, pUnit:GetMainTank()) 
end

function ReconstructedFrostWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ReconstructedFrostWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ReconstructedFrostWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27285, 1, "ReconstructedFrostWyrm_OnCombat")
RegisterUnitEvent(27285, 2, "ReconstructedFrostWyrm_OnLeaveCombat")
RegisterUnitEvent(27285, 3, "ReconstructedFrostWyrm_OnKilledTarget")
RegisterUnitEvent(27285, 4, "ReconstructedFrostWyrm_OnDied")


--[[ Dragonblight -- Plague Eruptor.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function PlagueEruptor_OnCombat(Unit, Event)
Unit:RegisterEvent("PlagueEruptor_PlagueCloud", 10000, 0)
end

function PlagueEruptor_PlagueCloud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49350, pUnit:GetMainTank()) 
end

function PlagueEruptor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PlagueEruptor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PlagueEruptor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27611, 1, "PlagueEruptor_OnCombat")
RegisterUnitEvent(27611, 2, "PlagueEruptor_OnLeaveCombat")
RegisterUnitEvent(27611, 3, "PlagueEruptor_OnKilledTarget")
RegisterUnitEvent(27611, 4, "PlagueEruptor_OnDied")


--[[ Dragonblight -- Rabid Grizzly.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function RabidGrizzly_OnCombat(Unit, Event)
Unit:RegisterEvent("RabidGrizzly_Rabies", 8000, 0)
end

function RabidGrizzly_Rabies(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51951, pUnit:GetMainTank()) 
end

function RabidGrizzly_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RabidGrizzly_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RabidGrizzly_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26643, 1, "RabidGrizzly_OnCombat")
RegisterUnitEvent(26643, 2, "RabidGrizzly_OnLeaveCombat")
RegisterUnitEvent(26643, 3, "RabidGrizzly_OnKilledTarget")
RegisterUnitEvent(26643, 4, "RabidGrizzly_OnDied")


--[[ Dragonblight -- Rattlebore.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function Rattlebore_OnCombat(Unit, Event)
Unit:RegisterEvent("Rattlebore_CorrodedMind", 10000, 0)
Unit:RegisterEvent("Rattlebore_CorrosiveSpit", 9000, 0)
Unit:RegisterEvent("Rattlebore_PowerfulBite", 7000, 0)
end

function Rattlebore_CorrodedMind(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51203, pUnit:GetMainTank()) 
end

function Rattlebore_CorrosiveSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47447, pUnit:GetMainTank()) 
end

function Rattlebore_PowerfulBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48287, pUnit:GetMainTank()) 
end

function Rattlebore_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rattlebore_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rattlebore_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26360, 1, "Rattlebore_OnCombat")
RegisterUnitEvent(26360, 2, "Rattlebore_OnLeaveCombat")
RegisterUnitEvent(26360, 3, "Rattlebore_OnKilledTarget")
RegisterUnitEvent(26360, 4, "Rattlebore_OnDied")


--[[ Dragonblight -- Reanimated Drakkari Tribesman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function ReanimatedDrakkariTribesman_OnCombat(Unit, Event)
Unit:RegisterEvent("ReanimatedDrakkariTribesman_Cannibalize", 10000, 0)
Unit:RegisterEvent("ReanimatedDrakkariTribesman_CrazedHunger", 6000, 0)
end

function ReanimatedDrakkariTribesman_Cannibalize(pUnit, Event) 
pUnit:CastSpell(50642) 
end

function ReanimatedDrakkariTribesman_CrazedHunger(pUnit, Event) 
pUnit:CastSpell(3151) 
end

function ReanimatedDrakkariTribesman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ReanimatedDrakkariTribesman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ReanimatedDrakkariTribesman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26946, 1, "ReanimatedDrakkariTribesman_OnCombat")
RegisterUnitEvent(26946, 2, "ReanimatedDrakkariTribesman_OnLeaveCombat")
RegisterUnitEvent(26946, 3, "ReanimatedDrakkariTribesman_OnKilledTarget")
RegisterUnitEvent(26946, 4, "ReanimatedDrakkariTribesman_OnDied")


--[[ Dragonblight -- Reanimated Frost Wyrm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function ReanimatedFrostWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("ReanimatedFrostWyrm_FrostBreath", 6500, 0)
end

function ReanimatedFrostWyrm_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47425, pUnit:GetMainTank()) 
end

function ReanimatedFrostWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ReanimatedFrostWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ReanimatedFrostWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26841, 1, "ReanimatedFrostWyrm_OnCombat")
RegisterUnitEvent(26841, 2, "ReanimatedFrostWyrm_OnLeaveCombat")
RegisterUnitEvent(26841, 3, "ReanimatedFrostWyrm_OnKilledTarget")
RegisterUnitEvent(26841, 4, "ReanimatedFrostWyrm_OnDied")


--[[ Dragonblight -- Reanimated Noble.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function ReanimatedNoble_OnCombat(Unit, Event)
Unit:RegisterEvent("ReanimatedNoble_SanguineStrike", 8000, 0)
end

function ReanimatedNoble_SanguineStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51285, pUnit:GetMainTank()) 
end

function ReanimatedNoble_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ReanimatedNoble_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ReanimatedNoble_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27552, 1, "ReanimatedNoble_OnCombat")
RegisterUnitEvent(27552, 2, "ReanimatedNoble_OnLeaveCombat")
RegisterUnitEvent(27552, 3, "ReanimatedNoble_OnKilledTarget")
RegisterUnitEvent(27552, 4, "ReanimatedNoble_OnDied")


--[[ Dragonblight -- Risen Wintergarde Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function RisenWintergardeDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("RisenWintergardeDefender_UnwaveringWill", 4000, 1)
end

function RisenWintergardeDefender_UnwaveringWill(pUnit, Event) 
pUnit:CastSpell(51307) 
end

function RisenWintergardeDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RisenWintergardeDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RisenWintergardeDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27284, 1, "RisenWintergardeDefender_OnCombat")
RegisterUnitEvent(27284, 2, "RisenWintergardeDefender_OnLeaveCombat")
RegisterUnitEvent(27284, 3, "RisenWintergardeDefender_OnKilledTarget")
RegisterUnitEvent(27284, 4, "RisenWintergardeDefender_OnDied")


--[[ Dragonblight -- Risen Wintergarde Mage.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function RisenWintergardeMage_OnCombat(Unit, Event)
Unit:RegisterEvent("RisenWintergardeMage_FireBlast", 6000, 0)
Unit:RegisterEvent("RisenWintergardeMage_Frostbolt", 7000, 0)
end

function RisenWintergardeMage_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13339, pUnit:GetMainTank()) 
end

function RisenWintergardeMage_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function RisenWintergardeMage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RisenWintergardeMage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RisenWintergardeMage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27283, 1, "RisenWintergardeMage_OnCombat")
RegisterUnitEvent(27283, 2, "RisenWintergardeMage_OnLeaveCombat")
RegisterUnitEvent(27283, 3, "RisenWintergardeMage_OnKilledTarget")
RegisterUnitEvent(27283, 4, "RisenWintergardeMage_OnDied")


--[[ Dragonblight -- Risen Wintergarde Miner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function RisenWintergardeMiner_OnCombat(Unit, Event)
Unit:RegisterEvent("RisenWintergardeMiner_PunctureWound", 7000, 0)
end

function RisenWintergardeMiner_PunctureWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48374, pUnit:GetMainTank()) 
end

function RisenWintergardeMiner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RisenWintergardeMiner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RisenWintergardeMiner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27401, 1, "RisenWintergardeMiner_OnCombat")
RegisterUnitEvent(27401, 2, "RisenWintergardeMiner_OnLeaveCombat")
RegisterUnitEvent(27401, 3, "RisenWintergardeMiner_OnKilledTarget")
RegisterUnitEvent(27401, 4, "RisenWintergardeMiner_OnDied")


--[[ Dragonblight -- Roanauk Icemist.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function RoanaukIcemist_OnCombat(Unit, Event)
Unit:RegisterEvent("RoanaukIcemist_GloryoftheAncestors", 5000, 1)
Unit:RegisterEvent("RoanaukIcemist_IcemistsBlessing", 10000, 0)
end

function RoanaukIcemist_GloryoftheAncestors(pUnit, Event) 
pUnit:CastSpell(47378) 
end

function RoanaukIcemist_IcemistsBlessing(pUnit, Event) 
pUnit:CastSpell(47379) 
end

function RoanaukIcemist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RoanaukIcemist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RoanaukIcemist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26654, 1, "RoanaukIcemist_OnCombat")
RegisterUnitEvent(26654, 2, "RoanaukIcemist_OnLeaveCombat")
RegisterUnitEvent(26654, 3, "RoanaukIcemist_OnKilledTarget")
RegisterUnitEvent(26654, 4, "RoanaukIcemist_OnDied")


--[[ Dragonblight -- Rothin the Decaying.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function RothintheDecaying_OnCombat(Unit, Event)
Unit:RegisterEvent("RothintheDecaying_AegisofNeltharion", 4000, 1)
Unit:RegisterEvent("RothintheDecaying_Shadowflame", 7000, 0)
Unit:RegisterEvent("RothintheDecaying_ShadowBolt", 8000, 0)
end

function RothintheDecaying_AegisofNeltharion(pUnit, Event) 
pUnit:CastSpell(51512) 
end

function RothintheDecaying_Shadowflame(pUnit, Event) 
pUnit:CastSpell(51337) 
end

function RothintheDecaying_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function RothintheDecaying_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RothintheDecaying_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RothintheDecaying_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27355, 1, "RothintheDecaying_OnCombat")
RegisterUnitEvent(27355, 2, "RothintheDecaying_OnLeaveCombat")
RegisterUnitEvent(27355, 3, "RothintheDecaying_OnKilledTarget")
RegisterUnitEvent(27355, 4, "RothintheDecaying_OnDied")


--[[ Dragonblight -- Sarendryana.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function Sarendryana_OnCombat(Unit, Event)
Unit:RegisterEvent("Sarendryana_FrostShock", 6000, 0)
end

function Sarendryana_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function Sarendryana_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sarendryana_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sarendryana_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26837, 1, "Sarendryana_OnCombat")
RegisterUnitEvent(26837, 2, "Sarendryana_OnLeaveCombat")
RegisterUnitEvent(26837, 3, "Sarendryana_OnKilledTarget")
RegisterUnitEvent(26837, 4, "Sarendryana_OnDied")


--[[ Dragonblight -- Scourge Siegesmith.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function ScourgeSiegesmith_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgeSiegesmith_Bomb", 5500, 0)
end

function ScourgeSiegesmith_Bomb(pUnit, Event) 
pUnit:CastSpell(22334) 
end

function ScourgeSiegesmith_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgeSiegesmith_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgeSiegesmith_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27410, 1, "ScourgeSiegesmith_OnCombat")
RegisterUnitEvent(27410, 2, "ScourgeSiegesmith_OnLeaveCombat")
RegisterUnitEvent(27410, 3, "ScourgeSiegesmith_OnKilledTarget")
RegisterUnitEvent(27410, 4, "ScourgeSiegesmith_OnDied")


--[[ Dragonblight -- Scourge Technician.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function ScourgeTechnician_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgeTechnician_Lobotomize", 6000, 0)
end

function ScourgeTechnician_Lobotomize(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51316, pUnit:GetMainTank()) 
end

function ScourgeTechnician_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgeTechnician_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgeTechnician_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27799, 1, "ScourgeTechnician_OnCombat")
RegisterUnitEvent(27799, 2, "ScourgeTechnician_OnLeaveCombat")
RegisterUnitEvent(27799, 3, "ScourgeTechnician_OnKilledTarget")
RegisterUnitEvent(27799, 4, "ScourgeTechnician_OnDied")


--[[ Dragonblight -- Sinok the Shadowrager.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SinoktheShadowrager_OnCombat(Unit, Event)
Unit:RegisterEvent("SinoktheShadowrager_BlinkStrike", 6000, 0)
Unit:RegisterEvent("SinoktheShadowrager_RagingShadows", 8000, 0)
end

function SinoktheShadowrager_BlinkStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49961, pUnit:GetMainTank()) 
end

function SinoktheShadowrager_RagingShadows(pUnit, Event) 
pUnit:CastSpell(51622) 
end

function SinoktheShadowrager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SinoktheShadowrager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SinoktheShadowrager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26771, 1, "SinoktheShadowrager_OnCombat")
RegisterUnitEvent(26771, 2, "SinoktheShadowrager_OnLeaveCombat")
RegisterUnitEvent(26771, 3, "SinoktheShadowrager_OnKilledTarget")
RegisterUnitEvent(26771, 4, "SinoktheShadowrager_OnDied")


--[[ Dragonblight -- Smoldering Construct.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SmolderingConstruct_OnCombat(Unit, Event)
Unit:RegisterEvent("SmolderingConstruct_Backlash", 6000, 0)
end

function SmolderingConstruct_Backlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51439, pUnit:GetMainTank()) 
end

function SmolderingConstruct_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SmolderingConstruct_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SmolderingConstruct_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27362, 1, "SmolderingConstruct_OnCombat")
RegisterUnitEvent(27362, 2, "SmolderingConstruct_OnLeaveCombat")
RegisterUnitEvent(27362, 3, "SmolderingConstruct_OnKilledTarget")
RegisterUnitEvent(27362, 4, "SmolderingConstruct_OnDied")


--[[ Dragonblight -- Smoldering Geist.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SmolderingGeist_OnCombat(Unit, Event)
Unit:RegisterEvent("SmolderingGeist_BurningBlaze", 6500, 0)
end

function SmolderingGeist_BurningBlaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51500, pUnit:GetMainTank()) 
end

function SmolderingGeist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SmolderingGeist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SmolderingGeist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27363, 1, "SmolderingGeist_OnCombat")
RegisterUnitEvent(27363, 2, "SmolderingGeist_OnLeaveCombat")
RegisterUnitEvent(27363, 3, "SmolderingGeist_OnKilledTarget")
RegisterUnitEvent(27363, 4, "SmolderingGeist_OnDied")


--[[ Dragonblight -- Smoldering Skeleton.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SmolderingSkeleton_OnCombat(Unit, Event)
Unit:RegisterEvent("SmolderingSkeleton_SmolderingBones", 8000, 0)
end

function SmolderingSkeleton_SmolderingBones(pUnit, Event) 
pUnit:CastSpell(51437) 
end

function SmolderingSkeleton_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SmolderingSkeleton_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SmolderingSkeleton_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27360, 1, "SmolderingSkeleton_OnCombat")
RegisterUnitEvent(27360, 2, "SmolderingSkeleton_OnLeaveCombat")
RegisterUnitEvent(27360, 3, "SmolderingSkeleton_OnKilledTarget")
RegisterUnitEvent(27360, 4, "SmolderingSkeleton_OnDied")


--[[ Dragonblight -- Snowfall Elk.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SnowfallElk_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowfallElk_Puncture", 5000, 0)
end

function SnowfallElk_Puncture(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15976, pUnit:GetMainTank()) 
end

function SnowfallElk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowfallElk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowfallElk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26615, 1, "SnowfallElk_OnCombat")
RegisterUnitEvent(26615, 2, "SnowfallElk_OnLeaveCombat")
RegisterUnitEvent(26615, 3, "SnowfallElk_OnKilledTarget")
RegisterUnitEvent(26615, 4, "SnowfallElk_OnDied")


--[[ Dragonblight -- Snowfall Glade Den Mother.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SnowfallGladeDenMother_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowfallGladeDenMother_Enrage", 10000, 1)
end

function SnowfallGladeDenMother_Enrage(pUnit, Event) 
pUnit:CastSpell(48193) 
end

function SnowfallGladeDenMother_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowfallGladeDenMother_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowfallGladeDenMother_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26199, 1, "SnowfallGladeDenMother_OnCombat")
RegisterUnitEvent(26199, 2, "SnowfallGladeDenMother_OnLeaveCombat")
RegisterUnitEvent(26199, 3, "SnowfallGladeDenMother_OnKilledTarget")
RegisterUnitEvent(26199, 4, "SnowfallGladeDenMother_OnDied")


--[[ Dragonblight -- Snowfall Glade Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SnowfallGladeShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowfallGladeShaman_FrostShock", 6000, 0)
Unit:RegisterEvent("SnowfallGladeShaman_HealingWave", 10000, 0)
Unit:RegisterEvent("SnowfallGladeShaman_LightningShield", 5000, 0)
end

function SnowfallGladeShaman_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function SnowfallGladeShaman_HealingWave(pUnit, Event) 
pUnit:CastSpell(11986) 
end

function SnowfallGladeShaman_LightningShield(pUnit, Event) 
pUnit:CastSpell(12550) 
end

function SnowfallGladeShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowfallGladeShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowfallGladeShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26201, 1, "SnowfallGladeShaman_OnCombat")
RegisterUnitEvent(26201, 2, "SnowfallGladeShaman_OnLeaveCombat")
RegisterUnitEvent(26201, 3, "SnowfallGladeShaman_OnKilledTarget")
RegisterUnitEvent(26201, 4, "SnowfallGladeShaman_OnDied")


--[[ Dragonblight -- Snowfall Glade Wolvar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SnowfallGladeWolvar_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowfallGladeWolvar_Net", 8000, 0)
Unit:RegisterEvent("SnowfallGladeWolvar_ThrowSpear", 6000, 0)
end

function SnowfallGladeWolvar_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function SnowfallGladeWolvar_ThrowSpear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43413, pUnit:GetMainTank()) 
end

function SnowfallGladeWolvar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowfallGladeWolvar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowfallGladeWolvar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26198, 1, "SnowfallGladeWolvar_OnCombat")
RegisterUnitEvent(26198, 2, "SnowfallGladeWolvar_OnLeaveCombat")
RegisterUnitEvent(26198, 3, "SnowfallGladeWolvar_OnKilledTarget")
RegisterUnitEvent(26198, 4, "SnowfallGladeWolvar_OnDied")


--[[ Dragonblight -- Snowplain Disciple.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SnowplainDisciple_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowplainDisciple_Frostbolt", 6500, 0)
Unit:RegisterEvent("SnowplainDisciple_RenewingBeam", 11000, 0)
end

function SnowplainDisciple_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(61730, pUnit:GetMainTank()) 
end

function SnowplainDisciple_RenewingBeam(pUnit, Event) 
pUnit:CastSpell(52011) 
end

function SnowplainDisciple_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowplainDisciple_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowplainDisciple_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26705, 1, "SnowplainDisciple_OnCombat")
RegisterUnitEvent(26705, 2, "SnowplainDisciple_OnLeaveCombat")
RegisterUnitEvent(26705, 3, "SnowplainDisciple_OnKilledTarget")
RegisterUnitEvent(26705, 4, "SnowplainDisciple_OnDied")


--[[ Dragonblight -- Snowplain Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SnowplainShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowplainShaman_SearingTotem", 3000, 1)
end

function SnowplainShaman_SearingTotem(pUnit, Event) 
pUnit:CastSpell(39591) 
end

function SnowplainShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowplainShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowplainShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27279, 1, "SnowplainShaman_OnCombat")
RegisterUnitEvent(27279, 2, "SnowplainShaman_OnLeaveCombat")
RegisterUnitEvent(27279, 3, "SnowplainShaman_OnKilledTarget")
RegisterUnitEvent(27279, 4, "SnowplainShaman_OnDied")


--[[ Dragonblight -- Stars Rest Sentinel.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function StarsRestSentinel_OnCombat(Unit, Event)
Unit:RegisterEvent("StarsRestSentinel_FrostArrow", 8000, 0)
Unit:RegisterEvent("StarsRestSentinel_Shoot", 6000, 0)
end

function StarsRestSentinel_FrostArrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47059, pUnit:GetMainTank()) 
end

function StarsRestSentinel_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(23337, pUnit:GetMainTank()) 
end

function StarsRestSentinel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StarsRestSentinel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StarsRestSentinel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26448, 1, "StarsRestSentinel_OnCombat")
RegisterUnitEvent(26448, 2, "StarsRestSentinel_OnLeaveCombat")
RegisterUnitEvent(26448, 3, "StarsRestSentinel_OnKilledTarget")
RegisterUnitEvent(26448, 4, "StarsRestSentinel_OnDied")


--[[ Dragonblight -- Surge Needle Sorcerer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SurgeNeedleSorcerer_OnCombat(Unit, Event)
Unit:RegisterEvent("SurgeNeedleSorcerer_ArcaneBlast", 6500, 0)
end

function SurgeNeedleSorcerer_ArcaneBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51797, pUnit:GetMainTank()) 
end

function SurgeNeedleSorcerer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SurgeNeedleSorcerer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SurgeNeedleSorcerer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26257, 1, "SurgeNeedleSorcerer_OnCombat")
RegisterUnitEvent(26257, 2, "SurgeNeedleSorcerer_OnLeaveCombat")
RegisterUnitEvent(26257, 3, "SurgeNeedleSorcerer_OnKilledTarget")
RegisterUnitEvent(26257, 4, "SurgeNeedleSorcerer_OnDied")


--[[ Dragonblight -- Tattered Abomination.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TatteredAbomination_OnCombat(Unit, Event)
Unit:RegisterEvent("TatteredAbomination_ScourgeHook", 7000, 0)
end

function TatteredAbomination_ScourgeHook(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50335, pUnit:GetMainTank()) 
end

function TatteredAbomination_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TatteredAbomination_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TatteredAbomination_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27797, 1, "TatteredAbomination_OnCombat")
RegisterUnitEvent(27797, 2, "TatteredAbomination_OnLeaveCombat")
RegisterUnitEvent(27797, 3, "TatteredAbomination_OnKilledTarget")
RegisterUnitEvent(27797, 4, "TatteredAbomination_OnDied")


--[[ Dragonblight -- Taunka Windfury.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TaunkaWindfury_OnCombat(Unit, Event)
Unit:RegisterEvent("TaunkaWindfury_HealingTouch", 10000, 0)
Unit:RegisterEvent("TaunkaWindfury_Moonfire", 5500, 0)
end

function TaunkaWindfury_HealingTouch(pUnit, Event) 
pUnit:CastSpell(23381) 
end

function TaunkaWindfury_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(23380, pUnit:GetMainTank()) 
end

function TaunkaWindfury_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TaunkaWindfury_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TaunkaWindfury_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27571, 1, "TaunkaWindfury_OnCombat")
RegisterUnitEvent(27571, 2, "TaunkaWindfury_OnLeaveCombat")
RegisterUnitEvent(27571, 3, "TaunkaWindfury_OnKilledTarget")
RegisterUnitEvent(27571, 4, "TaunkaWindfury_OnDied")


--[[ Dragonblight -- Taunkale Brave.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TaunkaleBrave_OnCombat(Unit, Event)
Unit:RegisterEvent("TaunkaleBrave_GroundSlam", 7000, 0)
end

function TaunkaleBrave_GroundSlam(pUnit, Event) 
pUnit:CastSpell(52058) 
end

function TaunkaleBrave_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TaunkaleBrave_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TaunkaleBrave_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26157, 1, "TaunkaleBrave_OnCombat")
RegisterUnitEvent(26157, 2, "TaunkaleBrave_OnLeaveCombat")
RegisterUnitEvent(26157, 3, "TaunkaleBrave_OnKilledTarget")
RegisterUnitEvent(26157, 4, "TaunkaleBrave_OnDied")


--[[ Dragonblight -- Tempest Revenant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TempestRevenant_OnCombat(Unit, Event)
Unit:RegisterEvent("TempestRevenant_SeethingFlames", 6000, 0)
end

function TempestRevenant_SeethingFlames(pUnit, Event) 
pUnit:FullCastSpellOnTarget(56620, pUnit:GetMainTank()) 
end

function TempestRevenant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TempestRevenant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TempestRevenant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30875, 1, "TempestRevenant_OnCombat")
RegisterUnitEvent(30875, 2, "TempestRevenant_OnLeaveCombat")
RegisterUnitEvent(30875, 3, "TempestRevenant_OnKilledTarget")
RegisterUnitEvent(30875, 4, "TempestRevenant_OnDied")


--[[ Dragonblight -- Tempus Wyrm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TempusWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("TempusWyrm_TimeShock", 5000, 0)
end

function TempusWyrm_TimeShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(60076, pUnit:GetMainTank()) 
end

function TempusWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TempusWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TempusWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32180, 1, "TempusWyrm_OnCombat")
RegisterUnitEvent(32180, 2, "TempusWyrm_OnLeaveCombat")
RegisterUnitEvent(32180, 3, "TempusWyrm_OnKilledTarget")
RegisterUnitEvent(32180, 4, "TempusWyrm_OnDied")


--[[ Dragonblight -- Thelzan the Duskbringer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function ThelzantheDuskbringer_OnCombat(Unit, Event)
Unit:RegisterEvent("ThelzantheDuskbringer_ChainsofIce", 16000, 0)
Unit:RegisterEvent("ThelzantheDuskbringer_FrostArmor", 11000, 0)
Unit:RegisterEvent("ThelzantheDuskbringer_Frostbolt", 7000, 0)
Unit:RegisterEvent("ThelzantheDuskbringer_FrostboltVolley", 12000, 0)
Unit:RegisterEvent("ThelzantheDuskbringer_ScreamofChaos", 20000, 0)
end

function ThelzantheDuskbringer_ChainsofIce(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39268, pUnit:GetRandomPlayer(0)) 
end

function ThelzantheDuskbringer_FrostArmor(pUnit, Event) 
pUnit:CastSpell(31256) 
end

function ThelzantheDuskbringer_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(42719, pUnit:GetMainTank()) 
end

function ThelzantheDuskbringer_FrostboltVolley(pUnit, Event) 
pUnit:CastSpell(22643) 
end

function ThelzantheDuskbringer_ScreamofChaos(pUnit, Event) 
pUnit:CastSpell(50497) 
end

function ThelzantheDuskbringer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThelzantheDuskbringer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThelzantheDuskbringer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27383, 1, "ThelzantheDuskbringer_OnCombat")
RegisterUnitEvent(27383, 2, "ThelzantheDuskbringer_OnLeaveCombat")
RegisterUnitEvent(27383, 3, "ThelzantheDuskbringer_OnKilledTarget")
RegisterUnitEvent(27383, 4, "ThelzantheDuskbringer_OnDied")


--[[ Dragonblight -- Tivax the Breaker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TivaxtheBreaker_OnCombat(Unit, Event)
Unit:RegisterEvent("TivaxtheBreaker_FireBlast", 5000, 0)
Unit:RegisterEvent("TivaxtheBreaker_Scorch", 6000, 0)
end

function TivaxtheBreaker_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20795, pUnit:GetMainTank()) 
end

function TivaxtheBreaker_Scorch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13878, pUnit:GetMainTank()) 
end

function TivaxtheBreaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TivaxtheBreaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TivaxtheBreaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26770, 1, "TivaxtheBreaker_OnCombat")
RegisterUnitEvent(26770, 2, "TivaxtheBreaker_OnLeaveCombat")
RegisterUnitEvent(26770, 3, "TivaxtheBreaker_OnKilledTarget")
RegisterUnitEvent(26770, 4, "TivaxtheBreaker_OnDied")


--[[ Dragonblight -- Tormented Drakkari.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TormentedDrakkari_OnCombat(Unit, Event)
Unit:RegisterEvent("TormentedDrakkari_Cannibalize", 12000, 0)
Unit:RegisterEvent("TormentedDrakkari_CrazedHunger", 6000, 1)
Unit:RegisterEvent("TormentedDrakkari_Kick", 7000, 0)
Unit:RegisterEvent("TormentedDrakkari_TormentedRoar", 8000, 0)
end

function TormentedDrakkari_Cannibalize(pUnit, Event) 
pUnit:CastSpell(50642) 
end

function TormentedDrakkari_CrazedHunger(pUnit, Event) 
pUnit:CastSpell(3151) 
end

function TormentedDrakkari_Kick(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43518, pUnit:GetMainTank()) 
end

function TormentedDrakkari_TormentedRoar(pUnit, Event) 
pUnit:CastSpell(50636) 
end

function TormentedDrakkari_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TormentedDrakkari_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TormentedDrakkari_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26965, 1, "TormentedDrakkari_OnCombat")
RegisterUnitEvent(26965, 2, "TormentedDrakkari_OnLeaveCombat")
RegisterUnitEvent(26965, 3, "TormentedDrakkari_OnKilledTarget")
RegisterUnitEvent(26965, 4, "TormentedDrakkari_OnDied")


--[[ Dragonblight -- Torturer LeCraft.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TorturerLeCraft_OnCombat(Unit, Event)
Unit:RegisterEvent("TorturerLeCraft_Hemorrhage", 5000, 0)
Unit:RegisterEvent("TorturerLeCraft_KidneyShot", 10000, 0)
end

function TorturerLeCraft_Hemorrhage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30478) 
end

function TorturerLeCraft_KidneyShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30621, pUnit:GetMainTank()) 
end

function TorturerLeCraft_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TorturerLeCraft_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TorturerLeCraft_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27209, 1, "TorturerLeCraft_OnCombat")
RegisterUnitEvent(27209, 2, "TorturerLeCraft_OnLeaveCombat")
RegisterUnitEvent(27209, 3, "TorturerLeCraft_OnKilledTarget")
RegisterUnitEvent(27209, 4, "TorturerLeCraft_OnDied")


--[[ Dragonblight -- Tukemuth.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function Tukemuth_OnCombat(Unit, Event)
Unit:RegisterEvent("Tukemuth_Trample", 10000, 0)
Unit:RegisterEvent("Tukemuth_TuskStrike", 8000, 0)
end

function Tukemuth_Trample(pUnit, Event) 
pUnit:CastSpell(57066) 
end

function Tukemuth_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function Tukemuth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tukemuth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tukemuth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32400, 1, "Tukemuth_OnCombat")
RegisterUnitEvent(32400, 2, "Tukemuth_OnLeaveCombat")
RegisterUnitEvent(32400, 3, "Tukemuth_OnKilledTarget")
RegisterUnitEvent(32400, 4, "Tukemuth_OnDied")


--[[ Dragonblight -- Tundra Scavenger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TundraScavenger_OnCombat(Unit, Event)
Unit:RegisterEvent("TundraScavenger_Maul", 5000, 0)
end

function TundraScavenger_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51875, pUnit:GetMainTank()) 
end

function TundraScavenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TundraScavenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TundraScavenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27294, 1, "TundraScavenger_OnCombat")
RegisterUnitEvent(27294, 2, "TundraScavenger_OnLeaveCombat")
RegisterUnitEvent(27294, 3, "TundraScavenger_OnKilledTarget")
RegisterUnitEvent(27294, 4, "TundraScavenger_OnDied")


--[[ Dragonblight -- Turgid the Vile.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TurgidtheVile_OnCombat(Unit, Event)
Unit:RegisterEvent("TurgidtheVile_ScourgeHook", 6000, 0)
Unit:RegisterEvent("TurgidtheVile_VileVommit", 8000, 0)
end

function TurgidtheVile_ScourgeHook(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50335, pUnit:GetMainTank()) 
end

function TurgidtheVile_VileVommit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51356, pUnit:GetMainTank()) 
end

function TurgidtheVile_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TurgidtheVile_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TurgidtheVile_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27808, 1, "TurgidtheVile_OnCombat")
RegisterUnitEvent(27808, 2, "TurgidtheVile_OnLeaveCombat")
RegisterUnitEvent(27808, 3, "TurgidtheVile_OnKilledTarget")
RegisterUnitEvent(27808, 4, "TurgidtheVile_OnDied")


--[[ Dragonblight -- Venomspite Deathguard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function VenomspiteDeathguard_OnCombat(Unit, Event)
Unit:RegisterEvent("VenomspiteDeathguard_Revenge", 5000, 0)
Unit:RegisterEvent("VenomspiteDeathguard_ShieldBlock", 6000, 0)
end

function VenomspiteDeathguard_Revenge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12170, pUnit:GetMainTank()) 
end

function VenomspiteDeathguard_ShieldBlock(pUnit, Event) 
pUnit:CastSpell(12169) 
end

function VenomspiteDeathguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VenomspiteDeathguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VenomspiteDeathguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27035, 1, "VenomspiteDeathguard_OnCombat")
RegisterUnitEvent(27035, 2, "VenomspiteDeathguard_OnLeaveCombat")
RegisterUnitEvent(27035, 3, "VenomspiteDeathguard_OnKilledTarget")
RegisterUnitEvent(27035, 4, "VenomspiteDeathguard_OnDied")


--[[ Dragonblight -- Wailing Soul.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function WailingSoul_OnCombat(Unit, Event)
Unit:RegisterEvent("WailingSoul_TugSoul", 10000, 0)
end

function WailingSoul_TugSoul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50027, pUnit:GetMainTank()) 
end

function WailingSoul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WailingSoul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WailingSoul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27836, 1, "WailingSoul_OnCombat")
RegisterUnitEvent(27836, 2, "WailingSoul_OnLeaveCombat")
RegisterUnitEvent(27836, 3, "WailingSoul_OnKilledTarget")
RegisterUnitEvent(27836, 4, "WailingSoul_OnDied")


--[[ Dragonblight -- Warsong Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function WarsongShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongShaman_ChainHeal", 16000, 0)
Unit:RegisterEvent("WarsongShaman_ChainLightning", 9000, 0)
Unit:RegisterEvent("WarsongShaman_EarthShock", 12000, 0)
Unit:RegisterEvent("WarsongShaman_LesserHealingWave", 20000, 0)
Unit:RegisterEvent("WarsongShaman_WaterShield", 4000, 1)
end

function WarsongShaman_ChainHeal(pUnit, Event) 
pUnit:CastSpell(16367) 
end

function WarsongShaman_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39945, pUnit:GetMainTank()) 
end

function WarsongShaman_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25025, pUnit:GetMainTank()) 
end

function WarsongShaman_LesserHealingWave(pUnit, Event) 
pUnit:CastSpell(49309) 
end

function WarsongShaman_WaterShield(pUnit, Event) 
pUnit:CastSpell(34827) 
end

function WarsongShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27678, 1, "WarsongShaman_OnCombat")
RegisterUnitEvent(27678, 2, "WarsongShaman_OnLeaveCombat")
RegisterUnitEvent(27678, 3, "WarsongShaman_OnKilledTarget")
RegisterUnitEvent(27678, 4, "WarsongShaman_OnDied")


--[[ Dragonblight -- Wastes Digger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function WastesDigger_OnCombat(Unit, Event)
Unit:RegisterEvent("WastesDigger_CarnivorousBite", 4000, 0)
end

function WastesDigger_CarnivorousBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30639, pUnit:GetMainTank()) 
end

function WastesDigger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastesDigger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastesDigger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26492, 1, "WastesDigger_OnCombat")
RegisterUnitEvent(26492, 2, "WastesDigger_OnLeaveCombat")
RegisterUnitEvent(26492, 3, "WastesDigger_OnKilledTarget")
RegisterUnitEvent(26492, 4, "WastesDigger_OnDied")


--[[ Dragonblight -- Wastes Scavenger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function WastesScavenger_OnCombat(Unit, Event)
Unit:RegisterEvent("WastesScavenger_BoneToss", 5000, 0)
end

function WastesScavenger_BoneToss(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50403, pUnit:GetMainTank()) 
end

function WastesScavenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastesScavenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastesScavenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(28005, 1, "WastesScavenger_OnCombat")
RegisterUnitEvent(28005, 2, "WastesScavenger_OnLeaveCombat")
RegisterUnitEvent(28005, 3, "WastesScavenger_OnKilledTarget")
RegisterUnitEvent(28005, 4, "WastesScavenger_OnDied")


--[[ Dragonblight -- Wastes Taskmaster.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function WastesTaskmaster_OnCombat(Unit, Event)
Unit:RegisterEvent("WastesTaskmaster_ShadowNova", 5000, 0)
Unit:RegisterEvent("WastesTaskmaster_ShadowShock", 6000, 0)
end

function WastesTaskmaster_ShadowNova(pUnit, Event) 
pUnit:CastSpell(32712) 
end

function WastesTaskmaster_ShadowShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16583, pUnit:GetMainTank()) 
end

function WastesTaskmaster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastesTaskmaster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastesTaskmaster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26493, 1, "WastesTaskmaster_OnCombat")
RegisterUnitEvent(26493, 2, "WastesTaskmaster_OnLeaveCombat")
RegisterUnitEvent(26493, 3, "WastesTaskmaster_OnKilledTarget")
RegisterUnitEvent(26493, 4, "WastesTaskmaster_OnDied")


--[[ Dragonblight -- Wind Trader Mufah.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function WindTraderMufah_OnCombat(Unit, Event)
Unit:RegisterEvent("WindTraderMufah_Typhoon", 4000, 1)
end

function WindTraderMufah_Typhoon(pUnit, Event) 
pUnit:CastSpell(51817) 
end

function WindTraderMufah_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WindTraderMufah_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WindTraderMufah_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26496, 1, "WindTraderMufah_OnCombat")
RegisterUnitEvent(26496, 2, "WindTraderMufah_OnLeaveCombat")
RegisterUnitEvent(26496, 3, "WindTraderMufah_OnKilledTarget")
RegisterUnitEvent(26496, 4, "WindTraderMufah_OnDied")


--[[ Dragonblight -- Winters Sister.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function WintersSister_OnCombat(Unit, Event)
Unit:RegisterEvent("WintersSister_FrostShock", 6000, 0)
end

function WintersSister_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function WintersSister_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WintersSister_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WintersSister_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26456, 1, "WintersSister_OnCombat")
RegisterUnitEvent(26456, 2, "WintersSister_OnLeaveCombat")
RegisterUnitEvent(26456, 3, "WintersSister_OnKilledTarget")
RegisterUnitEvent(26456, 4, "WintersSister_OnDied")