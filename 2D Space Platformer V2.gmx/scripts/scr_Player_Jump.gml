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
    
    
    //Check for the ground
    if (place_meeting(x, y+1, obj_Platform)) {
        doubleJump = 1;
        vspd = 0;
        
        //Jumping, Alleen wanneer ze op de grond staan.
        if (jkey) {
            vspd = -jspd;
            }
    } else {
        //Gravity
        if (vspd < 10) {
            vspd += grav;
            }
            
            //Check for doubleJump
            if (doubleJump > 0) {
                if (jkey) {
                    vspd = -jspd;
                    doubleJump -=1;
                    }
            }
    }
}
