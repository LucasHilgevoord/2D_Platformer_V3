if (playerLives == 0)
{
    room_goto(rm_GameOver);
}

if (hurt == true)
{
    //show_message(playerLives);
    playerLives = (playerLives - 1);
    vspd = -jspd;
    hspd = (other.x - x) * 4;
    hurt = false;
}




