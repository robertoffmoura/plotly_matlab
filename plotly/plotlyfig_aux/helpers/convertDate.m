function convertedDate = convertDate(date)
format = ifel(isDate(date),'yyyy-mm-dd','yyyy-mm-dd HH:MM:ss');
convertedDate = datestr(date,format); % works with datetime and datenum
end

function tf = isDate(x)
    if isdatetime(x) || ischar(x), x = datenum(x); end
    tf = all(isnan(x) | x==floor(x)); % Dates must be in whole days, without a time portion; datetime(Inf,0,0) is OK
end
