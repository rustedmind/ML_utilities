function host = TestHost(hostname)
% This function tests a host for availability
% Input - string or char vector, containing hostname
% Output - logical scalar, 1 if host available, 0 if not
if ischar(hostname) || isstring(hostname)
    [status, reply] = system(['ping ' char(hostname)]);
    if status == 0
        if ~isempty(regexp(reply,'\<Reply\>', 'match'))
            host = true;
            
        else
            host = false;
        end
    else
        host = false;
    end
else 
    error('Input error: Expected a string or a char vector!')
end
end