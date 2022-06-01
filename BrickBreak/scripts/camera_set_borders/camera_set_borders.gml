// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camera_set_borders(){
	if(dw > dh) {
		return {
			left:	~~(CameraController.cx - vx/(2*zoom*aspectratio) - 4),
			right:	~~(CameraController.cx + vx/(2*zoom*aspectratio) + 4),
			top:	~~(CameraController.cy - vy/(2*zoom*aspectratio)) + th,				  
			bottom: ~~(CameraController.cy + vy/(2*zoom*aspectratio)) - th*2
		}
	} else {
		return {
			left:	~~(CameraController.cx - ((vx/zoom)*aspectratio)/2),
			right:	~~(CameraController.cx + ((vx/zoom)*aspectratio)/2),
			top:	~~(CameraController.cy - (vy/zoom)/2),		  
			bottom: ~~(CameraController.cy + (vy/zoom)/2)
		}
	}
}