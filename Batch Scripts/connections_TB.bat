cd C:\Program Files (x86)\Jack

jack_disconnect system:capture_1 system:playback_1
jack_disconnect system:capture_2 system:playback_2

jack_connect system:capture_1 TBA:send_1
jack_connect system:capture_1 TBB:send_1
jack_connect system:capture_1 system:playback_1
jack_connect system:capture_1 system:playback_2

jack_connect TBA:receive_1 system:playback_1
jack_connect TBA:receive_1 system:playback_2

jack_connect TBB:receive_1 system:playback_1
jack_connect TBB:receive_1 system:playback_2

PAUSE