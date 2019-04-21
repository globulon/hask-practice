module Date where

data DayOfWeek = Mon | Tue | Wed | Thu | Fri | Sat | Sun

data MonthOfYear = Jan | Feb | Mar | Apr | May | Jun | 
    Jul | Aug | Sep | Oct | Nov | Dec 

data Date = Date DayOfWeek MonthOfYear

instance Eq MonthOfYear where 
    (==) Jan Jan = True
    (==) Feb Feb = True
    (==) Mar Mar = True
    (==) Apr Apr = True
    (==) May May = True
    (==) Jun Jun = True
    (==) Jul Jul = True
    (==) Aug Aug = True
    (==) Sep Sep = True
    (==) Oct Oct = True
    (==) Nov Nov = True
    (==) Dec Dec = True
    (==) _ _ = False

instance Eq DayOfWeek where
    (==) Mon Mon = True
    (==) Tue Tue = True
    (==) Wed Wed = True
    (==) Thu Thu = True
    (==) Fri Fri = True
    (==) Sat Sat = True
    (==) Sun Sun = True
    (==) _ _ = False

instance Eq Date where 
    (Date day month) == (Date day_2 month_2) = 
        day == day_2 && month == month_2