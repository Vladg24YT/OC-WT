--Libraries
local gpu = require("component").gpu
local utf = require("unicode")

--Variables
local fileName = "untitled"
local lastCommand = " "
windowType = {
  CALC = "Calculator",
  CALENDAR = "Calendar - ("..fileName..")",
  CLOCK = "Clock",
  CONTROL = "Control Panel",
  EDIT = "Editor - ("..fileName..")",
  LUA = "Lua Interpreter",
  NOTEBOOK = "Notebook - ("..fileName..")",
  OPENOS = "OpenOS Executive",
  PAINTER = "Painter - ("..fileName")",
  TERMINAL = "Terminal ["..lastCommand.."]",
}
local apps = {}

--GPU stuff
local sw, sh = gpu.maxResolution()
--To make all resolutions multiples of 5
if sh == 16 then
  sh = 15
end
local menu = 0x00C093
local background = 0xFFFFFF
local foreground = 0x000000
local inactPanel = 0x0011FF
local actPanel = 0x7F7FFF
local topBar = 0xC8C8C8

--Draws bottom bar with OpenOS floppy on it
function drawMenuBar()
  gpu.setBackground(menu)
  gpu.setForeground(foreground)
  --
  gpu.fill(1, sh * 0.9, sw, sh / 10)
  --10 is the maximum amount of apps opened at the moment
  for i=1,10 do
    if apps[i] == windowType.CALC then
      --[[
       ÷×
       +-
      ]]
      gpu.set(i*2, sh-4, utf.char(247, 215))
      gpu.set(i*2, sh-4, "+-")
    elseif apps[i] == windowType.CALENDAR then
      --[[
       ▦▦
       ▦▦
      ]]
      gpu.set(i*2, sh-4, utf.char(9638, 9638))
      gpu.set(i*2, sh-4, utf.char(9638, 9638))
    elseif apps[i] == windowType.CLOCK then
      --[[
       ◜◝
       ◟◞
      ]]
      gpu.set(i*2, sh-4, utf.char(9692, 9693))
      gpu.set(i*2, sh-4, utf.char(9695, 9694))
    elseif apps[i] == windowType.CONTROL then
      --[[
       ◔Ξ
       ▬▬
      ]]
      gpu.set(i*2, sh-4, utf.char(9684).."Ξ")
      gpu.set(i*2, sh-4, utf.char(9644, 9644))
    elseif apps[i] == windowType.EDIT then
      --[[
      ✎
        🗅
      ]]
      gpu.set(i*2, sh-4, utf.char(9998).."")
      gpu.set(i*2, sh-4, ""..utf.char(128453))
    elseif apps[i] == windowType.LUA then
      --[[
       </
       />
      ]]
      gpu.set(i*2, sh-4, "</")
      gpu.set(i*2, sh-4, "/> ")
    elseif apps[i] == windowType.NOTEBOOK then
      --[[

      ]]
      gpu.set(i*2, sh-4, "")
      gpu.set(i*2, sh-4, "")
    elseif apps[i] == windowType.OPENOS then
      --[[
       💾
       >_
      ]]
      gpu.set(i*2, sh-4, utf.char(128190).." ")
      gpu.set(i*2, sh-4, ">_")
    elseif apps[i] == windowType.PAINTER then
      --[[
        🖌
       🎨
      ]]
      gpu.set(i*2, sh-4, " "..utf.char(128396))
      gpu.set(i*2, sh-4, utf.char(127912).." ")
    elseif apps[i] == windowType.TERMINAL then
      --[[
       /:
       >_
      ]]
      gpu.set(i+2, sh-4, "/:")
      gpu.set(i+2, sh-4, ">_")
    end
  end
  return true;
end

--Draw a panel of a specified type
function drawNewPanel(title)
  local i = 1
  while i < 11 do
    if apps[i] == nil then
      if title == windowType.CALC then

      elseif title == windowType.CALENDAR then

      elseif title == windowType.CLOCK then

      elseif title == windowType.CONTROL then

      elseif title == windowType.EDIT then

      elseif title == windowType.LUA then

      elseif title == windowType.NOTEBOOK then

      elseif title == windowType.OPENOS then

      elseif title == windowType.PAINTER then

      elseif title == windowType.TERMINAL then

      end
    else
      drawPopup(popups.ERROR, "You may not open more apps")
      return false
    end
  end
  return true
end

--Returns 'id' panel's title
function getPanelTitleAt(index)
  return windowType[index];
end

--Returns index of a panel, that has a 'panTitle' title
function getPanelIdWithTitle(panTitle)
  local i = 0
  while i < #windowType + 1 do
    if windowType[i] == panTitle then
      return i
    else
      i = i + 1
    end
  end
  return true
end

--Changes panel's order
function changePanelPosition(panelIndex, pos)
  return true
end

--Changes panel's height
function changePanelHeight(panelIndex, height)
  return true
end

--Removes the specified panel and redraws all others
function deletePanel(panelIndex)
  return true
end

--Draws a popup on the screen
function drawPopup(level, msg)
  return true
end

--
apps = {windowType.CALC, windowType.CALENDAR, windowType.CLOCK, windowType.CONTROL, windowType.EDIT, windowType.LUA, windowType.NOTEBOOK, windowType.OPENOS, windowType.PAINTER, windowType.TERMINAL}
drawMenuBar()
--[[while true do

end]]
