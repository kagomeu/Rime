local WEEKDAY = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saterday"}
local WD = {"Sun.", "Mon.", "Tues.", "Wed.", "Thur.", "Fri.", "Sat."}
local XINGQI = {"星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"}
local ZHOU = {"周日", "周一", "周二", "周三", "周四", "周五", "周六"}

local function translator(input, seg)
    if (input == "week" or input == "jtad" or input == "mf") then
        local weekday = tonumber(os.date("%w")) + 1
        yield(Candidate("week", seg.start, seg._end, WEEKDAY[weekday], " "))
        yield(Candidate("week", seg.start, seg._end, WD[weekday], " "))
        yield(Candidate("week", seg.start, seg._end, XINGQI[weekday], " "))
        yield(Candidate("week", seg.start, seg._end, ZHOU[weekday], " "))
    end
end
return translator
