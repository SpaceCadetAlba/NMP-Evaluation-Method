@ECHO OFF
:: This batch is for RT Test Protocol endpoint B

::JACK
ECHO Now starting JACK
START /min "" "C:\Users\AudioLab\Desktop\Jack PortAudio.lnk"
ECHO Please wait for Jack PortAudio to load...
TIMEOUT 20
START /min "" "C:\Users\AudioLab\Desktop\Jack Control.lnk"
ECHO Please wait for Jack Control to load...
TIMEOUT 20

::REAPER
ECHO Now starting Reaper
START "C:\Program Files\REAPER (x64)\reaper.exe" "C:\Users\AudioLab\Desktop\PatrickCairns_DecayEnvStudy_Distributable\Reaper Session\audioRendering.rpp"
TIMEOUT 60

::MATLAB APP
ECHO Now starting participant GUI
START "C:\Program Files\MATLAB\R2021b\bin\matlab.exe" "C:\Users\AudioLab\Desktop\PatrickCairns_DecayEnvStudy_Distributable\Matlab Application\revisedRTAppv2.mlapp"
TIMEOUT 60

::JACKTRIP
ECHO Now starting Jacktrip participant connection
START "" "C:\Users\AudioLab\Desktop\PatrickCairns_DecayEnvStudy_Distributable\Batch Scripts\jacktrip_endpointB.bat" /k
TIMEOUT 60

PAUSE

ECHO Now starting Jacktrip talkback connection
::JACKTRIP - TALKBACK
START "" "C:\Users\AudioLab\Desktop\PatrickCairns_DecayEnvStudy_Distributable\Batch Scripts\jacktrip_TBB.bat" /k