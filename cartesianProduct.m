function S = cartesianProduct(sets)
%cartesianProduct Summary of this function goes here
%   Detailed explanation goes here

nSets = numel(sets);
nPerSet = cellfun(@numel, sets);
nPerms = prod(nPerSet);
S = zeros(nPerms, nSets);
period = 1;
for ni = 1:nSets
  set = sets{ni}(:)';
  S(:,ni) = reshape(repmat(set, period, nPerms/(period*nPerSet(ni))), nPerms, 1);
  period = period*nPerSet(ni);
end

end

