// Horizantal Collisions, 
//Check of er een platform is en stop wanneer je er tegen aan komt
if (place_meeting(x+hspd, y, obj_Platform)) {
    while (!place_meeting(x+sign(hspd), y, obj_Platform)) {
        x+= sign(hspd);
        }
        hspd = 0;
}

//Move Horizontally. Deze MOET voor de vertical collisions
x += hspd;


// Vertical Collisions, 
//Check of er een platform is en stop wanneer je er tegen aan komt
if (place_meeting(x, y+vspd, obj_Platform)) {
    while (!place_meeting(x, y+sign(vspd), obj_Platform)) {
        y+= sign(vspd);
        }
        vspd = 0;
}

//Move Vertically
y += vspd;
