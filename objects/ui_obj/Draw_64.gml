if( game_over )
{
	draw_set_font( big_font )
	draw_text( window_get_width() / 2,
		window_get_height() / 4.4,
		"score:" + string( floor( distance / 50 ) ) )
}
else
{
	draw_set_font( med_font )
	draw_text( window_get_width() / 2,15,
		"score:" + string( floor( distance / 50 ) ) )
	
	draw_set_font( small_font )
	draw_text( 75,15,string( berries ) + "/" + string( berry_max ) )
}