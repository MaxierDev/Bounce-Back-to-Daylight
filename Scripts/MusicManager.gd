extends AudioStreamPlayer

func _ready():
	print("Audio player ready")
	print("Stream: ", stream)

	volume_db = 0.0
	play()

	print("Playing: ", playing)


func play_music(new_music: AudioStream):
	if stream == new_music and playing:
		return

	stream = new_music
	stream_paused = false
	play()

func stop_music():
	stop()

func resume_music():
	if stream_paused:
		stream_paused = false
	elif not playing:
		play()

func pause_music():
	if playing:
		stream_paused = true
