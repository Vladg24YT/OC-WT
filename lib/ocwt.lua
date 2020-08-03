local ocwt = {}

--Libraries
local component = require("component")
local display = component.gpu
local event = require("event")

--Variables
local root = {} --Root container for all windows

--Functions
function ocwt.getParent(component)
  for i,comp in ipairs(root) do
    for k,v in pairs(comp) do
      if k=="Children" and v==component then
        return comp
      end
    end
  end
  return nil
end

-- Sub-modules
--Program itself
ocwt.Program = {

  -- Variables
  --General
  Children = {}

  -- Functions
  --General
  function ocwt.Program.run() --Main function of the framework
    Children = root
    for key,value in pairs(Children) do
      --Draw certain components
      if key=="Window" then

      elseif key=="Text" then

      elseif key=="Input" then

      elseif key=="MenuBar" then

      end
    end
  end
}

--Main container type
ocwt.Window = {

  -- Variables
  --General
  Children = {}
  local x, y
  Width = 0
  Height = 0
  --Module-specific
  BorderFocusedColor = 0x0000FF
  BorderUnFocusedColor = 0x7F7FFF
  BackgroundColor = 0xE4E4FF
  TitleColor = 0xFFFFFF
  Title = ""

  -- Functions
  --General
  function ocwt.Window.addChild(...)
    for k,v in pairs(arg) do

    end
  end

  function ocwt.Window.new(...)
    display.setBackground(BorderFocusedColor)
    display.setForeground(TitleColor)
    display.fill(x, y, Width, Height, " ")
    display.set(x+(math.ceil(width/2)-string.len(Title)), y, Title)
    for i,v in ipairs(arg) do

    end
  end
  --Module-specific
  function ocwt.Window.setTitle(title)
    Title = title
  end
}

--Text output field
ocwt.Text = {

  -- Variables
  --General
  Children = {}
  local x, y
  Width = 0
  Height = 0
  --Module-specific
  BackgroundColor = 0xE4E4FF
  Data = ""
  TextColor = 0x000000
  TextType = {'Default', 'Hidden', 'Numbers'}
  Type = 1

  -- Functions
  --General
  function ocwt.Text.new()
    display.setBackground(BackgroundColor)
    display.setForeground(TextColor)
    display.fill(x, y, Width, Height, " ")
  end
}

--Text input field
ocwt.Input = {

  -- Variables
  --General
  Children = {}
  local x, y
  Width = 0
  Height = 0

  -- Functions
}

--Menu bar
ocwt.MenuBar = {

  -- Variables
  --General
  Children = {}
  Listeners = {
    onItemOpened = function () return true; end,
    onMenuItemPressed = function () return true; end
  }
  --Module-specific
  BackgroundColor = 0xE4E4FF
  Items = {}

  -- Functions
  --General
  function ocwt.MenuBar.new()
    display.fill(getParent(self).getX(), getParent(self).getY()+1, getParent(self).getWidth(), 1, " ")
    local taken = 0
    for i,v in ipairs(Items) do
      display.set(1+getParent(self).getX()+taken, 1+getParent(self).getY(), v)
      taken = taken + 1
    end
  end

  --Module-specific
}

--Button
ocwt.Button = {

  -- Variables
  --General
  Children = {}
  local x, y
  Width = 0
  Height = 0
  --Module-specific
  BackgroundColor = 0xE4E4FF
  TextColor = 0xFFFFFF
  Text = ""

  --Functions
  function ocwt.Button.new()
    display.fill(x, y, Width, Height, " ")
    display.set(x+(math.ceil(Width/2)-string.len(ext)), y+math.ceil(Height/2), Text)
  end
}

return ocwt
