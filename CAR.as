﻿class CAR extends MovieClip {	var Speed;	var shotCounter;	var healthy;	function onLoad() {		Speed = 6;		shotCounter = 0;		healthy = 0;	}	function onEnterFrame() {		shotCounter += 1;		if (Key.isDown(Key.LEFT)) {			_x -= Speed;		}		if (Key.isDown(Key.RIGHT)) {			_x += Speed;		}		if (Key.isDown(Key.SPACE) && _root.Master.gameOver != 0) {			for (var t in _root.Master.enemies) {				_root.Master.enemies[t].removeMovieClip();			}			restart()		}		if (Key.isDown(Key.SPACE) && shotCounter>10) {			shotCounter = 0;			var Pellet = _root.attachMovie("Pellet", "Pellet"+_root.getNextHighestDepth(), _root.getNextHighestDepth());			Pellet._x = _root.Car._x;			Pellet._y = _root.Car._y+30;		}		if (this.hitTest(_root.Road)) {		} else if (_root.Master.gameOver != 1) {			_root.Master.gameOver = 1;			var Game_Over = _root.attachMovie("GameOver", "GameOver"+_root.getNextHighestDepth(), _root.getNextHighestDepth());			Game_Over._x = 300;			Game_Over._y = 300;			Speed = 0;		}		if (healthy > 0) {			healthy += 1;			_root.Healthy.text = 300-healthy;			if (healthy > 300) {				healthy = 0;				_root.Healthy.text = healthy;			}		}	}		function restart() {		_root.Car._x = 375;		_root.Master.score = 0;		_root.Master.level = 0;		_root.scoreText.text = 0;		_root.levelText.text = 1;		_root.Master.gameOver = 0;		Speed = 6;		_root.GameOver1.removeMovieClip()	}}