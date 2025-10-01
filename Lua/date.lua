local function translator(input, seg)
    if (input == "date" or input == "jjad") then
        yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), " "))
        yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d号"), " "))
    end
end
return translator
