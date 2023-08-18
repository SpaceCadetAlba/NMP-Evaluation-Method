@ECHO OFF
:: This batch is for iNMP Test Protocol endpoint A

::JACK
ECHO Now starting JACK
start /min "" "C:\Program Files (x86)\Jack\jackd.exe" -R -S -d portaudio -d "*AUDIO DEVICE NAME" -r 48000 -p 128
ECHO Please wait for JACK to load...
TIMEOUT 20

ECHO Now starting JACK Control
START /min "" "C:\Program Files (x86)\Jack\qjackctl.exe"
ECHO Please wait for Jack Control to load...
TIMEOUT 20

::REAPER
ECHO Now starting Reaper
START "C:\Program Files\REAPER (x64)\reaper.exe" "C:\NMP-Evaluation-Method-main\Reaper Session\audioRendering.rpp"
TIMEOUT 60

::MATLAB APP
ECHO Now starting participant GUI
START "C:\Program Files\MATLAB\R2021b\bin\matlab.exe" "C:\NMP-Evaluation-Method-main\Matlab Application\revisedRTAppv2.mlapp"
TIMEOUT 60

::JACKTRIP
ECHO Now starting Jacktrip participant connection
START "" "C:\NMP-Evaluation-Method-main\Batch Scripts\jacktrip_endpointA.bat" /k
TIMEOUT 60

ECHO To also include the control room endpoint with talkback, press enter to continue
PAUSE
::JACKTRIP - TALKBACK
START "" "C:\NMP-Evaluation-Method-main\Batch Scripts\jacktrip_TBA.bat" /k
PAUSE
