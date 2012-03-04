
-- DK Start Area Map 609

function DKSTART_ONE (pUnit, Event, Misc)
pUnit:Teleport (609, 2383.65, -5645.2, 421.773)
end

-- DK Start Area Lower Section Map 609

function DKSTART_TWO (pUnit, Event, Misc)
pUnit:Teleport (609, 2389.628906, -5641.217773, 378.1)
end

-- Ebon Hold on Map 0 Top Section

function EBON_ONE (pUnit, Event, Misc)
pUnit:Teleport (0, 2383.65, -5645.2, 421.773)
end

-- Ebon Hold Lower Section

function EBON_TWO (pUnit, Event, Misc)
pUnit:Teleport (0, 2389.628906, -5641.217773, 378.1)
end

-- Portal Four - Ground Portal Starting Area Map 609

function GROUND_ONE (pUnit, Event, Misc)
pUnit:Teleport (609, 2430.574707, -5730.057129, 158)
end

-- Portal Four - Ground Portal Eastern Plaguelands Map 0

function GROUND_TWO (pUnit, Event, Misc)
pUnit:Teleport (0, 2430.574707, -5730.057129, 158)
end


RegisterGameObjectEvent (303031, 2, "DKSTART_ONE")
RegisterGameObjectEvent (303034, 2, "DKSTART_TWO")
RegisterGameObjectEvent (303030, 2, "EBON_ONE")
RegisterGameObjectEvent (303033, 2, "EBON_TWO")
RegisterGameObjectEvent (303032, 2, "GROUND_ONE")
RegisterGameObjectEvent (303035, 2, "GROUND_TWO")