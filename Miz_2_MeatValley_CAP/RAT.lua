--#########################
--### REDs STUFF

local RED_RAT_TOT_FLIGHTS = 8
local RED_RAT_FREQ = 168

local RED_rats = {
  RAT:New("red #001"),
  RAT:New("red #002"),
  RAT:New("red #003"),
  RAT:New("red #004"),
  RAT:New("red #005")
}

for i = 1, #RED_rats do
  RED_rats[i]:SetCoalition("sameonly")
  RED_rats[i]:RadioFrequency(RED_RAT_FREQ)
  RED_rats[i]:ContinueJourney()
  RED_rats[i]:SetTakeoff("cold")
  --RED_rats[i]:ATCswitch = false
end

local RED_manager = RATMANAGER:New(RED_RAT_TOT_FLIGHTS)
for i = 1, #RED_rats do
  RED_manager:Add(RED_rats[i])
end
RED_manager:Start()

--########################
--### BLUEs STUFF
local BLUE_RAT_TOT_FLIGHTS = 8
local BLUE_RAT_FREQ = 268

local BLUE_rats = {
  RAT:New("blue #001"),
  RAT:New("blue #002"),
  RAT:New("blue #003"),
  RAT:New("blue #004"),
  RAT:New("blue #005"),
  RAT:New("blue #006"),
  RAT:New("blue #007")
}

for i = 1, #BLUE_rats do
  BLUE_rats[i]:SetCoalition("sameonly")
  BLUE_rats[i]:RadioFrequency(BLUE_RAT_FREQ)
  BLUE_rats[i]:ContinueJourney()
  BLUE_rats[i]:SetTakeoff("cold")
  --BLUE_rats[i]:ATCswitch = false
end

local BLUE_manager = RATMANAGER:New(BLUE_RAT_TOT_FLIGHTS)
for i = 1, #BLUE_rats do
  BLUE_manager:Add(BLUE_rats[i])
end
BLUE_manager:Start()


