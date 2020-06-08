local OCWTComponent = {}

local component = require("component");
local gpu = component.gpu;

local foreground, background; --cosmetic
local parentComponent; --tree
local x, y, width, height; --position

function OCWTComponent.render()
  gpu.setForeground(foreground);
  gpu.setBackground(background);
  gpu.fill(x, y, width, height);
end

function OCWTComponent.getParent()
  return parentComponent;
end

function OCWTComponent.setParent(p)
  parentComponent = p;
end

function OCWTComponent.getX()
  return x;
end

function OCWTComponent.getY()
  return y;
end

function OCWTComponent.getWidth()
  return width;
end

function OCWTComponent.getHeight()
  return height;
end

function OCWTComponent.getLocation()
  return x, y;
end

function wtcomponent.getSize()
  return width, height;
end

function OCWTComponent.getBounds()
  return x, y, width, height;
end

function OCWTComponent.getParent()
  return parentComponent;
end

function OCWTComponent.setX(xCoord)
  x = xCoord;
end

function OCWTComponent.setY(yCoord)
  y = yCoord;
end

function OCWTComponent.setWidth(w)
  width = w;
end

function OCWTComponent.setHeight(h)
  height = h;
end

function OCWTComponent.setLocation(xCoord, yCoord)
  x, y = xCoord, yCoord;
end

function OCWTComponent.setSize(w, h)
  width, height = w, h;
end

function OCWTComponent.setBounds(xCoord, yCoord, w, h)
  x, y, width, height = xCoord, yCoord, w, h;
end

return OCWTComponent;
