function disptext(txt)
% DISPTEXT(TXT) displays the colorful text in the command window.
%
%   Require: cprintf function downloaded from https://www.mathworks.com/matlabcentral/fileexchange/24093-cprintf-display-formatted-colored-text-in-the-command-wind
%   Colors are referred to Better Comments in VScode.
%   Add different symbol at the beginning of TXT displays different color.
%
%   For example,
%   '!' in red (Alert)
%   '?' in skyblue (Queries)
%   '//' in gray
%   'todo' in orange (TODOs)
%   '*' in milkgreen (Highlights)

newTxt = [strtrim(txt) '\n'];

if strcmp(newTxt(1), '!')
    cprintf([1,0.1765,0], newTxt(2:end));
elseif strcmp(newTxt(1), '?')
    cprintf([0.2039,0.5961,0.8588], newTxt(2:end));
elseif strcmp(newTxt(1:2), '//')
    cprintf([0.2784,0.2784,0.2784], newTxt(3:end));
elseif strcmpi(newTxt(1:4), 'todo')
    cprintf([1,0.5490,0], newTxt(5:end));
elseif strcmpi(newTxt(1), '*')
    cprintf([0.5961,0.7647, 0.4745], newTxt(2:end));
else
    disp(newTxt);
end