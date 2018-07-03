local DetectionSetGroup_blue = SET_GROUP:New()
DetectionSetGroup_blue:FilterPrefixes( { "BLUE EWR" } )
DetectionSetGroup_blue:FilterStart()

local Detection_blue = DETECTION_AREAS:New(DetectionSetGroup_blue, 30000)
local A2ADispatcher_blue = AI_A2A_DISPATCHER:New(Detection_blue)

USABorderZone = ZONE_POLYGON:New( "BORDER_Blue", GROUP:FindByName( "BORDER_Blue" ) )
A2ADispatcher_blue:SetBorderZone( USABorderZone )
A2ADispatcher_blue:SetIntercept(300)
A2ADispatcher_blue:SetGciRadius(60000)
A2ADispatcher_blue:SetEngageRadius(70000)

A2ADispatcher_blue:SetDefaultLandingAtEngineShutdown()
A2ADispatcher_blue:SetDefaultTakeoffFromRunway()
A2ADispatcher_blue:SetDefaultFuelThreshold(0.20) -- this i bugged on 2.3.x
A2ADispatcher_blue:SetTacticalDisplay(true)


A2ADispatcher_blue:SetSquadron( "555th", "Dubai Intl", { "555th" }, 12 )
A2ADispatcher_blue:SetSquadronGrouping( "555th", 2 )
A2ADispatcher_blue:SetSquadronCap( "555th", ZONE:New("CAP_Blue_West"), 4000, 8000, 500, 650, 600, 1200, "BARO" )
A2ADispatcher_blue:SetSquadronCapInterval( "555th", 1, 30, 120, 1 )
A2ADispatcher_blue:SetSquadronGci( "555th", 800, 1200 )

A2ADispatcher_blue:SetSquadron( "92th", "Sharjah Intl", { "92th" }, 12 )
A2ADispatcher_blue:SetSquadronGrouping( "92th", 2 )
A2ADispatcher_blue:SetSquadronCap( "92th", ZONE:New("CAP_Blue_Middle"), 4000, 8000, 500, 650, 600, 1200, "BARO" )
A2ADispatcher_blue:SetSquadronCapInterval( "92th", 1, 30, 120, 1 )
A2ADispatcher_blue:SetSquadronGci( "92th", 800, 1200 )

A2ADispatcher_blue:SetSquadron( "73th", "Fujairah Intl", { "73th" }, 12 )
A2ADispatcher_blue:SetSquadronGrouping( "73th", 2 )
A2ADispatcher_blue:SetSquadronCap( "73th", ZONE:New("CAP_Blue_East"), 4000, 8000, 500, 650, 600, 1200, "BARO" )
A2ADispatcher_blue:SetSquadronCapInterval( "73th", 1, 30, 120, 1 )
A2ADispatcher_blue:SetSquadronGci( "73th", 800, 1200 )

--A2ADispatcher_blue:SetTacticalDisplay(true)
