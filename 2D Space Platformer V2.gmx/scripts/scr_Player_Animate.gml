if (global.pause)
{
    //sprite_index = spr_Player_Idle;
    image_speed = 0;
    
}
else
{    if (yprevious !=y)
      {    //Als we verticaal (springen) bewegen dan:
        sprite_index = spr_Player_Jump;
        image_speed = 0;
        image_index = y>yprevious;
        jumping = true;
        
    } else {                //Als we Horizontaal (lopen) bewegen dan:

    if (xprevious != x) && (place_meeting(x,y+1,obj_Platform))  
        {
            sprite_index = spr_Player_Walk;
            image_speed = .5;
            walking = true;
        }
        else if (xprevious = x) && (place_meeting(x,y+1,obj_Platform))
        {
            sprite_index = spr_Player_Idle;
            image_speed = 0.5;
            walking = false;
            jumping = false;
        }
        
        }
    
    
    // Animation flip
    if (xprevious < x) {     //Naar rechts
        image_xscale = 1;
    }else if (xprevious > x) { //Naar links
        image_xscale = -1;
    }
}
