function saveLikertData(id, repSeq, delSeq, sysSeq, q1, q2, q3, q4, q5)

filenameid = id{1,1};

% generate a filename
fileName = sprintf('likertData_%s.xlsx', filenameid);

% Make a table of the data
likertData = table(repSeq, delSeq, sysSeq, q1, q2, q3, q4, q5, 'variableNames', {'Repetition', 'Delay', 'Audio System', 'Q1', 'Q2', 'Q3', 'Q4', 'Q5'});

% Save the data
writetable(likertData, fileName,'Sheet',1,'Range','A1');