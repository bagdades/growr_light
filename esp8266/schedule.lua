local tm = rtctime.epoch2cal(rtctime.get())
-- if tm["year"] < 2017 then
--   sntp.sync()
-- end
dofile("read_data.lua")
collectgarbage()
