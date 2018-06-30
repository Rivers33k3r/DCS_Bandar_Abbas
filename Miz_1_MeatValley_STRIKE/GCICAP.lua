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
--A2ADispatcher_red:SetTacticalDisplay(true)

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
--A2ADispatcher_blue:SetTacticalDisplay(true)


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
