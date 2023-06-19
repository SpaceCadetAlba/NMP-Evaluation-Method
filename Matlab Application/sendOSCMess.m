function sendOSCMess(messageID, reaperOSC)

fopen(reaperOSC);

if messageID == "mute"
    messageInfo = readtable("oscMuteMessages.xlsx");
elseif messageID == "unmute"
    messageInfo = readtable("oscUnmuteMessages.xlsx");
elseif messageID == "reset"
    messageInfo = readtable("oscResetMessages.xlsx");
elseif messageID == "practice"
    messageInfo = readtable("oscPracticeMessages.xlsx");
elseif messageID == "latency1"
    messageInfo = readtable("oscLatency1Messages.xlsx");
elseif messageID == "latency2"
    messageInfo = readtable("oscLatency2Messages.xlsx");
elseif messageID == "latency3"
    messageInfo = readtable("oscLatency3Messages.xlsx");
elseif messageID == "system1"
    messageInfo = readtable("oscSystem1Messages.xlsx");
elseif messageID == "system2"
    messageInfo = readtable("oscSystem2Messages.xlsx");
elseif messageID == "system3"
    messageInfo = readtable("oscSystem3Messages.xlsx");
end

for i = 1:length(messageInfo.Address)
    oscsend(reaperOSC, char(messageInfo.Address(i)), char(messageInfo.Type(i)), messageInfo.Value(i));
end

fclose(reaperOSC);