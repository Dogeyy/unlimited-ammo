local NextResupplyTime = 0
hook.Add("Think", "Resupply", function ()
	if (CurTime() >= NextResupplyTime) then
		for _, ply in pairs(player.GetAll()) do
			ply:SetAmmo( 999, "SMG1" )
			ply:SetAmmo( 999, "XbowBolt" )
			ply:SetAmmo( 999, "Pistol" )
			ply:SetAmmo( 999, "RPG_Round" )
			ply:SetAmmo( 999, "Grenade" )
			ply:SetAmmo( 999, "AR2AltFire" )
			ply:SetAmmo( 999, "357" )
			ply:SetAmmo( 999, "BuckShot" )
			ply:SetAmmo( 999, "SMG1_Grenade" )
		end
        NextResupplyTime = CurTime() + 1
	end	
    end
)
Msg("Addon coded by Dogey - Any bugs or suggestion, post on http://forums.ulyssesmod.net/index.php/topic,8746.0.html ")
