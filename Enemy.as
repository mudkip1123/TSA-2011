﻿class Enemy extends MovieClip {	var speed;	var yRand;	var moveCounter;	function onLoad() {		//speed =  Math.round(Math.random()*(20-15))+15;		//this would have varied their speed slightly, but it looked weird.		speed = 10;		yRand = Math.round(Math.random()*(460-155))+155;		_x = yRand;		_y = 500;		moveCounter = 0;	}	function onEnterFrame() {		_y -= speed;		//move 20px down eaxh frame		moveCounter += 1;		if (_y<-10) {			_root.Master.updateScore(5);			this.removeMovieClip();			//remove it		}		if (this.hitTest(_root.Car)) {			var Explosion = _root.attachMovie("Explosion", "Explosion"+_root.getNextHighestDepth(), _root.getNextHighestDepth());			Explosion._x = _x;			Explosion._y = _y;			_root.Master.updateScore(-15);			this.removeMovieClip();		}		if(moveCounter > 0) {			moveCounter = 0;			this._x += Math.round(Math.random()*(3+3))-3;		}			}}