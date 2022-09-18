
AnimationId = "6532134724"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(0)
k:AdjustSpeed(10)
game.Players.LocalPlayer.Character.Animate.Disabled = true
game.Players.LocalPlayer.Character.Humanoid.Running:connect(function(speed)
if speed > 0 then
game.Players.LocalPlayer.Character.Animate.Disabled = false
k:Stop(0)
end
end)
