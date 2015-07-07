local NextResupplyTime = 0
hook.Add("Think", "Resupply", function ()
	if (CurTime() >= NextResupplyTime) then
		for _, ply in pairs(player.GetAll()) do
			ply:SetAmmo( 999, "SMG1" )
			ply:SetAmmo( 999, "XbowBolt" )
			ply:SetAmmo( 999, "Pistol" )
			ply:SetAmmo( 999, "RPG_Round" )
			ply:SetAmmo( 999, "Grenade" )
		end
        NextResupplyTime = CurTime() + 1
	end	
    end
)
Msg("Addon coded by Dogey - Any bugs or suggestion, post on  ")
