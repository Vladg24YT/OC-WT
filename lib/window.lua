local window = {}

--Local variables
local w, h, x, y;

function window.setSize(width, height) do
  w = width;
  h = height;
end

function window.setLocation(xCoord, yCoord) do
  x = xCoord;
  y = yCoord;
end

function window.setBounds(xCoord, yCoord, width, height) do
  x = xCoord;
  y = yCoord;
  w = width;
  h = height;
end

function window.setVisible(isVisible) do
  
end

end
