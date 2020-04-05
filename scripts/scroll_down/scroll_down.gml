var y_move = argument0

for( var i = 0; i < instance_number( spike_obj ); ++i )
{
	var spike = instance_find( spike_obj,i )
	spike.y += y_move
}

for( var i = 0; i < instance_number( berry_obj ); ++i )
{
	var berry = instance_find( berry_obj,i )
	berry.y += y_move
}

for( var i = 0; i < instance_number( background_obj ); ++i )
{
	var bg = instance_find( background_obj,i )
	bg.y += y_move
}

for( var i = 0; i < instance_number( enemy_obj ); ++i )
{
	var enemy = instance_find( enemy_obj,i )
	enemy.y += y_move
}

