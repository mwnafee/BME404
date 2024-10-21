
function [dH] = hausdorff( A, B) 
if(size(A,2) ~= size(B,2)) 
    fprintf( 'WARNING: dimensionality must be the same\n' ); 
    dH = []; 
    return; 
end
dH = max(compute_dist(A, B), compute_dist(B, A))