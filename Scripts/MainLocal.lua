local target = workspace.Part
local camera = workspace.CurrentCamera
camera.CameraType = Enum.CameraType.Follow
camera.CameraSubject = target

local wasd = {0,0,0,0}
local camVel = CFrame.new(0,0,0)
local moving = false


function onKeyPress(actionName, userInputState, inputObject)
   print("wpres")
   if userInputState == Enum.UserInputState.Begin then
      wasd[1] = 1
   elseif userInputState == Enum.UserInputState.End then
      wasd[1] = 0
   end
   updateCamVel()
end

function updateCamVel()
   if( (wasd[1]==1 and wasd[2]==0 and wasd[3]==0 and wasd[4]==0) )then
      camVel = CFrame.new(1,0,0) if not moving then moving = not moving move() end
   else
      camVel = CFrame.new(0,0,0) 
      moving = false
   end

end

function move()
   repeat 
      target.CFrame = target.CFrame + camVel
      wait(0.05)
   until not moving
end
 
-- game.ContextActionService:BindAction("keyPress", onKeyPress, false, "Enum.KeyCode.W")
game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.W)
--game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.R)
--game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.R)
-- The above line could also been written as:
-- game.ContextActionService:BindAction("keyPress", onKeyPress, false, "r")
print("Local ready.")