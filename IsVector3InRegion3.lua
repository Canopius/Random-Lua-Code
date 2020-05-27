-- Is Vector3 in Region3

local function IsV3InR3(V3, R3)
	local R3CFrame = R3.CFrame
	local R3Size = R3.Size
	local R3Min = Vector3.new(R3CFrame.X - (R3.X * 0.5), R3CFrame.Y - (R3.Y * 0.5), R3CFrame.Z - (R3.Z * 0.5))
	local R3Max = Vector3.new(R3CFrame.X + (R3.X * 0.5), R3CFrame.Y + (R3.Y * 0.5), R3CFrame.Z + (R3.Z * 0.5))
	
	if V3.X < R3Min.X or V3.X > R3Max.X or V3.Y < R3Min.Y or V3.Y > R3Max.Y or V3.Z < R3Min.Z or V3.Z > R3Max.Z then
		return false
	end
	
	return true
end
