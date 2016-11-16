//Set "inst" to nearest moving platform object
var inst = instance_nearest(argument0.x, argument0.y, obj_movingPlatform);

//Move target object when it's on top of a moving platform
if (place_meeting(argument0.x, argument0.y + 1, obj_movingPlatform)){
    if !(place_meeting(argument0.x + (inst.hSpeed * inst.dir), argument0.y, (obj_crushDeath or obj_wallMoving))){
        argument0.x += (inst.hSpeed * inst.dir);
    }
}

//Push Objects
/*if (place_meeting(inst.x + (inst.hSpeed * inst.dir), inst.y, argument0)){
    if (place_meeting(argument0.x + inst.dir, y, obj_crushDeath)){
        scr_playerDeath("crushed");
    }else{
        argument0.x += inst.dir;
    }
}
