--lua语言中的注释用“--”
local function translator(input, seg)
    if (input == "time" or input == "jfuj") then
        if (os.date("%p") == "AM") then
            am_pm = '上午'
        else
            am_pm = '下午'
        end
        yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), " "))
        yield(Candidate("time", seg.start, seg._end, os.date("%H点%M分%S秒"), " "))
        yield(Candidate("time", seg.start, seg._end, am_pm..os.date("%I点%M分%S秒"), " "))
    end
end
return translator
