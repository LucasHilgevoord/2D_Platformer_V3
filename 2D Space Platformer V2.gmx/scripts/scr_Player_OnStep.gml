///Platform Physics
var rkey = keyboard_check(keyboard_check(ord('D')) ) ;
var lkey = keyboard_check(keyboard_check(ord('A')));
var jkey = keyboard_check_pressed(vk_space);
var ckey = keyboard_check(keyboard_check(ord('S')) ) ;

if (global.pause)
{

}
else
{
    //Jumping
    scr_Player_Jump();
    
    //Walking/WallJump
    scr_Player_Walking();
    
    //Collisions
    scr_Player_Collision();
    }
    //Animation
    scr_Player_Animate();
    
    //Hurt
    scr_Player_Hurt();

//Reset Room
if keyboard_check_pressed(vk_backspace)
   {
   //room_goto(rm_1);
   game_end();
   }

//BackgroundController
scr_Player_BackgroundController();

//Custom Collison (Voor De Opdracht)
scr_Custom_Collision();



