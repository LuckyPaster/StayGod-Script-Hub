-- init
local library = loadstring(game:HttpGet("http://staygod.club/lua-library/sgh"))()
local staygod = library.new("StayGod | Club V2", 5013109572)

-- first page
local page = staygod:addPage("Main", 5012544693)
local section1 = page:addSection("Main")
local section2 = page:addSection("Misc")

section1:addToggle("Ex Toggle", nil, function(value)
print("Ex Toggled", value)
end)
section1:addButton("Ex Button", function()
print("Ex Button Clicked")
end)
section1:addTextbox("Notification", "Default", function(value, focusLost)
print("Input", value)

if focusLost then
staygod:Notify("Example Loaded", value)
end
end)

section2:addKeybind("Menu Keybind", Enum.KeyCode.Insert, function()
staygod:toggle()
end, function()
print("Menu Keybind Changed")
end)
section2:addSlider("Example Slider", 0, -100, 100, function(walkspeed)
print("Ex Slider :", walkspeed)
end)
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3})
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3}, function(text)
print("Selected", text)
end)
section2:addButton("Button")

-- second page
-- changed section
local theme = staygod:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")
section2:addButton("Button")

-- load
staygod:SelectPage(staygod.pages[1], true)
