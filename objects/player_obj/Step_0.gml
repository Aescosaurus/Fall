var dt = get_delta_time()

if( !hurt ) grav_acc += passive_penalty * dt

grav += grav_acc * dt
var move_y = grav * dt
scroll_down( -move_y )
ui_obj.distance += move_y

if( keyboard_check( ord( "A" ) ) || keyboard_check( vk_left ) ) x_vel -= handling
else if( keyboard_check( ord( "D" ) ) || keyboard_check( vk_right ) ) x_vel += handling

if( x_vel > max_vel ) x_vel = max_vel
if( x_vel < -max_vel ) x_vel = -max_vel
x += x_vel * dt
if( x < 0 + spr_width / 2 ) x = 0 + spr_width / 2
if( x > room_width - spr_width / 2 ) x = room_width - spr_width / 2
var decay_target = x_vel * vel_decay
x_vel = lerp( x_vel,decay_target,dt )

if( abs( x_vel ) > 0.08 ) image_xscale = x_vel / abs( x_vel )