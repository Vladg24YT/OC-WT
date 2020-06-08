local wtcomponent = []

local component = require("component");
local gpu = component.gpu;

local foreground, background; --cosmetic
local parentComponent; --tree
local x, y, width, height; --position

function wtcomponent.render()
  gpu.setForeground(foreground);
  gpu.setBackground(background);
  gpu.fill(x, y, width, height);
end

function wtcomponent.getParent()
  return parentComponent;
end

function wtcomponent.setParent(p)
  parentComponent = p;
end

function wtcomponent.getX()
  return x;
end

function wtcomponent.getY()
  return y;
end

function wtcomponent.getWidth()
  return width;
end

function wtcomponent.getHeight()
  return height;
end

function wtcomponent.getLocation()
  return x, y;
end

function wtcomponent.getSize()
  return width, height;
end

function wtcomponent.getBounds()
  return x, y, width, height;
end

function wtcomponent.getParent()
  return parentComponent;
end

function wtcomponent.setX(xCoord)
  x = xCoord;
end

function wtcomponent.setY(yCoord)
  y = yCoord;
end

function wtcomponent.setWidth(w)
  width = w;
end

function wtcomponent.setHeight(h)
  height = h;
end

function wtcomponent.setLocation(xCoord, yCoord)
  x, y = xCoord, yCoord;
end

function wtcomponent.setSize(w, h)
  width, height = w, h;
end

function wtcomponent.setBounds(xCoord, yCoord, w, h)
  x, y, width, height = xCoord, yCoord, w, h;
end

return wtcomponent;
