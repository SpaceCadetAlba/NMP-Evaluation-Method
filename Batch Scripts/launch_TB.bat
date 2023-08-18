@ECHO OFF
:: This batch is for iNMP Test Protocol endpoint B

::JACK
ECHO Now starting JACK
start /min "" "C:\Program Files (x86)\Jack\jackd.exe" -R -S -d portaudio -d "*AUDIO DEVICE NAME" -r 48000 -p 128
ECHO Please wait for JACK to load...
TIMEOUT 20

ECHO Now starting JACK Control
START /min "" "C:\Program Files (x86)\Jack\qjackctl.exe"
ECHO Please wait for Jack Control to load...
TIMEOUT 20

::JACKTRIP
ECHO Now starting Jacktrip participant connection
START "" "NMP-Evaluation-Method-main\Batch Scripts\jacktrip_endpointB.bat" /k
TIMEOUT 60

ECHO To also include the control room endpoint with talkback, press enter to continue
PAUSE
::JACKTRIP - TALKBACK
START "" "NMP-Evaluation-Method-main\Batch Scripts\jacktrip_A_TB.bat" /k
START "" "NMP-Evaluation-Method-main\Batch Scripts\jacktrip_B_TB.bat" /k
PAUSE
