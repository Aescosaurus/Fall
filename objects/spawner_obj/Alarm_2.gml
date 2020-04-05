if( player.grav > 15.0 )
{
	var enemy = instance_create_layer(
	random_range( 0,room_width ),
	player.y + room_height,
	"instances",
	enemy_obj )
	
	enemy.image_angle = random_range( 0.0,360.0 )
}

alarm_set( 2,enemy_spawn_interval )