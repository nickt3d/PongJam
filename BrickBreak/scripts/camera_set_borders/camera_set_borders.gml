// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camera_set_borders(){
	if(dw > dh) {
		return {
			left:	~~(CameraController.cx - vx/(2/zoom)),
			right:	~~(CameraController.cx + vx/(2/zoom)),
			top:	~~(CameraController.cy - vy/(2/zoom)),				  
			bottom: ~~(CameraController.cy + vy/(2/zoom))
		}
	} else {
		return {
			left:	~~(CameraController.cx - vx/(2/zoom)),
			right:	~~(CameraController.cx + vx/(2/zoom)),
			top:	~~(CameraController.cy - vy/(2/zoom)),				  
			bottom: ~~(CameraController.cy + vy/(2/zoom))
		}
	}
}