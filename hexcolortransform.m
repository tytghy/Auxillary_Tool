function [colorMatlab] = hexcolortransform(colorHex)
% hexColorTransform 
%   Transform the hexadecimal color code to the color coded by Matlab
%
%   Input: 
%   colorHex: hexadecimal color
%
%   Output:
%   colorMatlab: color in Matlab

colorMatlab = sscanf(colorHex(2:end),'%2x%2x%2x',[1 3])/255;

end
