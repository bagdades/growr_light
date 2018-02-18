params_index = ['tempOff','lightOff', 'onOff']

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

function fill_fields(json_obj) {
  for (i=0; i<params_index.length; i++) {
	ele = document.getElementById(params_index[i]);
	ele.value = json_obj.cfg_index[0][params_index[i]];
	if (ele.getAttribute("type") == 'checkbox') {
		if(ele.value == "Light On") {
			ele.checked = true;
		} else {
			ele.checked = false;
		}
	}
	ele = document.getElementById(params_index[i] + 'Value');
	ele.innerHTML = json_obj.cfg_index[0][params_index[i]];
  }
}

function submit_cfg_index() {
  url = 'savecfg?';
  for (i=0; i<params_index.length; i++) {
	ele = document.getElementById(params_index[i]);
	if (ele.tagName == 'INPUT') {
		url = url + params_index[i] + '=' + ele.value + '&';
	}
  }

  loadJSON(url, function(response) {
	alert(response);    	
    var json_obj = JSON.parse(response);
	alert(response);
  });
}
