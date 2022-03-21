function cmat = ccoeffunction_het_constant_diff(location,state)
%COCOEFFFUNCTION_HET_CONSTANT_DIFF provides the c matrix for PDEToolbox.

% Author: Lukas Eigentler (leigentler001@dundee.ac.uk)
% License: GNU GPL
% Last updated: 18/02/2022
global N time_start

if toc(time_start) > 10000 && length(location.x)>1
    return
end
[~,~,dhet1,dhet2] = kmax_fct(location); % get parameter landscape
cmat = zeros(4*N^2,length(location.x));


cmat(1,:) =  dhet1; 
cmat(4,:) =   dhet1; 
cmat(4*N+5,:) =  dhet2; 
cmat(4*N+8,:) =  dhet2; 



end