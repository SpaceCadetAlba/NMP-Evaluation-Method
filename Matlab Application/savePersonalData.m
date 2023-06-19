function savePersonalData(id, name, age, gender, ethnicity, experience, expComment)

filenameid = id{1,1};

% generate a filename
fileName = sprintf('personalData_%s.xlsx', filenameid);

% store all our data into a table
personalInfo = table(id, name, age, gender, ethnicity, experience, expComment, 'variableNames', {'ID', 'Name', 'Age', 'Gender', 'Ethnicity', 'Experience', 'Experience Comment'});

% write the table
writetable(personalInfo, fileName,'Sheet',1,'Range','A1');

end