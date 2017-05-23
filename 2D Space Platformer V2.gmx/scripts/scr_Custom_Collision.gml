//Collison on the next level Objects


//Platform Collison
var platformAmount = instance_number(obj_Goal);
var  platform = -1;

for (var i = 0; i < platformAmount; i++) 
{
    platform = instance_find(obj_Goal, i);
    
    if
    (
        bbox_left <= platform.bbox_right &&
        bbox_right >= platform.bbox_left &&
        bbox_top <= platform.bbox_bottom &&
        bbox_bottom >= platform.bbox_top 
        
    )
    {
        if (bbox_bottom - (y - yPrevious) < platform.bbox_top)
        {
            // FROM TOP:
            room_goto(rm_GameOver);
        }
        //Haal deze stukjes weg als je door het blokje via de onderkant wilt komen
        
        else if (bbox_top - (y - yPrevious) > platform.bbox_bottom)
        {
            //FROM BOTTOM
            room_goto(rm_GameOver);
            
        }
        
        else if (bbox_left - (x - xPrevious) > platform.bbox_right)
        {
            //FROM RIGHT
            room_goto(rm_GameOver);
            
        }
        
        else if (bbox_right - (x - xPrevious) > platform.bbox_left)
        {
            //FROM LEFT
            room_goto(rm_GameOver);
            
        }
    }        
}





