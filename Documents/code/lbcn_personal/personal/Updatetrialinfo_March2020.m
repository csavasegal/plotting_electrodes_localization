%%
project_name = 'MMR'

clear trialinfo

DOCID = '1rLFTsiDXyDvckau5epvuUfvfD9LGibWn6p8QJBms2NY'
GID = '282063015'
googlesheet=GetGoogleSpreadsheet(DOCID, GID);

for i = 1:size(googlesheet,1)
    if strcmp(googlesheet.task{i},project_name)
        sbj_name_total(i) = googlesheet.sbj_name(i)
    else
        %sbj_name(i) = 'NaN'
    end
end 
%% Just use this for VTC; modified for the other localizers


%get sbj_name from the trialinfos that Pedro sent
% sbj_name = trialinfos.VTC
% project_name = 'VTCLoc'

block_names = BlockBySubj(sbj_name,project_name)

for i=1:length(block_names)
    bn = block_names{i}
    %load trialinfo
    dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root);
    load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,bn));
    %load[globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
    %load('/Volumes/CSS_backup/data/psychData/S14_66_CZ/S14_66_CZ_03/trialinfo_S14_66_CZ_03.mat')
    load(sprintf('%s/%s/%s/trialinfo_%s.mat',dirs.psych_root,sbj_name,bn,bn))
    
    %load the sodata
    soda_name = dir(fullfile(globalVar.psych_dir, 'sodata*.mat'));
    K = load([globalVar.psych_dir '/' soda_name.name]);
    
    
    %make trialinfo the same as Pedro's trialinfo
    %trialinfo = trialinfos.VTC.(sbj_name);
    
%     if (trialinfo.allonsets(1)==trialinfos.VTC.(sbj_name).allonsets(1))==0
%         warning('warning!');
%     end
%     if (trialinfo.allonsets(1)==temp.trialinfo.allonsets(1))==0
%         warning('warning!');
%     end
    
    for i=1:size(trialinfo,1)
        if strcmp(project_name,'AllCateg')
            trialinfo.isActive(i) = 0;
        else
        end
    end
    
    %changes if passive:
    if trialinfo.isActive(1)==0
        for i = 1:size(trialinfo,1)
            if isnan(trialinfo.oneback(i))
                trialinfo.RT(i) = NaN;
                trialinfo.keys(i) = NaN;
                trialinfo.RT_lock(i) = NaN;
                trialinfo.allstimdur(i) = K.stimdur*1000;
            else
            end
            
            %trialinfo.allstimdur(ntrials) = K.stimdur*1000;
        end
    end
    %if active
    for i = 1:size(trialinfo,1)
        if trialinfo.isActive(1)==1
            if strcmp(trialinfo.keys(i),'n')
                trialinfo.keys{i} = 'noanswer';
            end
            trialinfo.allstimdur(i) = K.stimInf(i).duration;
            
        end
    end
    
    %to create a sheet with information about the stim duration, ITI
    %task_version_table.(sbj_name) = {}
    if trialinfo.isActive(1)==0
        task_version_table.(sbj_name).isActive = trialinfo.isActive(1);
        task_version_table.(sbj_name).stimdur = K.stimdur*1000;
        task_version_table.(sbj_name).ITI = K.ITI*1000;
    end
    
    
    %for active
    if trialinfo.isActive(1)==1
        task_version_table.(sbj_name).isActive = trialinfo.isActive(1);
        task_version_table.(sbj_name).stimdur = unique(trialinfo.allstimdur);
        task_version_table.(sbj_name).ITI = K.ITI_range;
    end
    
    %save trialinfo
    save([globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
    clear trialinfo
    clear K
end
%% Using this for AllCateg & Scrambled & Logo

sbj_name = sbj_name_total{13}
block_names = BlockBySubj(sbj_name,project_name)

for s=1:length(sbj_name_total)
    sbj_name = sbj_name_total{s}
    block_names = BlockBySubj(sbj_name,project_name)
    for x=1:length(block_names)
        bn = block_names{x}
        %load trialinfo
        dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root);
        load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,bn));
        %load[globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        %load('/Volumes/CSS_backup/data/psychData/S14_66_CZ/S14_66_CZ_03/trialinfo_S14_66_CZ_03.mat')
        load(sprintf('%s/%s/%s/trialinfo_%s.mat',dirs.psych_root,sbj_name,bn,bn))
        
        %load the sodata
        soda_name = dir(fullfile(globalVar.psych_dir, 'sodata*.mat'));
        K = load([globalVar.psych_dir '/' soda_name.name]);
        
        for i=1:size(trialinfo,1)
            if strcmp(project_name,'AllCateg') || strcmp(project_name,'Logo')
                trialinfo.isActive(i) = 0;
            elseif  strcmp(project_name,'Scrambled') || strcmp(project_name,'MFA')|| strcmp(project_name,'SevenHeaven')|| strcmp(project_name,'ReadNumWord')
                trialinfo.isActive(i) = 1;
            end
        end
        
        %changes if passive:
        if trialinfo.isActive(1)==0 && strcmp(project_name, 'VTCLoc')
            for i = 1:size(trialinfo,1)
                trialinfo.allstimdur(i) = K.stimdur*1000;
                trialinfo.keys(i) = {'noanswer'};
                trialinfo.RT(i) = NaN;
            end
        end
        
        %changes if active aka for Scrambled
        for i = 1:size(trialinfo,1)
            if trialinfo.isActive(1)==1
%                 if strcmp(trialinfo.keys(i),'n')
%                     trialinfo.keys{i} = 'noanswer';
%                 end
                %trialinfo.allstimdur(i) = K.stimInf(i).duration; %VTCLoc
                trialinfo.allstimdur(i) = K.stimdur
            end
        end
        
        %to create a sheet with information about the stim duration, ITI
        %task_version_table.(sbj_name) = {}
        
        %if passive
        if trialinfo.isActive(1)==0
            task_version_table.(sbj_name).isActive = trialinfo.isActive(1);
            if strcmp(project_name,'Scrambled')
                task_version_table.(sbj_name).stimdur = K.stimdur*1000;
            else
                task_version_table.(sbj_name).stimdur = K.stimdur*1000;
            end
            task_version_table.(sbj_name).ITI = K.ITI*1000;
            task_version_table.(sbj_name).stimlist = unique(K.stimlist);
            task_version_table.(sbj_name).condNames = unique(trialinfo.condNames);
            
        end
        
        %if active
        if trialinfo.isActive(1)==1
            task_version_table.(sbj_name).isActive = trialinfo.isActive(1);
            task_version_table.(sbj_name).stimdur = K.stimdur*1000;
            task_version_table.(sbj_name).ITI = K.ITI*1000;
            if strcmp(project_name, 'SevenHeaven') || strcmp(project_name, 'ReadNumWord')
                task_version_table.(sbj_name).stimlist = unique(K.wlist);
            else
                task_version_table.(sbj_name).stimlist = unique(K.stimlist);
            end
            task_version_table.(sbj_name).condNames= unique(trialinfo.condNames)
            if strcmp(project_name,'Scrambled')
                task_version_table.(sbj_name).condNames_descript = unique(trialinfo.condDescript)
            else
            end
        end
        
        
        %for active
        if trialinfo.isActive(1)==1 && strcmp(project_name, 'VTCLoc')
            task_version_table.(sbj_name).isActive = trialinfo.isActive(1);
            task_version_table.(sbj_name).stimdur = unique(trialinfo.allstimdur);
            task_version_table.(sbj_name).ITI = K.ITI_range;
        end
        
        %save trialinfo
        save([globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        clear trialinfo
        clear K
    end
end


%% SevenHeaven and ReadNumWord, & Scrambled made RT and keys NaN

for s=1:length(sbj_name_total)
    sbj_name = sbj_name_total{s}
    block_names = BlockBySubj(sbj_name,project_name)
    for x=1:length(block_names)
        bn = block_names{x}
        %load trialinfo
        dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root);
        load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,bn));
        %load[globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        %load('/Volumes/CSS_backup/data/psychData/S14_66_CZ/S14_66_CZ_03/trialinfo_S14_66_CZ_03.mat')
        load(sprintf('%s/%s/%s/trialinfo_%s.mat',dirs.psych_root,sbj_name,bn,bn))
        
        %load the task_version_table manually
        ntrials=size(trialinfo,1)
        trialinfo.keys = nan(ntrials,1)
        %trialinfo.RT = nan(ntrials,1)
        %trialinfo.RT_lock = nan(ntrials,1)
        %task_version_table.(sbj_name).trialinfos = K.stimdur*1000;
        
        save([globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        clear trialinfo
        clear K
    end
end 

%% For MMR:
%Need to add changes to trialinfo
%95 JOB looks like 7Heaven not MMR

%redo 22
for s=1:length(sbj_name_total)
    sbj_name = sbj_name_total{s}
    block_names = BlockBySubj(sbj_name,project_name);
    for x=1:length(block_names)
        bn = block_names{x};
        %load trialinfo
        dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root);
        load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,bn));
        %load[globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        %load('/Volumes/CSS_backup/data/psychData/S14_66_CZ/S14_66_CZ_03/trialinfo_S14_66_CZ_03.mat')
        load(sprintf('%s/%s/%s/trialinfo_%s.mat',dirs.psych_root,sbj_name,bn,bn))
        
        %load the sodata
        soda_name = dir(fullfile(globalVar.psych_dir, 'sodata*.mat'));
        K = load([globalVar.psych_dir '/' soda_name.name]); 
        task_version_table.(sbj_name).stimdur = K.stimdur*1000;
        task_version_table.(sbj_name).ITI = K.ITI*1000;
        task_version_table.(sbj_name).stimlist = unique(K.wlist);
        task_version_table.(sbj_name).condNames= unique(trialinfo.condNames)
        task_version_table.(sbj_name).FixTime = K.FixTime
    end
end


%% For tasks that have multiple stimuli per trial
%get the list of sbj_name from above
%need to add changes to the trialinfo here afterwards

%make changes to the task_information_total
for s=1:length(sbj_name_total)
    sbj_name = sbj_name_total{s}
    block_names = BlockBySubj(sbj_name,project_name);
    for x=1:length(block_names)
        bn = block_names{x};
        %load trialinfo
        dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root);
        load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,bn));
        %load[globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        %load('/Volumes/CSS_backup/data/psychData/S14_66_CZ/S14_66_CZ_03/trialinfo_S14_66_CZ_03.mat')
        load(sprintf('%s/%s/%s/trialinfo_%s.mat',dirs.psych_root,sbj_name,bn,bn))
        
        %load the sodata
        soda_name = dir(fullfile(globalVar.psych_dir, 'sodata*.mat'));
        K = load([globalVar.psych_dir '/' soda_name.name]);
        
        if strcmp(project_name, 'Memoria')
            task_version_table.(sbj_name).stimdur = K.stimdur*1000;
            task_version_table.(sbj_name).ITI = K.ITI*1000;
            task_version_table.(sbj_name).indiv_stimdur = K.indiv_stimdur*1000;
            task_version_table.(sbj_name).ISI = K.ISI*1000;
        elseif strcmp(project_name, 'Calculia')
            if trialinfo.isActive(1)==1
                task_version_table.(sbj_name).isActive=1;
                task_version_table.(sbj_name).stimdur = K.stimdur*1000;
                task_version_table.(sbj_name).stimulusTime = K.stimulusTime;
                task_version_table.(sbj_name).ISI = K.ISI;
                %will be stimdur_pass in the passive ones
                task_version_table.(sbj_name).ITI = K.ITI;
                task_version_table.(sbj_name).expectedISI = K.expectedISI;
                task_version_table.(sbj_name).delayedISI = K.delayedISI;
                task_version_table.(sbj_name).stimlist = unique(K.wlist);
                task_version_table.(sbj_name).condNames= unique(trialinfo.condNames)
                task_version_table.(sbj_name).version = trialinfo.version(1)
            elseif trialinfo.isActive(1)==0
                task_version_table.(sbj_name).isActive_pass=0;
                task_version_table.(sbj_name).stimdur_pass = K.stimdur_pass*1000;
                task_version_table.(sbj_name).stimulusTime_pass = K.stimulusTime;
                task_version_table.(sbj_name).ISI_pass = K.ISI;
                %will be stimdur_pass in the passive ones
                task_version_table.(sbj_name).ITI_pass = K.ITI;
                task_version_table.(sbj_name).expectedISI_pass = K.expectedISI;
                task_version_table.(sbj_name).delayedISI_pass = K.delayedISI;
                task_version_table.(sbj_name).stimlist_pass = unique(K.wlist);
                task_version_table.(sbj_name).condNames_pass= unique(trialinfo.condNames)
                task_version_table.(sbj_name).version = trialinfo.version(1)
            else
                error('error with active trials!- check!')
            end
            
%             task_version_table.(sbj_name).stimulusTime = K.stimulusTime;
%             task_version_table.(sbj_name).ISI = K.ISI;
%             %will be stimdur_pass in the passive ones
%             task_version_table.(sbj_name).ITI = K.ITI;
%             task_version_table.(sbj_name).expectedISI = K.expectedISI;
%             task_version_table.(sbj_name).delayedISI = K.delayedISI;
        end
        
        if ~strcmp(project_name,'Calculia')
            if strcmp(project_name, 'Memoria')
                task_version_table.(sbj_name).stimlist = unique(K.wlist);
            else
                task_version_table.(sbj_name).stimlist = unique(K.stimlist);
            end
            task_version_table.(sbj_name).condNames= unique(trialinfo.condNames)
        else
        end
    end
end

%Calculia
%for making changes to the trialinfo 
% Allosnets = [ 1 2 3 4 5]
% Allstimdur = [1 2 3 4 5]
% Allisi = 0 1 2 3
% if passive, then it is stimdur_pass for the 5th one; if it is active then
% it is RT

%for Calculia
for s=18:length(sbj_name_total)
    sbj_name = sbj_name_total{s}
    block_names = BlockBySubj(sbj_name,project_name);
    for x=1:length(block_names)
        bn = block_names{x};
        %load trialinfo
        dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root);
        load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,bn));
        %load[globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        %load('/Volumes/CSS_backup/data/psychData/S14_66_CZ/S14_66_CZ_03/trialinfo_S14_66_CZ_03.mat')
        load(sprintf('%s/%s/%s/trialinfo_%s.mat',dirs.psych_root,sbj_name,bn,bn))
        
        %load the sodata
        soda_name = dir(fullfile(globalVar.psych_dir, 'sodata*.mat'));
        K = load([globalVar.psych_dir '/' soda_name.name]);
        
        %allisi
        ntrials = size(trialinfo,1);
        for i = 1:ntrials
            for ii = 1:4
                if trialinfo.isDelayed(i)==0
                    allisi(i,ii)=K.ISI/1000
                elseif trialinfo.isDelayed(i)==1
                    allisi(i,ii)=K.delayedISI/1000
                else
                end 
            end
        end
        for i = 1:ntrials
            for ii = 1:4
                allstimdur(i,ii)=K.stimulusTime/1000;
            end
            if trialinfo.isActive(i)==0
                for ii=5
                    allstimdur(i,ii)=K.stimdur_pass;
                end
            elseif trialinfo.isActive(i)==1
                for ii=5
                    allstimdur(i,ii)=trialinfo.RT(i);
                end
            else
            end
        end
        trialinfo.allisi = allisi;
        trialinfo.allstimdur = allstimdur;
        
        save([globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        clear trialinfo
        clear allisi
        clear allstimdur
        clear K
    end
end 

%for Memoria
for s=1:length(sbj_name_total)
    sbj_name = sbj_name_total{s}
    block_names = BlockBySubj(sbj_name,project_name);
    for x=1:length(block_names)
        bn = block_names{x};
        %load trialinfo
        dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root);
        load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,bn));
        %load[globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        %load('/Volumes/CSS_backup/data/psychData/S14_66_CZ/S14_66_CZ_03/trialinfo_S14_66_CZ_03.mat')
        load(sprintf('%s/%s/%s/trialinfo_%s.mat',dirs.psych_root,sbj_name,bn,bn))
        
        %load the sodata
        soda_name = dir(fullfile(globalVar.psych_dir, 'sodata*.mat'));
        K = load([globalVar.psych_dir '/' soda_name.name]);
        
        %allisi
        %ISI-indiv_stimdur
        %need to make exceptions based on the number of stim
        ntrials = size(trialinfo,1);
        for i = 1:ntrials
            if trialinfo.nstim(i)==5
                for ii = 1:4
                    allisi(i,ii)=K.ISI-K.indiv_stimdur
                end
            elseif trialinfo.nstim(i)==4
                for ii = 1:3
                    allisi(i,ii)=K.ISI-K.indiv_stimdur
                end
                for ii= 4
                    allisi(i,ii)=NaN
                end 
            end
            for i = 1:ntrials
                if trialinfo.nstim(i)==5
                    for ii = 1:4
                        allstimdur(i,ii)=K.indiv_stimdur;
                    end
                    for ii=5
                        allstimdur(i,ii)=trialinfo.RT(i);
                    end
                elseif trialinfo.nstim(i)==4
                    for ii = 1:3
                        allstimdur(i,ii)=K.indiv_stimdur;
                    end
                    for ii=4
                        allstimdur(i,ii)=trialinfo.RT(i);
                    end
                    for ii=5
                       allstimdur(i,ii)=NaN
                    end 
                else
                end
            end
        end 
            
        trialinfo.allisi = allisi;
        trialinfo.allstimdur = allstimdur;
        
        save([globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        clear trialinfo
        clear allisi
        clear allstimdur
        clear K
    end
end 

%for Context
sbj_name = sbj_name_total{s}
block_names = BlockBySubj(sbj_name,project_name)

for s=1:length(sbj_name_total)
    sbj_name = sbj_name_total{s};
    block_names = BlockBySubj(sbj_name,project_name)
    
    for x=1:length(block_names)
        bn = block_names{x}
        %load trialinfo
        dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root);
        %UpdateGlobalVarDirs(sbj_name, project_name, block_names, dirs)
        load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,bn));
        %load[globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        %load('/Volumes/CSS_backup/data/psychData/S14_66_CZ/S14_66_CZ_03/trialinfo_S14_66_CZ_03.mat')
        load(sprintf('%s/%s/%s/trialinfo_%s.mat',dirs.psych_root,sbj_name,bn,bn))
        
        %load the sodata
        if strcmp(sbj_name,'S13_53_KS2')
            soda_name = dir(fullfile(globalVar.psych_dir, 'K*.mat'));
        elseif strcmp(sbj_name,'S13_57_TVD')
            soda_name = dir(fullfile(globalVar.psych_dir, 'TVD*.mat'));
        else
            soda_name = dir(fullfile(globalVar.psych_dir, '7*.mat'));
        end
        K = load([globalVar.psych_dir '/' soda_name.name]);
        
        for i = 1:size(trialinfo,1)
            task_version_table.(sbj_name).stimdur = K.STIM;
            task_version_table.(sbj_name).ITI = K.ITI;
            task_version_table.(sbj_name).ISI = K.ISI;
            task_version_table.(sbj_name).condNames= unique(trialinfo.condNames)
            %task_version_table.(sbj_name).T_resp = K.T_resp
            for ii=1:5
                allstimdur(i,ii)=K.STIM;
            end
            if strcmp(sbj_name,'S12_45_LR')
                task_version_table.(sbj_name).ISI_last = NaN;
                for ii = 1:5
                    allisi(i,ii)=K.ISI;
                end
            elseif strcmp(sbj_name,'S13_52_FVV') && strcmp(bn,'FVV_16')
                task_version_table.(sbj_name).ISI_last = NaN;
                for ii = 1:5
                    allisi(i,ii)=K.ISI;
                end
            else
                task_version_table.(sbj_name).ISI_last = NaN
                task_version_table.(sbj_name).ISI_last = unique(K.ISI_last)
                for ii = 1:4
                    allisi(i,ii)=K.ISI;
                end
                for ii = 5
                    allisi(i,ii)=K.ISI_last(i)
                end
            end
        end
        trialinfo.allisi = allisi;
        trialinfo.allstimdur = allstimdur;
        clear allisi
        clear allstimdur
        save([globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        clear trialinfo
        clear K
    end
end


%% File copying
for i=1:length(sbj_name_total)
    sbj_name = sbj_name_total{i};
    mkdir(sprintf('/Users/clara/Box/data_inspection/trialinfo_update/Context_trialinfo_update/%s',sbj_name))
end

for i=1:length(sbj_name_total)
    sbj_name = sbj_name_total{i};
    block_names = BlockBySubj(sbj_name,project_name);
    for bn = 1:length(block_names)
        bn = block_names{bn}
        mkdir(sprintf('/Users/clara/Box/data_inspection/trialinfo_update/Context_trialinfo_update/%s/%s/',sbj_name,bn))
        %mkdir(sprintf('/Users/clara/Documents/MathProject/MFA/%s/%s/',sbj_name_temp,bn))
    end 
end

for i=1:length(sbj_name_total)
    sbj_name = sbj_name_total{i};
    block_names = BlockBySubj(sbj_name,project_name);
    for bn = 1:length(block_names)
        bn = block_names{bn};
        psource = sprintf('/Volumes/CSS_backup/data/psychData/%s/%s/',sbj_name,bn);
        pdest   = sprintf('/Users/clara/Box/data_inspection/trialinfo_update/Context_trialinfo_update/%s/%s/',sbj_name,bn);
        %pdest = sprintf('/Users/clara/Documents/MathProject/MFA/%s/%s/',sbj_name,bn);
        %psource = sprintf('/Users/clara/Downloads/VTC_trialinfo_update/%s/%s',sbj_name_temp,bn)
        %pdest   = sprintf('/Volumes/CSS_backup/data/psychData/%s/%s/',sbj_name_temp,bn);
        pattern = 'trialinfo*';
        sourceDir = dir(fullfile(psource, pattern));
        sourceDir([sourceDir.isdir]) = [];  % Files only
        for k = 1:numel(sourceDir)
            sourceFile = fullfile(psource, sourceDir(k).name);
            destFile   = fullfile(pdest, sourceDir(k).name);  % Or another name?
            copyfile(sourceFile, destFile);
        end
    end
end

%% for fixing things in the VTC

for i=1:length(sbj_name)
    sbj_name_temp = sbj_name{i};
    block_names = BlockBySubj(sbj_name_temp,project_name);
    for bn = 1:length(block_names)
        bn = block_names{bn}
        dirs = InitializeDirs(project_name, sbj_name_temp, comp_root, server_root, code_root);
        load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name_temp,project_name,sbj_name_temp,bn));
        %load[globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        %load('/Volumes/CSS_backup/data/psychData/S14_66_CZ/S14_66_CZ_03/trialinfo_S14_66_CZ_03.mat')
        load(sprintf('%s/%s/%s/trialinfo_%s.mat',dirs.psych_root,sbj_name_temp,bn,bn))
        
        
        
        for i=1:size(trialinfo,1)
            if strcmp(trialinfo.condNames{i}, 'numbers')
                temp = extractBefore(trialinfo.stimlist(i), '.png');
                if contains(temp, ' copy')
                    temp = extractBefore(trialinfo.stimlist(i), ' copy');
                else
                end
                length_temp = strlength(temp);
                stim_temp = extractBefore(temp, length_temp-1);
                num_temp = string(regexp(temp, '\d+', 'match'));
                num = str2num(num_temp);
                if num==1031
                    trialinfo.stim{i} = '179';
                elseif num==1032
                    trialinfo.stim{i} = '258';
                elseif num==1033
                    trialinfo.stim{i} = '339';
                elseif num==1034
                    trialinfo.stim{i} = '362';
                elseif num==1035
                    trialinfo.stim{i} = '406';
                elseif num==1036
                    trialinfo.stim{i} = '504';
                elseif num==1037
                    trialinfo.stim{i} = '587';
                elseif num==1038
                    trialinfo.stim{i} = '610';
                elseif num==1039
                    trialinfo.stim{i} = '841';
                elseif num==1040
                    trialinfo.stim{i} = '972';
                end
            else
                warning('no change!')
            end
        end
        save([globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
    end
end

%% adding the stim type to the stim type
%want the stimlist to compare numbers
%want the condNames_long


for i=1:length(sbj_name)
    sbj_name_temp = sbj_name{i};
    block_names = BlockBySubj(sbj_name_temp,project_name);
    %block_names = BlockBySubj(sbj_name,project_name)
    for i=1:length(block_names)
        bn = block_names{1}
        %load trialinfo
        dirs = InitializeDirs(project_name, sbj_name_temp, comp_root, server_root, code_root);
        load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name_temp,project_name,sbj_name_temp,bn));
        %load[globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        %load('/Volumes/CSS_backup/data/psychData/S14_66_CZ/S14_66_CZ_03/trialinfo_S14_66_CZ_03.mat')
        load(sprintf('%s/%s/%s/trialinfo_%s.mat',dirs.psych_root,sbj_name_temp,bn,bn))
        
        for x=1:size(trialinfo,1)
            temp = extractBefore(trialinfo.stimlist(x), '.png');
            if contains(temp, ' copy')
                temp = extractBefore(trialinfo.stimlist(x), ' copy');
                stimlisttemp(x) = temp;
            else
                stimlisttemp(x) = temp;
            end
        end
        stimlisttemp = stimlisttemp';
        
        task_version_table.(sbj_name_temp).stimlist = unique(stimlisttemp);
        task_version_table.(sbj_name_temp).condNames_long = unique(trialinfo.condNames_long);
        
        clear stimlisttemp
        clear temp
    end
end


%%  comparing across task versions 
% Creating the task information table
task_information_total = table;
for i=1:length(sbj_name_total)
    sbj_name_temp = sbj_name_total{i};
    
    % for i=1:length(fieldnames(task_version_table))
    %     sbj_name_temp = A{i};
    task_information_total.sbj_name(i) = {sbj_name_temp};
    if ~strcmp(project_name,'Memoria') && ~strcmp(project_name,'MMR') && ~strcmp(project_name,'UCLA')&& ~strcmp(project_name,'Context')
        if task_version_table.(sbj_name_temp).isActive==1
            task_information_total.isActive(i)=1
        else
            task_information_total.isActive(i)=0
        end
    end
    task_information_total.stimdur(i) = {task_version_table.(sbj_name_temp).stimdur}
    task_information_total.ITI(i) = {task_version_table.(sbj_name_temp).ITI}
    task_information_total.condNames(i) = {task_version_table.(sbj_name_temp).condNames}
    %task_information_total.stimlist(i) = {task_version_table.(sbj_name_temp).stimlist}
    if strcmp(project_name,'Memoria')
        task_information_total.indiv_stimdur(i) = {task_version_table.(sbj_name_temp).indiv_stimdur}
        task_information_total.ISI(i) = {task_version_table.(sbj_name_temp).ISI}
    end
end
sum(task_information_total.isActive) %25 total sum active electrodes
unique(task_information_total.stimdur) %3 different stim dur & ITI
%passive version has a stim dur of 400

%want to compare numbers
%for task_information_total.stimlist_one(i) = task_version_table.(sbj_name_temp).stimlist(1)

%% for Calculia- task information table
task_information_total = table;
for i=1:length(sbj_name_total)
    sbj_name_temp = sbj_name_total{i};
    task_information_total.sbj_name(i) = {sbj_name_temp};
    
    if isfield(task_version_table.(sbj_name_temp),'isActive_pass')
        task_information_total.isActive_pass(i) = {task_version_table.(sbj_name_temp).isActive_pass}
        task_information_total.stimdur_pass(i) = {task_version_table.(sbj_name_temp).stimdur_pass}
        task_information_total.stimulusTime_pass(i) = {task_version_table.(sbj_name_temp).stimulusTime_pass}
        task_information_total.ISI_pass(i) = {task_version_table.(sbj_name_temp).ISI_pass}
        task_information_total.ITI_pass(i) = {task_version_table.(sbj_name_temp).ITI_pass}
        task_information_total.expectedISI_pass(i) = {task_version_table.(sbj_name_temp).expectedISI_pass}
        task_information_total.delayedISI_pass(i) = {task_version_table.(sbj_name_temp).delayedISI_pass}
        task_information_total.stimlist_pass(i) = {task_version_table.(sbj_name_temp).stimlist_pass}
        task_information_total.condNames_pass(i) = {task_version_table.(sbj_name_temp).condNames_pass}
    else
    end
    
    if isfield(task_version_table.(sbj_name_temp),'isActive')
        task_information_total.isActive(i) = {task_version_table.(sbj_name_temp).isActive}
        task_information_total.stimdur(i) = {task_version_table.(sbj_name_temp).stimdur}
        task_information_total.stimulusTime(i) = {task_version_table.(sbj_name_temp).stimulusTime}
        task_information_total.ISI(i) = {task_version_table.(sbj_name_temp).ISI}
        task_information_total.ITI(i) = {task_version_table.(sbj_name_temp).ITI}
        task_information_total.expectedISI(i) = {task_version_table.(sbj_name_temp).expectedISI}
        task_information_total.delayedISI(i) = {task_version_table.(sbj_name_temp).delayedISI}
        task_information_total.stimlist(i) = {task_version_table.(sbj_name_temp).stimlist}
        task_information_total.condNames(i) = {task_version_table.(sbj_name_temp).condNames}
    else
    end
end



task_information_total.(i) = {task_version_table.(sbj_name_temp).isActive}


if ~strcmp(project_name,'Memoria')
    if task_version_table.(sbj_name_temp).isActive==1
        task_information_total.isActive(i)=1
    else
        task_information_total.isActive(i)=0
    end
end
task_information_total.stimdur(i) = {task_version_table.(sbj_name_temp).stimdur}
task_information_total.ITI(i) = {task_version_table.(sbj_name_temp).ITI}
task_information_total.condNames(i) = {task_version_table.(sbj_name_temp).condNames}
task_information_total.stimlist(i) = {task_version_table.(sbj_name_temp).stimlist}
if strcmp(project_name,'Memoria')
    task_information_total.indiv_stimdur(i) = {task_version_table.(sbj_name_temp).indiv_stimdur}
    task_information_total.ISI(i) = {task_version_table.(sbj_name_temp).ISI}
end


%% new script for getting the info about behavior for the passive patients
% creating the passivebehav for all of the subjects and then below
% calculating the VTC; if for the part with the ###, there was a ### and no
% key was pressed (and RT is 0) then they missed it 


passivebehav = struct
for i=1:length(sbj_name)
    sbj_name_temp = sbj_name{i};
    block_names = BlockBySubj(sbj_name_temp,project_name);
    %block_names = BlockBySubj(sbj_name,project_name)
    for x=1:length(block_names)
        sbj_name_temp
        bn = block_names{x}
        %load trialinfo
        dirs = InitializeDirs(project_name, sbj_name_temp, comp_root, server_root, code_root);
        load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name_temp,project_name,sbj_name_temp,bn));
        %load[globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        %load('/Volumes/CSS_backup/data/psychData/S14_66_CZ/S14_66_CZ_03/trialinfo_S14_66_CZ_03.mat')
        load(sprintf('%s/%s/%s/trialinfo_%s.mat',dirs.psych_root,sbj_name_temp,bn,bn))
        
        behavinfo = table
        if trialinfo.isActive(1)==0
            soda_name = dir(fullfile(globalVar.psych_dir, 'sodata*.mat'));
            K = load([globalVar.psych_dir '/' soda_name.name]);
            %function here
            for ii=1:length(K.theData)
                if ~isempty(K.theData(ii).red.flip) %this should exist only on the red trials
                    behavinfo.isRed(ii) = 1;
                    behavinfo.StimulusOnsetTime(ii) = K.theData(ii).red.flip.StimulusOnsetTime;
                    %if size(K.theData(ii).red.keys,2)>1
                    if isstruct(K.theData(ii).red.keys)
                        temp_key = cell2mat(K.theData(ii).red.keys(1));
                    elseif iscell(K.theData(ii).red.keys)
                        temp_key = cell2mat(K.theData(ii).red.keys(1));
                    else
                        temp_key = num2str(K.theData(ii).red.keys);
                    end
                    switch temp_key
                        case 'DownArrow'
                            K.theData(ii).red.keys='2';
                        case 'End'
                            K.theData(ii).red.keys='1';
                        case 'noanswer'
                            K.theData(ii).red.keys='NaN';
                        case '2@'
                            K.theData(ii).red.keys='2';
                        case '1!'
                            K.theData(ii).red.keys='1';
                        case 'ENTER'
                            K.theData(ii).red.keys='1';
                        case '1'
                            K.theData(ii).red.keys='1';
                    end
                   % behavinfo.keys(ii) = str2num(K.theData(ii).red.keys);
                    % behavinfo.keys(ii) = K.theData(ii).red.keys
                    behavinfo.keys(ii) = str2double(K.theData(ii).red.keys);
                    behavinfo.RT(ii) = K.theData(ii).red.RT(1);
                else
                    behavinfo.isRed(ii) = 0;
                    behavinfo.StimulusOnsetTime(ii) = NaN;
                    behavinfo.keys(ii) = NaN;
                    behavinfo.RT(ii) = NaN;
                end
            end         
            save([globalVar.psych_dir '/behavinfo_', bn '.mat'], 'behavinfo')
            if trialinfo.isActive(1)==0
                passivebehav.(sbj_name_temp) = behavinfo;
            else
            end
        else
            warning('not making a change for this subject!')
        end
%         if trialinfo.isActive(1)==0
%             passivebehav.(sbj_name_temp).behavinfo;
%         else
%         end 
        %save out responses
        clear behavinfo
        %compile the responses
    end
end

%calculating the performance here
fields = fieldnames(passivebehav)
fields(end) = [] %removing the total at the end
passivebehav.total=table
for b=1:length(fields)
    behav = passivebehav.(fields{b});
    for c=1:size(behav,1)
        if behav.isRed(c)==1 && ~isnan(behav.keys(c))
            passivebehav.(fields{b}).isCorrect(c)=1
        elseif behav.isRed(c)==1 && isnan(behav.keys(c))
            passivebehav.(fields{b}).isCorrect(c)=0
        elseif behav.isRed(c)==0
            passivebehav.(fields{b}).isCorrect(c)=NaN
        else
        end 
    end 
    passivebehav.total.(fields{b}) = ((nansum(passivebehav.(fields{b}).isCorrect))/(nansum(passivebehav.(fields{b}).isRed)))
end 

%% to add the trialinfos together
for s=1:length(sbj_name_total)
    clear trialinfo_all
    trialinfo_all = []
    sbj_name = sbj_name_total{s}
    block_names = BlockBySubj(sbj_name,project_name)
    for x=1:length(block_names)
        bn = block_names{x}
        %load trialinfo
        dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root);
        load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,bn));
        %load[globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
        %load('/Volumes/CSS_backup/data/psychData/S14_66_CZ/S14_66_CZ_03/trialinfo_S14_66_CZ_03.mat')
        load(sprintf('%s/%s/%s/trialinfo_%s.mat',dirs.psych_root,sbj_name,bn,bn))
        
        %load the task_version_table manually
        trialinfo_all = [trialinfo_all; trialinfo]
    end
    task_version_table.(sbj_name).trialinfos = trialinfo_all
end 
 