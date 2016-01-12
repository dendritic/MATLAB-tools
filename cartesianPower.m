function S = cartesianPower(set, n)
%cartesianPower Summary of this function goes here
%   Detailed explanation goes here

set = set(:)';
nel = numel(set);
nperms = nel^n;
S = zeros(nperms, n, 'like', set);
for ni = 1:n
  S(:,ni) = reshape(repmat(set, nel^(n - ni), nel^(ni-1)), nperms, 1);
end

end

