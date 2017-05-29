if (global.pause)
{

}
else
{
    ///Platform Physics
    var rkey = keyboard_check(keyboard_check(ord('D')) ) ;
    var lkey = keyboard_check(keyboard_check(ord('A')));
    var jkey = keyboard_check_pressed(vk_space);
    var ckey = keyboard_check(keyboard_check(ord('S')) ) ;
    
    // Moving To the right
    if (rkey) {
        hspd = spd;
        
        
        // Left Wall Jump
        if (place_meeting(x-1, y, obj_Pillar) && !place_meeting(x, y+1, obj_Pillar) && !lkey)
           vspd = -jspd;
    }
    
    // Moving To the Left
    if (lkey) {
        hspd = -spd;
        
        // Right Wall Jump
      
        if (place_meeting(x+1, y, obj_Pillar) && !place_meeting(x, y+1, obj_Pillar) && !rkey)
           vspd = -jspd;
    }
    
    // Check for not Moving
    //Als Je Allebei de toetsen indrukt gaat het naar 0, ook als je niks indrukt gaat het naar 0.
    if ((!rkey && !lkey) || (rkey && lkey)) {   
        hspd = 0;
    }
}
