cd C:\Program Files (x86)\Jack

jack_disconnect system:capture_1 reaper:in1
jack_disconnect system:capture_2 reaper:in2
jack_disconnect system:capture_3 reaper:in3
jack_disconnect system:capture_4 reaper:in4

jack_disconnect reaper:out1 system:playback_1
jack_disconnect reaper:out2 system:playback_2
jack_disconnect reaper:out3 system:playback_3
jack_disconnect reaper:out4 system:playback_4

jack_connect system:capture_1 reaper:in1
jack_connect client:receive_1 reaper:in2
jack_connect system:capture_2 reaper:in3

jack_connect system:capture_1 client:send_1

jack_connect reaper:out1 system:playback_1
jack_connect reaper:out2 system:playback_2

jack_connect TB:receive_1 system:playback_1
jack_connect TB:receive_1 system:playback_2

jack_connect system:capture_1 TB:send_1

PAUSE