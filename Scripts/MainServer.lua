game.Players.PlayerAdded:connect(function(player)
   player.CharacterAdded:connect(function(character)
      script.MainLocal:clone().Parent = character
   end)
end)