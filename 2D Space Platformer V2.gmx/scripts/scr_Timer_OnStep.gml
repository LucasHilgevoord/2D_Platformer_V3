if (countdown_time > 0)
{
    var time = delta_time/1000000;
    countdown_time -= time;
    rounded_time = round(countdown_time);
}
else
{
    countdown_time = 0;
    //Game over screen
}

if(countdown_time <= 0)
{
room_goto(room_GameOver)
}
