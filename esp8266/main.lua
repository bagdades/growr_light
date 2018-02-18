dofile("settings.lua")
dofile("wifi.lua")

--Global variables
device_data = {T = 100, L = 85, D = 179797989}

dofile("read_data.lua")

-- Sheduler
rtctime.set(1436430589, 0)
-- cron.schedule(cfg['cron_mask'], function(e)
cron.schedule("*/15 * * * *", function(e)
  dofile("schedule.lua")
end)

--Start HTTP 'server'
dofile("httpd.lua")
print('Ready')
