﻿class GameMaster extends MovieClip {	var spawnTimer;	var enemies;	var score;	function onLoad() {		spawnTimer = 0;		enemies = [];		score = 0;	}	function onEnterFrame() {		spawnTimer += 1;		if (spawnTimer>20) {			spawnTimer = 0;			var Enemy = _root.attachMovie("Enemy", "Enemy"+_root.getNextHighestDepth(), _root.getNextHighestDepth());			enemies.push(Enemy);		}		function updateScore(points) {			score += points;			_root.Score.text = score;		}	}}