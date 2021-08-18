
    window.onData = function(data) {
    	if (data.setDisplay == true) {
    		$("#container").css('display', 'flex');
            
    	} else {
    		$("#container").css('display', 'none');
    	}
    	
    }


    window.onload = function(e) {
        window.addEventListener('message', function(event) {
            onData(event.data)
        });
    }

