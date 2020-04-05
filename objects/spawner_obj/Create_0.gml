player = instance_find( player_obj,0 )

spike_spawn_interval = 0.2 * 60.0
berry_spawn_interval = 1.6 * 60.0
enemy_spawn_interval = 1.4 * 60.0

berry_buffer = 40

alarm_set( 0,spike_spawn_interval )
alarm_set( 1,berry_spawn_interval )
alarm_set( 2,enemy_spawn_interval )

audio_play_sound( bg_aud,1,true )