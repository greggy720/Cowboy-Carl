depth = -2000
view_set_visible(0, true)
view_set_visible(1, false)
camera = view_get_camera(0)
x=camera_get_view_x(camera)
y=camera_get_view_y(camera)-160
audio_pause_sound(snd_retroTheme)
audio_sound_gain(snd_retroTheme2,400,0)





