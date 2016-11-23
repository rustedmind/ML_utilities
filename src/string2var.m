function outvar = string2var( var_name )
% Function to convert a string to a variable name
% Input: var_name - a string containing variable name
% Output: variable with name var_name, if variable exists in upper scope or
%         NaN if variable doesn't exist
if ischar(var_name)
    
    if exist(var_name,'var')
        outvar = evalin('caller',var_name);
    else
        warning('No variable found! Setting output to NaN!');
        outvar = NaN;
    end
else
    error(['Unexpected input! Expected vector of chars, recieved ' class(var_name)])
end
end

