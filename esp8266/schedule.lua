local tm = rtctime.epoch2cal(rtctime.get())
if tm["year"] < 2017 then
	print(tm["year"])
  sntp.sync()
else
	local timeZone = tm["hour"] + 2
	if timeZone >= 24 then
		timeZone = timeZone - 24
	end
	device_data.Dh = timeZone
	device_data.Dm = tm["min"]
end
collectgarbage()
