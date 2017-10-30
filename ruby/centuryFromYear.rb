# Given a year, return the century it is in.

def centuryFromYear(year)
    if year <= 2005 && year >=1
        return (year+99)/100
    end

end

p centuryFromYear(1705)