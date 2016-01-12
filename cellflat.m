function flat = cellflat(c)
%CELLFLAT Eliminates nesting from nested cell arrays
%   F = CELLFLAT(C)
%
% Part of Burgbox

% 2013-02 CB created

flat = {};

for i = 1:numel(c)
  elem = c{i};
  if iscell(elem)
    elem = cellflat(elem);
  end
  if isempty(elem)
    elem = {elem};
  end
  flat = [flat; elem];
end

end

