%Write a function called valid_date that takes three positive integer scalar inputs year, month, day. 
% If these three represent a valid date, return a logical true, otherwise false. The name of the output argument is valid. 
% If any of the inputs is not a positive integer scalar, return false as well. 
% Note that every year that is exactly divisible by 4 is a leap year, except for years that are exactly divisible by 100. However, years that are exactly divisible by 400 are also leap years. 
% For example, the year 1900 was not leap year, but the year 2000 was. Note that your solution must not contain any of the date related built-in MATLAB functions.	


function valid = valid_date(year,month,day)
if (nargin==3)
    if(isscalar(year) && isscalar(month) && isscalar(day))
        if(rem(year,400)==0)
            if((month==1||3||5||7||8||10||12) && ((1<=day)&&(day<=31)))
                valid=true;
            elseif(month==2 && ((1<=day)&&(day<=29)))
                valid=true;
            elseif((month==4||6||9||11) && ((1<=day)&&(day<=30)))
                valid=true;
            else
                valid=false;    
            end
        elseif(rem(year,4)==0 && rem(year,100)~=0)
            if((month==1||3||5||7||8||10||12) && ((1<=day)&&(day<=31)))
                valid=true;
            elseif(month==2 && ((1<=day)&&(day<=29)))
                valid=true;
            elseif((month==4||6||9||11) && ((1<=day)&&(day<=30)))
                valid=true;
            else
                valid=false;
            end

        elseif(rem(year,100)==0 && rem(year,400)~=0)
            if((month==1||3||5||7||8||10||12) && ((1<=day)&&(day<=31)))
                valid=true;
            elseif(month==2 && ((1<=day)&&(day<=28)))
                valid=true;
            elseif((month==4 || month==6 || month==9 || month==11) && (1<=day && day<=30))
                valid=true;
            else
                valid=false;    
            end
        elseif(rem(year,4)~=0)
            if((month==1||3||5||7||8||10||12) && ((1<=day)&&(day<=31)))
                valid=true;
            elseif((month==4||6||9||11) && ((1<=day)&&(day<=30)))
                valid=true;
            elseif(month==2 && ((1<=day)&&(day<=28)))
                valid=true;
            else
                valid=false;
            end
        else
            valid=false;
        end
    else
        valid=false;
    end
else
    valid=false;
end
end
