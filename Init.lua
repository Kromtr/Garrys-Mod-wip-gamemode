Init.lua
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
 
include( 'shared.lua' )

// Slower movement speed!

function GM:PlayerSpawn( ply )
    self.BaseClass:PlayerSpawn( ply )   
 
    ply:SetGravity  ( 1 )  
    ply:SetMaxHealth( 100, true )  
 
    ply:SetWalkSpeed( 120 )  
    ply:SetRunSpeed ( 200 ) 

    if ply:Team()== 1 then
    	ply:Give("weapon_pistol")
    	ply:SetModel("models/player/charple.mdl")
    end

    if ply:Team()== 2 then
    	ply:Give("weapon_357")
    	ply:SetModel("models/player/hostage4.mdl")
    end

 if ply:Team()== 3 then
    	ply:Give("weapon_none")
    	ply:SetGravity( 0.2 )
        ply:SetModel("models/player/skeleton.mdl")
    end

local RANDOM = math.random( 1, 2 )
      if RANDOM == 1 then
      	ply:SetTeam( 1 )
      	elseif RANDOM == 2 then
      		ply:SetTeam( 2 )
      	end

CHRIST = team.NumPlayers ( 1 )      	
ATHIST = team.NumPlayers ( 2 )
   if CHRIST > ATHIST then
   	ply:SetTeam( 1 )
   	elseif ATHIST > CHRIST then
   		ply:SetTeam( 1 )
   	end


end



function GM:PlayerLoadout( ply )
	ply:Give("weapon_crowbar")
end



function GM:PlayerInitialSpawn( ply )
	   ply:PrintMessage( HUD_PRINTTALK, "Welcome, " .. ply:Name() .. "!" )
	   ply:SetTeam( 3 )
end



// I guess this code is KINDA neat.
