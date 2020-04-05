if( instance_exists( player ) )
{
	var x_diff = x - player.x
	var y_diff = player.y - y
	var len = sqrt( sqr( x_diff ) + sqr( y_diff ) )
	
	if( len < jump_dist && !jumped )
	{
		x_vel = -x_diff / len * spd
		y_vel = y_diff / len * spd
		jumped = true
	}
	else if( len < follow_dist )
	{
		image_angle = radtodeg( arctan2( y_diff,x_diff ) ) + 90.0
	}
}
	
	var dt = get_delta_time()
	
	x += x_vel * dt
	y += y_vel * dt
	
	var x_decay = x_vel * decay
	var y_decay = y_vel * decay
	x_vel = lerp( x_vel,x_decay,dt )
	y_vel = lerp( y_vel,y_decay,dt )