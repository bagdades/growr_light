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
		document.getElementById("date").innerHTML = dateFormat(new Date(json_obj.data[0].D*1000),"ddd mmm dd yyyy HH:MM:ss");
	});
          
	clearTimeout(timerID);
	timerID = setTimeout("refresh_info()",60000);
}
