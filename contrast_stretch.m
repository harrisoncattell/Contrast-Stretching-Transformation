function [image] =  contrast_stretch(r_image, lower_bound,upper_bound, tran_val)

% ------- Contrast Stretching Transformation (Piece-wise) -------
% Created by Harrison Cattell, 2017
%
% IMPORTANT NOTICE
% -----------
%
%   Images MUST be in greyscale before calling this function
%
% Description
% -----------
%   Self-made implementation of the piece-wise linear transformation which
%   also utalises identity to keep the unaffected values the same
%    
%   input parameters are: 
%   Image
%           Image to be affected by algorithm
%
%   Upper bound
%           Upper bound of transformation threshold
%
%   Lower bound
%           Lower bound of transformation threshold
%
%   Transformation value
%         Value that replaces values within bounds
%
% -------------------------------------------------------------------------

% -------------------------------------------------------------------------
%
% Initalise matrix dimensions
[col, row] = size(r_image);

% Assigns scaled matrix values from orignal image
for r = 1:row
   for c = 1:col
       
        x = r_image(c,r);
        
        % Identifying values in boundary
        if(x >= lower_bound && x <= upper_bound)
        
            r_image(c,r) = tran_val;
            
        end 
   end
end

% Returns result
image = r_image;

disp('Transformation Complete!');
% -------------------------------------------------------------------------



