﻿class GameMaster extends MovieClip {	var spawnTimer;	var aidST;	var rand;	var enemies;	var score;	var gameOver;	var level;	//test	function onLoad() {		spawnTimer = 0;		aidST = 0;		rand = 0;		enemies = [];		score = 0;		gameOver = 0;		level = 1;	}	function onEnterFrame() {		spawnTimer += 1;		aidST += 1;		if (spawnTimer>20 && gameOver != 1) {			enemySpawn()		}		if (aidST > 500 && gameOver != 1) {				firstAidSpawn()			}		if (score >= level*300) {			level += 1;			_root.levelText.text = level;		}		if (score < -100 && gameOver != 1) {			endgame()		}	}		function endgame() {		gameOver = 1;		var Game_Over = _root.attachMovie("GameOver", "GameOver"+_root.getNextHighestDepth(), _root.getNextHighestDepth());		Game_Over._x = 300;		Game_Over._y = 300;		_root.Car.Speed = 0;	}	function updateScore(points) {		if (_root.Master.gameOver != 1) {			score += points;			_root.scoreText.text = score;		}	}	function enemySpawn() {			spawnTimer = 0;			var Enemy = _root.attachMovie("Enemy", "Enemy"+_root.getNextHighestDepth(), _root.getNextHighestDepth());			enemies.push(Enemy);			}	function firstAidSpawn() {		aidST = 0;		rand = Math.round(Math.random()*(2-1))+1		if (rand = 1) {			var FirstAid = _root.attachMovie("FirstAid", "FirstAid"+ _root.getNextHighestDepth(), _root.getNextHighestDepth());			FirstAid._x = Math.round(Math.random()*(460-155))+155;			FirstAid._y = -10		}			}}