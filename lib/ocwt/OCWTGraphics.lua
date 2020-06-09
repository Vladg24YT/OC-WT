OCWTGraphics = {};

local colors = require('colors');
local component = require('component');
local gpu = component.gpu;

local background = colors.7, foreground = colors.15; --Default background and foreground for any Component

--[[
 * One must call this function before using any OCWTGraphics' methods
]]
function OCWTGraphics.create(x, y, width, height)
  gpu.setBackground(background);
  gpu.setForeground(foreground);
end

--[[
 * Draws a straight line from point (`x1`;`y1`) to (`x2`;`y2`)
]]
function OCWTGraphics.drawLine(x1, y1, x2, y2)
  if gpu.getBackground()==nil or gpu.getForeground()==nil then
    error('OCWT error: OCWTGraphics not created');
  else
    local k = y1 / x1;
    local b = y1 % x1;
    coordsX = {}, coordsY = {};
    if x2-x1 > y2-y1 then
      for i = x1, x2 do
        gpu.fill(i, k*i+b, 1, 1);
      end
    else
      for i = y1, y2 do
        gpu.fill((i-b)/k, i, 1, 1);
      end
    end
  end
end

--[[
 * Draws a circular arc inside rectangle at (`x`;`y`) with width `w` and height `h`
]]
function OCWTGraphics.drawArc(x, y, w, h --[[, startAngle, arcAngle]])
  local ox = w/2, oy = h/2; --X and Y coordinates of circle's centre
  if x-ox != y-oy then
    error('OCWT error: can\'t draw non-circular arcs')
  else
    local radius = x-ox;
    --if w>h then
      for i = x, w do
        gpu.fill(i, math.sqrt(math.power(radius, 2) - math.power(i - ox, 2)) + oy, 1, 1);
      end
    --elseif w<h then
    --else
    --end
  end
end

return OCWTGraphics;
