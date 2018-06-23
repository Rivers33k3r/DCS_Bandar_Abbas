--#########################
--### REDs STUFF

local RED_RAT_TOT_FLIGHTS = 10
local RED_RAT_FREQ = 168

local RED_rats = {
  RAT:New("RAT red #001"),
  RAT:New("RAT red #002"),
  RAT:New("RAT red #003"),
  RAT:New("RAT red #004"),
  RAT:New("RAT red #005")
}

for i = 1, #RED_rats do
  RED_rats[i]:SetCoalition("sameonly")
  RED_rats[i]:RadioFrequency(RED_RAT_FREQ)
  RED_rats[i]:ContinueJourney()
  RED_rats[i]:SetTakeoff("cold")
end

local RED_manager = RATMANAGER:New(RED_RAT_TOT_FLIGHTS)
for i = 1, #RED_rats do
  RED_manager:Add(RED_rats[i])
end
RED_manager:Start()

--#########################
--### BLUEs STUFF
local BLUE_RAT_TOT_FLIGHTS = 12
local BLUE_RAT_FREQ = 268

local BLUE_rats = {
  RAT:New("RAT blue #001"),
  RAT:New("RAT blue #003"),
  RAT:New("RAT blue #004"),
  RAT:New("RAT blue #005"),
  RAT:New("RAT blue #006"),
  RAT:New("RAT blue #007")
}

for i = 1, #BLUE_rats do
  BLUE_rats[i]:SetCoalition("sameonly")
  BLUE_rats[i]:RadioFrequency(BLUE_RAT_FREQ)
  BLUE_rats[i]:ContinueJourney()
  BLUE_rats[i]:SetTakeoff("cold")
end

local BLUE_manager = RATMANAGER:New(BLUE_RAT_TOT_FLIGHTS)
for i = 1, #BLUE_rats do
  BLUE_manager:Add(BLUE_rats[i])
end
BLUE_manager:Start()


