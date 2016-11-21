function outvar = string2var( var_name )

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

