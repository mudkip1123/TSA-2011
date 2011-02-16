class ROAD extends MovieClip {
        var scrollSpeed;
	var score;
	//purpleBLUEred


	//related to enemy spawning

	function onLoad() {
		scrollSpeed = 10;
		score = 0;
		//purple
	}
	function onEnterFrame() {

		this._y += scrollSpeed;

		if (_y>699) {
			_y = 233;
		}
		

	}
}
