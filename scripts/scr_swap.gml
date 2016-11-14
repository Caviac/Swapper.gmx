//argument0 = object ID
global.swap = true;
playerX = obj_player.x;
playerY = obj_player.y;
targetX = argument0.x;
targetY = argument0.y;

obj_player.x = targetX;
argument0.x = playerX;
obj_player.y = targetY;
argument0.y = playerY;
