function [ charified ] = create_string_arg( string )
% Function to wrap a char vector into  " ' " symbol
% Useful for automatic callback call generation in add_exec_event_listener
% NOTE: it's just a syntax sugar!
% Input string - vector of chars
% Output "charified" vector
if ischar(string)
    charified = [char(39) string char(39)];
else
    error('Create_string_arg:Input is not a string!')
end
end

