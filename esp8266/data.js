const json_url_now = 'now';

 // Load json file
function loadJSON(json_url, callback) {
    var xobj = new XMLHttpRequest();
    xobj.overrideMimeType("application/json");
    xobj.open('GET', json_url, true);
    xobj.onreadystatechange = function () {
          if (xobj.readyState == 4 && xobj.status == "200") {
            callback(xobj.responseText);
          }
    };
    xobj.send(null);
}

var timerID = setTimeout("refresh_info()",100);

// Refresh current data
function refresh_info() {
	loadJSON(json_url_now, function(response) {
    	var json_obj = JSON.parse(response);
		document.getElementById("temperature").innerHTML = json_obj.data[0].T;
		document.getElementById("light").innerHTML = json_obj.data[0].L;
		// document.getElementById("currTime").innerHTML = dateFormat(new Date(json_obj.data[0].D*1000),"HH:MM:ss");
		var min = json_obj.data[0].Dm;
		if (min < 10) {
			document.getElementById("currTime").innerHTML = json_obj.data[0].Dh + ':' + '0' + min;
		} else {
			document.getElementById("currTime").innerHTML = json_obj.data[0].Dh + ':' + min;
		}
	});
          
	clearTimeout(timerID);
	timerID = setTimeout("refresh_info()",60000);
}
