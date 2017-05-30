var portalAmount = instance_number(obj_Portal);
var portal = -1;


    for (var i = 0; i < portalAmount; i++)
    {
        portal = instance_find(obj_Portal, i);
        
        if
        (
            bbox_left <= portal.bbox_right &&
            bbox_right >= portal.bbox_left &&
            bbox_top <= portal.bbox_bottom &&
            bbox_bottom >= portal.bbox_top
        )
        {
            audio_stop_all();
            room_goto(room_next(room_tutorial));
        }
}
