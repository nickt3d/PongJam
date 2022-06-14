// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function time_format_min(time){
	var s = "";
	var m = "";
	
	if(~~(time/60) < 10){
		m = "0" + string(~~(time/60));
	} else {
		m = string(~~(time/60));	
	}
	var ss = ~~time - ~~(time div 60)*60;
	if(ss < 10){
		s = "0" + string(ss);
	} else {
		s = string(ss);
	}
	
	return (m + "." + s);
}
