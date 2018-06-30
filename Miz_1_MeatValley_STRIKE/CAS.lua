local BLUE_CAS_ZONE = ZONE:New("BLUE_CAS") -- engagement zone
local BLUE_CAS_PATROL_ZONE = ZONE:New("BLUE_CAS_PATROL") 
local BLUE_CAS_HELI = GROUP:FindByName("BLUE CAS Heli #001")

local BLUE_AI_CASZONE = AI_CAS_ZONE:New(
    BLUE_CAS_PATROL_ZONE,
    500,1000,80,1500,
    BLUE_CAS_ZONE)

local BLUE_TARGETS = GROUP:FindByName("BLUE Khasab Tanks #009")
BLUE_AI_CASZONE:SetControllable(BLUE_CAS_HELI)
BLUE_AI_CASZONE:__Start(1)
BLUE_AI_CASZONE:__Engage(280,100,1000)


Check, CheckScheduleID = SCHEDULER:New(nil,
  function()
    if BLUE_TARGETS:IsAlive() and BLUE_TARGETS:GetSize() > 5 then
      BASE:E( "Test Mission: " .. BLUE_TARGETS:GetSize() .. " targets left to be destroyed.")
    else
      --BASE:E( "Test Mission: The required targets are destroyed." )
      BLUE_AI_CASZONE:__Accomplish( 1 ) -- Now they should fly back to teh patrolzone and patrol.
    end
  end, {}, 20, 60, 0.2 )


-- When the targets in the zone are destroyed, (see scheduled function), the planes will return home ...
function AICasZone:OnAfterAccomplish( Controllable, From, Event, To )
  --BASE:E( "Test Mission: Sending the Su-25T back to base." )
  Check:Stop( CheckScheduleID )
  BLUE_AI_CASZONE:__RTB( 1 )
end