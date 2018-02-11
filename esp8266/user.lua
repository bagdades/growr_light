-- Connect
tmr.alarm(0, 1000, 1, function()
	if wifi.sta.getip() == nil  then
		print("Connecting to AP...\n")
	else
		ip, nm, gw = wifi.sta.getip()
		print("IP Info: \nIP Address: ",ip)
		print("Netmask: ",nm)
		print("Gateway Addr: ",gw , '\n')
		tmr.stop(0)
	end
end)

srv = net.createServer(net.TCP, 30 )
srv:listen(80, function(conn)
	conn:on("receive", function(conn, payload)
			print(payload)
			postparse = {string.find(payload, "mcu_do=")}
			print(postparse[1])
			print(postparse[2])
			if postparse[2] ~= nil then
				print(string.sub(payload, postparse[2] + 1, #payload))	
			end
			conn:send('<html>\n')
			conn:send('<head>\n')
			conn:send('<meta charset="UTF-8" />\n')
			conn:send('<meta name="viewport" content="width=device-width" />\n')
			conn:send('<title>One</title>\n')
			conn:send('</head>\n')
			conn:send('<body>\n')
			conn:send('<form action="" method="post" accept-charset="utf-8">\n')
			conn:send('Test \n')
			conn:send('<input type="button" value="Test" name="mcu_do"/>	\n')
			conn:send('</form>\n')
			conn:send('<form action="" method="post" accept-charset="utf-8">\n')
			conn:send('Name:\n')
			conn:send('<input type="text" value="Vovan" name="Name"/><br><br>\n')
			conn:send('<input type="submit"/>\n')
			conn:send('</form>\n')
			conn:send('</body>\n')
			conn:send('</html>\n')
			conn:on("sent", function(conn) conn:close() end)
		end)
	end)
