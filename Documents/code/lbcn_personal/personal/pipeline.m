%% Branch 1. basic config - PEDRO
AddPaths('Pedro_iMAC')

parpool(16) % initialize number of cores

%% Initialize Directories
project_name = 'Calculia_production';
project_name = 'MMR';
project_name = 'Memoria';
project_name = 'MFA';
project_name = '7Heaven';
project_name = 'Scrambled';
project_name = 'UCLA';
project_name = 'Calculia';
project_name = 'Calculia_China';
project_name = 'Number_comparison';

%% Create folders
[DOCID,GID] = getGoogleSheetInfo(project_name);
googleSheet = GetGoogleSpreadsheet(DOCID, GID);
sbj_number = 1;
sbj_name = googleSheet.subject_name{sbj_number};
% sbj_name = 'S18_124';
%sbj_name = 'S14_69b_RT';
%sbj_name = 'S14_64_SP';
%sbj_name = 'S13_57_TVD';
% sbj_name = 'S11_29_RB';
% sbj_name = 'S12_42_NC';
% sbj_name = 'S13_55_JJC';
% sbj_name = 'S18_126';
% sbj_name = 'G18_19';
% sbj_name = 'S17_116';

% Center
% center = 'China'; or Stanford 
% center = 'Stanford'; or Stanford 

center = googleSheet.center{sbj_number}

%% Get block names
block_names = BlockBySubj(sbj_name,project_name);
% Manually edit this function to include the name of the blocks:

% Make sure your are connected to CISCO and logged in the server
dirs = InitializeDirs('Pedro_iMAC', project_name, sbj_name);


%% Get iEEG and Pdio sampling rate and data format
[fs_iEEG, fs_Pdio, data_format] = GetFSdataFormat(sbj_name, center);

%% Create subject folders
CreateFolders(sbj_name, project_name, block_names, center, dirs, data_format) 
%%% IMPROVE uigetfile to go directly to subject folder %%%

% this creates the fist instance of globalVar which is going to be
% updated at each step of the preprocessing accordingly
% At this stage, paste the EDF or TDT files into the originalData folder
% and the behavioral files into the psychData
% (unless if using CopyFilesServer, which is still under development)

%% Get marked channels and demographics
[refChan, badChan, epiChan, emptyChan] = GetMarkedChans(sbj_name);
ref_chan = [];
epi_chan = [];
empty_chan = []; % INCLUDE THAT in SaveDataNihonKohden SaveDataDecimate


%% Copy the iEEG and behavioral files from server to local folders
% Login to the server first?
% Should we rename the channels at this stage to match the new naming?
% This would require a table with chan names retrieved from the PPT
parfor i = 1:length(block_names)
    CopyFilesServer(sbj_name,project_name,block_names{i},data_format,dirs)
end
% In the case of number comparison, one has also to copy the stim lists


%% Branch 2 - data conversion - PEDRO
if strcmp(data_format, 'edf')
    SaveDataNihonKohden(sbj_name, project_name, block_names, dirs, ref_chan, epi_chan, empty_chan) %
    % MAYBE NOT CHANGE DC CHANNEL LABELS. No need to call them PDIO? 
elseif strcmp(data_format, 'TDT')
    SaveDataDecimate(sbj_name, project_name, block_names, fs_iEEG, fs_Pdio, dirs, ref_chan, epi_chan, empty_chan) %% DZa 3051.76
else
    error('Data format has to be either edf or TDT format')
end

%% Convert berhavioral data to trialinfo
switch project_name
    case 'MMR'
%         OrganizeTrialInfoMMR(sbj_name, project_name, block_names, dirs) %%% FIX TIMING OF REST AND CHECK ACTUAL TIMING WITH PHOTODIODE!!! %%%
        OrganizeTrialInfoMMR_rest(sbj_name, project_name, block_names, dirs) %%% FIX ISSUE WITH TABLE SIZE, weird, works when separate, loop clear variable issue
    case 'Memoria'
        OrganizeTrialInfoMemoria(sbj_name, project_name, block_names, dirs)
    case 'UCLA'
        OrganizeTrialInfoUCLA(sbj_name, project_name, block_names, dirs) % FIX 1 trial missing from K.conds?
    case 'Calculia_China'
        OrganizeTrialInfoCalculiaChina(sbj_name, project_name, block_names, dirs) % FIX 1 trial missing from K.conds?
    case 'Calculia_production'
        OrganizeTrialInfoCalculia_production(sbj_name, project_name, block_names, dirs) % FIX 1 trial missing from K.conds?
    case 'Number_comparison'
        OrganizeTrialInfoNumber_comparison(sbj_name, project_name, block_names, dirs) % FIX 1 trial missing from K.conds?        
end


segment_audio_mic(sbj_name,project_name, dirs, block_names{1}) 


% ADD segment_audio_mic

%Plug into OrganizeTrialInfoCalculiaProduction
%OrganizeTrialInfoNumberConcatActive
%OrganizeTrialInfoCalculiaEBS
% %% Segment audio from mic
% % adapt: segment_audio_mic
% switch project_name
%     case 'Calculia_EBS'
%     case 'Calculia_production'
%         load(sprintf('%s/%s_%s_slist.mat',globalVar.psych_dir,sbj_name,bn))
%         K.slist = slist;
% end
% %%%%%%%%%%%%%%%%%%%%%%%

%% Branch 3 - event identifier
if strcmp(project_name, 'Number_comparison')
    event_numcomparison_current(sbj_name, project_name, block_names, dirs, 9) %% MERGE THIS
else
    EventIdentifier(sbj_name, project_name, block_names, dirs, 2, 0) % new ones, photo = 1; old ones, photo = 2; china, photo = varies, depends on the clinician, normally 9.
end
% Fix it for UCLA
% subject 'S11_29_RB' exception = 1 for block 2 


%% Branch 4 - bad channel rejection
BadChanReject(sbj_name, project_name, block_names, dirs)
% 1. Continuous data
%      Step 0. epileptic channels based on clinical evaluation from table_.xls
%      Step 1. based on the raw power
%      Step 2. based on the spikes in the raw signal
%      Step 3. based on the power spectrum deviation
%      Step 4. Bad channel detection based on HFOs

% Creates the first instance of data structure inside car() function
% TODO: Create a diagnostic panel unifying all the figures

%% Branch 5 - Time-frequency analyses
% Load elecs info
load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,block_names{1}),'globalVar');
elecs = setdiff(1:globalVar.nchan,globalVar.refChan);

for i = 1:length(block_names)
    parfor ei = 1:length(elecs)
        WaveletFilterAll(sbj_name, project_name, block_names{i}, dirs, elecs(ei), 'HFB', [], [], [], []) % only for HFB
        WaveletFilterAll(sbj_name, project_name, block_names{i}, dirs, elecs(ei), 'Spec', [], [], true, []) % across frequencies of interest
    end
end

%% Branch 6 - Epoching, identification of bad epochs and baseline correction
blc_params.run = true; % or false
blc_params.locktype = 'stim';
blc_params.win = [-.2 0];
tmin = -.2;
tmax = 5;

for i = 1:length(block_names)
    parfor ei = 1:length(elecs)
        EpochDataAll(sbj_name, project_name, block_names{i}, dirs,elecs(ei),'stim', tmin, tmax, 'HFB', [],[], blc_params)
        EpochDataAll(sbj_name, project_name, block_names{i}, dirs,elecs(ei),'stim', tmin, tmax, 'Spec', [],[], blc_params)
    end
end


for i = 1:length(block_names)
    parfor ei = 1:length(elecs)
        EpochDataAll(sbj_name, project_name, block_names{i}, dirs, elecs(ei),'resp', -tmax, 1, 'HFB', [],[], blc_params)
%         EpochDataAll(sbj_name, project_name, block_names{i}, dirs, elecs(ei),'resp', tmax, 1, 'Spec', [],[], blc_params)
    end
end
% Bad epochs identification
%      Step 1. based on the raw signal
%      Step 2. based on the spikes in the raw signal
%      Step 3. based on the spikes in the HFB signal or other freq bands


%% DONE PREPROCESSING. 
% Eventually replace globalVar to update dirs in case of working from an
% with an external hard drive
%UpdateGlobalVarDirs(sbj_name, project_name, block_name, dirs)

%% Branch 7 - Plotting
load('cdcol.mat')
x_lim = [-.2 tmax];
col = [ cdcol.carmine;
   cdcol.ultramarine;
    cdcol.grassgreen;
    cdcol.lilac;
    cdcol.yellow;
    cdcol.turquoiseblue];

col = [cdcol.grassgreen;
    cdcol.lilac;
    cdcol.yellow;
    cdcol.turquoiseblue;
    cdcol.black;
    cdcol.ultramarine;
    cdcol.cobaltblue;
    cdcol.carmine];

PlotTrialAvgAll(sbj_name,project_name,block_names,dirs,[],'HFB','stim','conds_addsub',[],[],'trials',[],x_lim)
PlotTrialAvgAll(sbj_name,project_name,block_names,dirs,[],'HFB','resp','conds_addsub',[],[],'none',[],x_lim)
PlotTrialAvgAll(sbj_name,project_name,block_names,dirs,[],'HFB','stim','conds_math_memory',[],[],'trials',[],x_lim)


baPlotTrialAvgAll(sbj_name,project_name,block_names,dirs,[],'HFB','stim','condNames',[],col,'trials',[],x_lim)

x_lim = [-tmax 1];
PlotTrialAvgAll(sbj_name,project_name,block_names,dirs,[],'HFB','stim','condNames',[],col,'trials',[],x_lim)

col = cool(15)
PlotTrialAvgAll(sbj_name,project_name,block_names,dirs,[],'HFB','stim','Operand2',[],col,'trials',[],x_lim)
PlotTrialAvgAll(sbj_name,project_name,block_names,dirs,[],'HFB','stim','condNames',[],col,'trials',[],x_lim)


% Number comparison
% load a given trialinfo
load([dirs.result_root,'/',project_name,'/',sbj_name,'/',block_names{1},'/trialinfo_',block_names{1},'.mat'])
conds_dist = unique(trialinfo.conds_num_lum_digit_dot_distance)
conds_number_digit = conds_dist(contains(conds_dist, 'number_digit'));
conds_number_dot = conds_dist(contains(conds_dist, 'number_dot'));
conds_brightness_dot = conds_dist(contains(conds_dist, 'brightness_dot'));
conds_brightness_digit= conds_dist(contains(conds_dist, 'brightness_digit'));


col = gray(4)
col = col*0.85

PlotTrialAvgAll(sbj_name,project_name,block_names,dirs,[],'HFB','stim','conds_num_lum_digit_dot_distance',conds_number_digit,col,'trials',[],x_lim)

% TODO: 
% Allow conds to be any kind of class, logical, str, cell, double, etc.
% Input baseline correction flag to have the option.
% Include the lines option

PlotERSPAll(sbj_name,project_name,block_names,dirs,[],'stim','condNames',[],'trials',[])
PlotERSPAll(sbj_name,project_name,block_names,dirs,[],'stim','conds_calc',[],'trials',[])
PlotERSPAll(sbj_name,project_name,block_names,dirs,[],'stim','conds_math_memory',[],'trials',[])

% TODO: Fix cbrewer 2


%% Branch 8 - integrate brain and electrodes location MNI and native and other info
% Load and convert Freesurfer to Matlab
fsDir_local = '/Applications/freesurfer/subjects/fsaverage';
cortex = getcort(dirs);
coords = importCoordsFreesurfer(dirs);
elect_names = importElectNames(dirs);
V = importVolumes(dirs);

% Convert electrode coordinates from native to MNI space
[MNI_coords, elecNames, isLeft, avgVids, subVids] = sub2AvgBrainCustom([],dirs, fsDir_local);

% Plot brain and coordinates
% transform coords
% coords(:,1) = coords(:,1) + 5;
% coords(:,2) = coords(:,2) + 5;
% coords(:,3) = coords(:,3) - 5;

figureDim = [0 0 1 .4];
figure('units', 'normalized', 'outerposition', figureDim)

views = [1 2 4];
hemisphere = 'right';

% Plot electrodes as dots
for i = 1:length(views)
    subplot(1,length(views),i)
    ctmr_gauss_plot(cortex.(hemisphere),[0 0 0], 0, hemisphere(1), views(i))
    f1 = plot3(coords(:,1),coords(:,2),coords(:,3), '.', 'Color', 'b', 'MarkerSize', 40);
    alpha(0.7)

%     if i > 2
%         f1.Parent.OuterPosition(3) = f1.Parent.OuterPosition(3)/2;
%     else
%     end
end
light('Position',[1 0 0])


% Plot electrodes as text
views = [1 4];

for v = 1:length(views)
    subplot(1,length(views),v)
    ctmr_gauss_plot(cortex.(hemisphere),[0 0 0], 0, hemisphere(1), views(v))
    for i = 1:length(elecs)
        hold on
        text(coords(i,1),coords(i,2),coords(i,3), num2str(elecs(i)), 'FontSize', 20);
    end
    alpha(0.5)
end

for i = 1:9
    subplot(3,3,i)
    ctmr_gauss_plot(cortex.left,[0 0 0], 0, 'left', i)
end
% Plot two hemispheres
ctmr_gauss_plot(cortex.left,[0 0 0], 0, 'left', 1)
ctmr_gauss_plot(cortex.right,[0 0 0], 0, 'right', 1)
f1 = plot3(coords(:,1),coords(:,2),coords(:,3), '.', 'Color', 'k', 'MarkerSize', 40);
f1 = plot3(coords(e,1),coords(e,2),coords(e,3), '.', 'Color', 'r', 'MarkerSize', 40);
text(coords(e,1),coords(e,2),coords(e,3), num2str(elecs(e)), 'FontSize', 20);



%% Create subjVar
subjVar = [];
subjVar.cortex = cortex;
subjVar.V = V;
subjVar.elect_native = coords;
subjVar.elect_MNI = MNI_coords;
subjVar.elect_names = elect_names;
subjVar.demographics = GetDemographics(sbj_name, dirs);
save([dirs.original_data '/' sbj_name '/subjVar.mat' ], 'subjVar')

% demographics
% date of implantation
% birth data
% age
% gender
% handedness
% IQ full
% IQ verbal
% ressection?


%% Copy subjects
subjs_to_copy = {'S09_07_CM'};
parfor i = 1:lenght(subjs_to_copy)
    CopySubject(subjs_to_copy{i}, dirs.psych_root, '/Volumes/NeuroSpin2T/data/psychData', dirs.data_root, '/Volumes/NeuroSpin2T/data/neuralData')
    UpdateGlobalVarDirs(subjs_to_copy{i}, project_name, block_names, dirs) % after reruning
end
%% Medium-long term projects
% 1. Creat subfunctions of the EventIdentifier specific to each project
% 2. Stimuli identity to TTL

%% Concatenate all trials all channels
plot_params.blc = true;
data_all = ConcatenateAll(sbj_name,project_name,block_names,dirs,[],'HFB','stim', plot_params);
data_all_spec = ConcatenateAll(sbj_name,project_name,block_names,dirs,[],'Spec','stim', plot_params);

exportDataMNE(data_all_spec, )



trialinfo = removevars(data_all.trialinfo{1}, {'bad_epochs_raw', 'bad_epochs_HFO' 'bad_epochs', 'bad_inds_raw', 'bad_inds_HFO', 'bad_inds'}); 

% excluse bad channels
data_all.wave(:,data_all.badChan,:) = [];
data_all.labels(data_all.badChan) = [];
data_all.trialinfo(data_all.badChan) = [];

% check for channels with nan
nan_channel = [];
for i = 1:size(data_all.wave,2)
    nan_channel(i) = sum(sum(isnan(data_all.wave(:,i,:))));
end

% Exclude channels witgh nan 
data_all.wave = data_all.wave(:,find(nan_channel == 0),:);
data_all.labels(find(nan_channel ~= 0)) = [];
data_all.trialinfo(find(nan_channel ~= 0)) = [];

%Randomly select the same number of conditions

% Save 
save([dirs.data_mvpa '/data_all_' sbj_name '_' project_name '_' 'Spec' '.mat'], 'data_all_spec', '-v7.3');

% Export trialinfo to csv 
data_all.wave = data_all.wave(~contains(trialinfo.wlist, 'Ê'),:,:); % correct that for MMR
trialinfo = trialinfo(~contains(trialinfo.wlist, 'Ê'),:); % correct that for MMR
writetable(trialinfo,[dirs.data_mvpa '/trialinfo_' sbj_name '_' project_name '.csv'])                      


%% Behavioral analysis
% Load behavioral data
load()

datatype = 'HFB'
plot_params.blc = true
locktype = 'stim'
data_all.trialinfo = [];
for i = 1:length(block_names)
    bn = block_names {i};
    dir_in = [dirs.data_root,'/','HFB','Data/',sbj_name,'/',bn,'/EpochData/'];
    
    if plot_params.blc
        load(sprintf('%s/%siEEG_%slock_bl_corr_%s_%.2d.mat',dir_in,datatype,locktype,bn,1));
    else
        load(sprintf('%s/%siEEG_%slock_%s_%.2d.mat',dir_in,datatype,locktype,bn,1));
    end
    % concatenate trial info
    data_all.trialinfo = [data_all.trialinfo; data.trialinfo]; 
end

data_calc = data_all.trialinfo(data_all.trialinfo.isCalc == 1,:)
acc = sum(data_calc.Accuracy)/length(data_calc.Accuracy);
mean_rt = mean(data_calc.RT(data_calc.Accuracy == 1));
sd_rt = std(data_calc.RT(data_calc.Accuracy == 1));

boxplot(data_calc.RT(data_calc.Accuracy == 1), data_calc.OperandMin(data_calc.Accuracy == 1))
set(gca,'fontsize',20)
ylabel('RT (sec.)')
xlabel('Min operand')


%% MMR
data_calc = data_all.trialinfo(strcmp(data_all.trialinfo.condNames, 'math'),:)




