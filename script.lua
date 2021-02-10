-- init
local library = loadstring(game:HttpGet("https://paste.gg/p/StarShinee/62eb16ac1afa4ea186e5698cecf1b786/files/1665e65706a74545af01fc90706255c2/raw"))()
local staygod = library.new("StayGod | Club V2", 5013109572)

-- first page
local page = staygod:addPage("Main", 5012544693)
local section1 = page:addSection("Main")
local section2 = page:addSection("Misc")


section1:addToggle("Toggle", nil, function(value)
print("Toggled", value)
end)
section1:addButton("Button", function()
print("Clicked")
end)
section1:addTextbox("Notification", "Default", function(value, focusLost)
print("Input", value)

if focusLost then
staygod:Notify("StayGod V2", value)
end
end)

section2:addKeybind("Menu Keybind", Enum.KeyCode.Insert, function()
staygod:toggle()
end, function()
print("Menu Keybind Changed")
end)
section2:addSlider("Walk Speed", 0, -100, 100, function(walkspeed)
print("Walk Speed Set :", walkspeed)
end)
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3})
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3}, function(text)
print("Selected", text)
end)
section2:addButton("Button")

-- second page
local theme = staygod:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")
section2:addButton("Button")

-- load
staygod:SelectPage(staygod.pages[1], true)
