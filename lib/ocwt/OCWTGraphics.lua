OCWTGraphics = {};

local colors = require('colors');
local component = require('component');
local gpu = component.gpu;

local background = colors.15, foreground = colors.0;

function OCWTGraphics.create(x, y, width, height)
  gpu.setBackground(background);
  gpu.setForeground(foreground);
end

function OCWTGraphics.drawImage(x, y, img)
  
end

function function OCWTGraphics.drawLine(x1, y1, x2, y2)
  if gpu.getBackground()==nil or gpu.getForeground()==nil then
    error('OCWT error: OCWTGraphics not created');
  else
    local k = y1 / x1;
    local b = y1 % x1;
    coordsX = {}, coordsY = {};
    --TODO
 --[[if x1==x2 and y1!=y2 then
      if y1>y2 then
        gpu.fill(x1, y2, y1-y2, 0);
      else
        gpu.fill(x1, y1, y2-y1, 0);
      end
    elseif y1==y2 and x1!=x2 then
      if x1>x2 then
        gpu.fill(x2, y1, 1, x1-x2);
      else
        gpu.fill(x1, y1, 1, x2-x1);
      end
    elseif (x1==y1 and x2==y2) or (x1==y2 and x2==y1) then
      if x1>x2 then
        for i = x2, x1, 1 do
          gpu.fill(i, i, 1, 1);
        end
      else
        for i = x1, x2, 1 do
          gpu.fill(i, i, 1, 1);
        end
      end
    else
      if x1>x2 and y1>y2 then
        for i = x1, x2, 1 do
          for j = y1, y2, 1 do
            gpu.fill(i, j, (x1-x2)/);
          end
        end
      elseif x1>x2 and y1<y2 then
        for i = x1, x2, 1 do
          for j = y2, y1, 1 do
          
          end
        end
      elseif x1<x2 and y1>y2 then
        for i = x2, x1, 1 do
          for j = y1, y2, 1 do
          
          end
        end
      elseif x1<x2 and y1<y2 then
        for i = x2, x1, 1 do
          for j = y2, y1, 1 do
          
          end
        end
      else
        error('OCWTGraphics.drawLine() error: Wrong parameters');
      end
    end]]
  end
end

return OCWTGraphics;
