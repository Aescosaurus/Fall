var berry = instance_create_layer(
	random_range( 0 + berry_buffer,room_width - berry_buffer ),
	player.y + room_height,
	"instances",
	berry_obj )

berry.image_angle = random_range( 0.0,360.0 )

alarm_set( 1,berry_spawn_interval )