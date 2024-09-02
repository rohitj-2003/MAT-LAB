%Write a function called valid_date that takes three positive integer scalar inputs year, month, day. 
% If these three represent a valid date, return a logical true, otherwise false. The name of the output argument is valid. 
% If any of the inputs is not a positive integer scalar, return false as well. 
% Note that every year that is exactly divisible by 4 is a leap year, except for years that are exactly divisible by 100. However, years that are exactly divisible by 400 are also leap years. 
% For example, the year 1900 was not leap year, but the year 2000 was. Note that your solution must not contain any of the date related built-in MATLAB functions.	

function valid=valid_date(year,month,day)
if nargin==3
    if ~isscalar(year) || year<1 || year~=fix(year)
        valid = false;
        return
    elseif ~isscalar(month) || month<1 || month~=fix(month)
        valid = false;
        return
    elseif ~isscalar(day) || day<1 || day~=fix(day)
        valid = false;
        return
    end
end
a=year/4;
b=year/400;
c=year/100;
f1=(1:29);
f2=(1:28);
d1=(1:31);
d2=(1:30);
m1=[1 3 5 7 8 10 12];
m2=[4 6 9 11];

if a~=fix(a) || (b ~= fix(b) && c==fix(c))
    if ismember(month,m1) && ismember(day,d1)
        valid=true;
    elseif ismember(month,m2) && ismember(day,d2)
        valid=true;
    elseif month==2 && ismember(day,f2)
        valid=true;
    else
        valid=false;
    end
elseif a==fix(a) || b==fix(b)
    if ismember(month,m1) && ismember(day,d1)
        valid=true;
    elseif ismember(month,m2) && ismember(day,d2)
        valid=true;
    elseif month==2 && ismember(day,f1)
        valid=true;
    else
        valid=false;
    end
end 
