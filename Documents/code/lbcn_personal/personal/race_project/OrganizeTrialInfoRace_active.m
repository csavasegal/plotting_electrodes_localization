function OrganizeTrialInfoRace_active(sbj_name, project_name, block_names, dirs,center)
%this is for race active
   for i = 1:length(block_names)
    bn = block_names{i};
    
    %% Load globalVar
    load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,bn));
    
    % Load behavioral file
    soda_name = dir(fullfile(globalVar.psych_dir, 'sodata*.mat'));
    %% start from here
    K = load([globalVar.psych_dir '/' soda_name.name]); % block 55 %% FIND FILE IN THE FOLDER AUTO
    
    
    
    %% build the trialinfo for Race_behavior block 1  
    
    % this is for active block
    if contains(soda_name.name,'recall') == 0
        K.theData = K.theData(1:216);
        
        % built trialinfo as a table
        trialinfo = table;
        %get center info
        center = repmat(center,108,1);
        % get the race info of the patient
        if strcmp(K.subID(1),'A') || strcmp(K.subID(1),'C') 
            race = 1; % race = 1 for Asia; race = 2 for Black; race = 3 for White %%%need to be nodified here
        elseif strcmp(K.subID(1),'B')
           race = 2;
        elseif strcmp(K.subID(1),'W')
            race = 3;
        else
            error('Please define the race condition of patient; race = 1 for Asian, race = 2 for Black, race = 3 for white')
        end
        race = repmat(race,108,1);
        % get the gender info of the patient
        if strcmp(K.subID(2),'F')
            gender = 1;
        elseif strcmp(K.subID(2),'M')
            gender = 2;
        elseif strcmp(sbj_name, 'C18_28')
            gender = 2;
        elseif strcmp(sbj_name, 'C18_27')
            gender = 1;
        else
            error('Please define the gender info of patient; female = 1, male = 2')
        end
        gender = repmat(gender,108,1);
        % get the response time of this block
        RT = [K.theData(2:2:216).RT]';
        % get the face info of this block
        for i = 2:2:216
            if strcmp(K.theData(i).conds(1),'A')
                test_race(i) = 1;
            elseif strcmp(K.theData(i).conds(1),'B')
                test_race(i) = 2;
            elseif strcmp(K.theData(i).conds(1),'W')
                test_race(i) = 3;
            end
        end
        test_race = test_race(2:2:216)';
        % get the gender info of this block
        for i = 2:2:216
            if strcmp(K.theData(i).conds(2),'M')
                test_gender(i) = 2;
            elseif strcmp(K.theData(i).conds(2),'F')
                test_gender(i) = 1;
            end
        end
        test_gender = test_gender(2:2:216)';
        
        % get the judgement for patient in each trial,%some control statement
        % need to written in here
        for i = 2:2:216
            if strcmp(K.theData(i).keys,'0') || strcmp(K.theData(i).keys,'j')
                pa_judg(i) = 1;
            elseif strcmp(K.theData(i).keys,'.') || strcmp(K.theData(i).keys,'f')
                pa_judg(i) = 0;
            end
        end
        pa_judg = pa_judg(2:2:216)';
        % get the right answer of whether it is the same face
        test_ans = (test_race == race);
        % get the actual time of the present of the image (RT box recorded)
        for i = 1:2:215
            test_time(i) = K.theData(i).flip.StimulusOnsetTime;
        end
        test_time = test_time(1:2:215)';
        % get the actual time of the response from the patients (RT box recorded)
        for i = 2:2:216
            pa_click_time(i) = K.theData(i).flip.StimulusOnsetTime;
        end
        pa_click_time = pa_click_time(2:2:216)';
        
        StimulusOnsetTime = [test_time,pa_click_time];
        % assemble the trialinfo
        trialinfo = table(center, race, gender,StimulusOnsetTime,RT,test_race,test_gender,test_ans,pa_judg);
        % get isCorrect
        for i=1:size(trialinfo,1)
            if trialinfo.pa_judg(i) == trialinfo.test_ans(i)
                trialinfo.isCorrect(i) = 1;
            else
                trialinfo.isCorrect(i) = 0;
            end
        end
        
    else
        %% build the trialinfo for Race_behavior block 3
        K.theData = K.theData(217:648);
        
        % built trialinfo as a table
        trialinfo = table;
        % get the center info
        center = repmat(center,108,1);
        % get the race info of the patient
        if strcmp(K.subID(1),'A')
            race = 1; % race = 1 for Asia; race = 2 for Black; race = 3 for White %%%need to be nodified here
        elseif strcmp(K.subID(1),'B')
            race = 2;
        elseif strcmp(K.subID(1),'W')
            race = 3;
        else
            error('Please define the race condition of patient; race = 1 for Asian, race = 2 for Black, race = 3 for white')
        end
        race = repmat(race,108,1);
        % get the gender info of the patient
        if strcmp(K.subID(2),'F')
            gender = 1;
        elseif strcmp(K.subID(2),'M')
            gender = 2;
        else
            error('Please define the gender info of patient; female = 1, male = 2')
        end
        gender = repmat(gender,108,1);
        % get the actual time of the presence of the face in block3
        for i = 1:4:432
            test_time(i) = K.theData(i).flip.StimulusOnsetTime;
        end
        test_time = test_time(1:4:432)';
        % get the actual time of the response time for recall
        for i = 2:4:432
            pa_click_time(i) = K.theData(i).flip.StimulusOnsetTime;
        end
        pa_click_time = pa_click_time(2:4:432)';
        % get the actual time of the response time for certainty
        for i = 3:4:432
            certainty_time(i) = K.theData(i).flip.StimulusOnsetTime;
        end
        certainty_time = certainty_time(3:4:432)';
        % get the actual time of the response time for salience
        for i = 4:4:432
            salience_time(i) = K.theData(i).flip.StimulusOnsetTime;
        end
        salience_time = salience_time(4:4:432)';
        
        StimulusOnsetTime = [test_time,pa_click_time,certainty_time,salience_time];
        % get the response time of recall in this block
        RT = [K.theData(2:4:432).RT]';
        % get the response time of certainty in this block
        pa_RT_certainty = [K.theData(3:4:432).RT]';
        % get the response time of salience in this block
        pa_RT_salience = [K.theData(4:4:432).RT]';
        % get the face info of this block
        for i = 1:4:432
            if strcmp(K.theData(i).conds(1),'A')
                test_race(i) = 1;
            elseif strcmp(K.theData(i).conds(1),'B')
                test_race(i) = 2;
            elseif strcmp(K.theData(i).conds(1),'W')
                test_race(i) = 3;
            end
        end
        test_race = test_race(1:4:432)';
        % get the gender info of this block
        for i = 1:4:432
            if strcmp(K.theData(i).conds(2),'M')
                test_gender(i) = 2;
            elseif strcmp(K.theData(i).conds(2),'F')
                test_gender(i) = 1;
            end
        end
        test_gender = test_gender(1:4:432)';
        % get the certainty and salience score
        certainty = [K.theData(3:4:432).keys]';
        certainty = str2num(certainty);
        if max(certainty) > 9 || min(certainty) < 1
            error('certainty out of range')
        end
        salience = [K.theData(4:4:432).keys]';
        salience = str2num(salience);
        if max(salience) > 9 || min(salience) < 1
            error('salience out of range')
        end
        % get the judgement for patient in each trial,%some control statement
        % need to written in here
        for i = 2:4:432
            if strcmp(K.theData(i).keys,'0') || strcmp(K.theData(i).keys,'j')
                pa_judg(i) = 1;
            elseif strcmp(K.theData(i).keys,'.') || strcmp(K.theData(i).keys,'f')
                pa_judg(i) = 0;
            end
        end
        pa_judg = pa_judg(2:4:432)';
        % get the right answer of whether this face has been presented
        load(globalVar.behavioral_data_server_path)
        ImagesBlock1 = string(seq.active.race);
        ImagesBlock2 = string(seq.memory.active.race);
        for i = 1:size(ImagesBlock2,1)
            if max(contains(ImagesBlock1,ImagesBlock2(i))) == 1
                Presented(i) = 1;
            else
                Presented(i) = 0;
            end
        end
        Presented = Presented';
           isCorrect = zeros(108,1);
        %get the isCorrect   
        for i=1:108
            if pa_judg(i) == Presented(i)
                isCorrect(i) = 1;
            else
                isCorrect(i) = 0;
            end
        end
        trialinfo = table(center, race, gender, test_race, test_gender, StimulusOnsetTime, RT, Presented, pa_judg, isCorrect, certainty...
            , pa_RT_certainty, salience, pa_RT_salience);
       
    end

        for i= 1:size(trialinfo,1)
            if trialinfo.test_race(i) == 1 && trialinfo.test_gender(i) == 1
                trialinfo.condNames{i} = 'asian_female';
            elseif trialinfo.test_race(i) == 1 && trialinfo.test_gender(i) == 2
                trialinfo.condNames{i} = 'asian_male';
            elseif trialinfo.test_race(i) == 2 && trialinfo.test_gender(i) == 1
                trialinfo.condNames{i} = 'black_female';
            elseif trialinfo.test_race(i) == 2 && trialinfo.test_gender(i) == 2
                trialinfo.condNames{i} = 'black_male';
            elseif trialinfo.test_race(i) == 3 && trialinfo.test_gender(i) == 1
                trialinfo.condNames{i} = 'white_female';
            elseif trialinfo.test_race(i) == 3 && trialinfo.test_gender(i) == 2
                trialinfo.condNames{i} = 'white_male';
            end
        end 
        
    save([globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
   end
   %%
   %     the StimulusOnsetTime
   %    for i = 1:length(K.theData)
   %        trialinfo.StimulusOnsetTime(i,1) = K.theData(i).flip.StimulusOnsetTime;
   %        trialinfo.condition(i) ={ K.theData(i).conds}
   %    end
   %
   %    %to get the details of the condition
   %    for i=1:length(K.theData)
   %        temp = extractBefore(trialinfo.condition(i), '_')
   %        if strcmp(temp,'WF')
   %            trialinfo.face_race(i) = {'white'};
   %            trialinfo.face_gender(i) = {'female'};
   %        elseif strcmp(temp,'WM')
   %            trialinfo.face_race(i) = {'white'};
   %            trialinfo.face_gender(i) = {'male'};
   %        elseif strcmp(temp,'AM')
   %            trialinfo.face_race(i) = {'asian'};
   %            trialinfo.face_gender(i) = {'male'};
   %        elseif strcmp(temp,'AF')
   %            trialinfo.face_race(i) = {'asian'};
   %            trialinfo.face_gender(i) = {'female'};
   %        elseif strcmp(temp,'BM')
   %            trialinfo.face_race(i) = {'black'};
   %            trialinfo.face_gender(i) = {'male'};
   %        elseif strcmp(temp,'BF')
   %            trialinfo.face_race(i) = {'asian'};
   %            trialinfo.face_gender(i) = {'female'};
   %        else
   %        end
   %    end
   %
   %
   %
   %    if trialinfo.condition(i)
   %
   %
   %     for i = 2:2:length(K.theData)
   %         if strcmp(K.theData(i).keys,'noanswer')
   %             for a=1:108
   %                 trialinfo.condition(a) = {K.theData(i).conds};
   %                 trialinfo.StimulusOnsetTime(i,1) = K.theData(i).flip.StimulusOnsetTime;
   %             end
   %         end
   
   %%
%    for i = 2:2:216
%        a(i) = K.theData(i).flip.StimulusOnsetTime - K.theData(i-1).flip.StimulusOnsetTime-K.theData(i).RT
%    
%    end
%    a = a(2:2:216)'