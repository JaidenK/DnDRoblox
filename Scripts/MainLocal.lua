local target = workspace.Part
local camera = workspace.CurrentCamera
camera.CameraType = Enum.CameraType.Scriptable
camera.CameraSubject = target
local angle = 0
 
while wait() do
   camera.CoordinateFrame = CFrame.new(target.Position)  --Start at the position of the part
                          * CFrame.Angles(0, angle, 0) --Rotate by the angle
                          * CFrame.new(0, 0, 5)       --Move the camera backwards 5 units
   angle = angle + math.rad(1)
end