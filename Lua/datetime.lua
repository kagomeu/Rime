local function translator(input, seg)
    if (input == "dati" or input == "jaju") then
        yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d %H:%M:%S"), " "))
        yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d号%H点%M分%S秒"), " "))
    end
end
return translator
