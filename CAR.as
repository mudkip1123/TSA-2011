﻿class CAR extends MovieClip {	var upSpeed;	//speed that the car moves upward.	var Speed;	//speed that the car moves in any other direction.	var gameOver;	var shotCounter;	function onLoad() {		Speed = 6;		gameOver = 0;		shotCounter = 0;																																																												}	function onEnterFrame() {		shotCounter += 1;		/*if (Key.isDown(Key.UP)) {			_root.Road.scrollSpeed = 15;			_y -= Speed;		} else {			_root.Road.scrollSpeed = 10;		}		if (Key.isDown(Key.DOWN)) {			_y += Speed;		}*/		if (Key.isDown(Key.LEFT)) {			_x -= Speed;		}		if (Key.isDown(Key.RIGHT)) {			_x += Speed;		}		if (this.hitTest(_root.Road)) {		} else if (_root.Master.gameOver != 1) {			_root.Master.gameOver = 1;			var Game_Over = _root.attachMovie("GameOver", "GameOver"+_root.getNextHighestDepth(), _root.getNextHighestDepth());			Game_Over._x = 300;			Game_Over._y = 300;			Speed = 0;		}		if (Key.isDown(Key.SPACE) && shotCounter>10) {			shotCounter = 0;			var Pellet = _root.attachMovie("Pellet", "Pellet"+_root.getNextHighestDepth(), _root.getNextHighestDepth());			Pellet._x = _root.Car._x;			Pellet._y = _root.Car._y+30;		}				//changes scor 	}}