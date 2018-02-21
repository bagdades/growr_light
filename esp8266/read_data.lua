local tm = rtctime.epoch2cal(rtctime.get())
device_data.D = tm["min"]

collectgarbage()
