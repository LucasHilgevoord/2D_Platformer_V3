var portalAmount = instance_number(obj_portal);
var portal = -1;


    for (var i = 0; i < portalAmount; i++)
    {
        portal = instance_find(obj_portal, i);
        
        if
        (
            bbox_left <= portal.bbox_right &&
            bbox_right >= portal.bbox_left &&
            bbox_top <= portal.bbox_bottom &&
            bbox_bottom >= portal.bbox_top
        )
        {
            audio_stop_all();
            //show_message("hentai");
            room_goto(room_next(rm_1));
        }
}
