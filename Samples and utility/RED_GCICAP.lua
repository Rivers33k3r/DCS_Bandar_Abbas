local DetectionSetGroup_red = SET_GROUP:New()
DetectionSetGroup_red:FilterPrefixes( { "RED EWR" } )
DetectionSetGroup_red:FilterStart()

local Detection_red = DETECTION_AREAS:New(DetectionSetGroup_red, 30000)
local A2ADispatcher_red = AI_A2A_DISPATCHER:New(Detection_red)

IRANBorderZone = ZONE_POLYGON:New( "BORDER_Red", GROUP:FindByName( "BORDER_Red" ) )
A2ADispatcher_red:SetBorderZone( IRANBorderZone )
A2ADispatcher_red:SetIntercept(300)
A2ADispatcher_red:SetGciRadius(60000)
A2ADispatcher_red:SetEngageRadius(50000)

A2ADispatcher_red:SetDefaultLandingAtEngineShutdown()
A2ADispatcher_red:SetDefaultTakeoffFromRunway()
A2ADispatcher_red:SetDefaultFuelThreshold(0.20) -- this i bugged on 2.3.x
A2ADispatcher_red:SetTacticalDisplay(true)

A2ADispatcher_red:SetSquadron( "62th", "Bandar Abbas Intl", { "62th" }, 6 )
A2ADispatcher_red:SetSquadronGrouping( "62th", 2 )
A2ADispatcher_red:SetSquadronCap( "62th", ZONE:New("CAP_Red_East"), 4000, 8000, 500, 650, 600, 1200, "BARO" )
A2ADispatcher_red:SetSquadronCapInterval( "62th", 1, 30, 120, 1 )
A2ADispatcher_red:SetSquadronGci( "62th", 800, 1200 )

A2ADispatcher_red:SetSquadron( "64th", "Havadarya", { "64th" }, 12 )
A2ADispatcher_red:SetSquadronGrouping( "64th", 2 )
A2ADispatcher_red:SetSquadronCap( "64th", ZONE:New("CAP_Red_M_East"), 4000, 8000, 500, 650, 600, 1200, "BARO" )
A2ADispatcher_red:SetSquadronCapInterval( "64th", 1, 30, 120, 1 )
A2ADispatcher_red:SetSquadronGci( "64th", 800, 1200 )

A2ADispatcher_red:SetSquadron( "63th", "Qeshm Island", { "63th" }, 5 )
A2ADispatcher_red:SetSquadronGrouping( "63th", 2 )
A2ADispatcher_red:SetSquadronCap( "63th", ZONE:New("CAP_Red_M_West"), 4000, 8000, 500, 650, 600, 1200, "BARO" )
A2ADispatcher_red:SetSquadronCapInterval( "63th", 1, 30, 120, 1 )
A2ADispatcher_red:SetSquadronGci( "63th", 800, 1200 )

A2ADispatcher_red:SetSquadron( "65th", "Bandar Lengeh", { "65th" }, 6 )
A2ADispatcher_red:SetSquadronGrouping( "65th", 2 )
A2ADispatcher_red:SetSquadronCap( "65th", ZONE:New("CAP_Red_West"), 4000, 8000, 500, 650, 600, 1200, "BARO" )
A2ADispatcher_red:SetSquadronCapInterval( "65th", 1, 30, 120, 1 )
A2ADispatcher_red:SetSquadronGci( "65th", 800, 1200 )


--A2ADispatcher_red:SetTacticalDisplay(true)