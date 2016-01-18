UNLIMITED_AMMO = 0

if !ConVarExists("fun_unlimited_ammo") then
	CreateConVar("fun_unlimited_ammo", UNLIMITED_AMMO, { FCVAR_SERVER_CAN_EXECUTE, FCVAR_ARCHIVE }, "Sets unlimited ammo.")
end

if !ConVarExists("fun_unlimited_ammo_max") then
	CreateConVar("fun_unlimited_ammo_max", "999", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_ARCHIVE }, "Sets the unlimited ammo max.")
end

local NextResupplyTime = 0
hook.Add("Think", "Resupply", function ()
	if (CurTime() >= NextResupplyTime) then
		if GetConVarNumber("fun_unlimited_ammo") >= 1 then
			for _, ply in pairs(player.GetAll()) do
				NextResupplyTime = 0
				ply:SetAmmo( GetConVarNumber("fun_unlimited_ammo_max"), "SMG1" )
				ply:SetAmmo( GetConVarNumber("fun_unlimited_ammo_max"), "XbowBolt" )
				ply:SetAmmo( GetConVarNumber("fun_unlimited_ammo_max"), "Pistol" )
				ply:SetAmmo( GetConVarNumber("fun_unlimited_ammo_max"), "RPG_Round" )
				ply:SetAmmo( GetConVarNumber("fun_unlimited_ammo_max"), "Grenade" )
				ply:SetAmmo( GetConVarNumber("fun_unlimited_ammo_max"), "AR2AltFire" )
				ply:SetAmmo( GetConVarNumber("fun_unlimited_ammo_max"), "357" )
				ply:SetAmmo( GetConVarNumber("fun_unlimited_ammo_max"), "BuckShot" )
				ply:SetAmmo( GetConVarNumber("fun_unlimited_ammo_max"), "SMG1_Grenade" )
				ply:SetAmmo( GetConVarNumber("fun_unlimited_ammo_max"), "AR2" )
				ply:SetAmmo( GetConVarNumber("fun_unlimited_ammo_max"), "slam" )
				
			end
			NextResupplyTime = CurTime() + 1
		else
			NextResupplyTime = 2
		end
	end	
end
)
Msg("Unlimited Ammo Addon coded by Dogey - For any bugs or suggestion, goto this link http://forums.ulyssesmod.net/index.php/topic,8746.0.html ")
Msg("Works with every HL2 default guns, and any other guns out there, or available to gmod.")
Msg("New cvars fun_unlimited_ammo_max and fun_unlimited_ammo try them :D")