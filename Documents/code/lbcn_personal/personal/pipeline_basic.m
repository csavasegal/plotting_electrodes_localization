%% Branch 1. basic config - PEDRO
AddPaths('Pedro_iMAC')
parpool(16) % initialize number of cores

%% Taks and center
project_name = 'MMR';
center = 'Stanford';

%% Get block names
block_names = BlockBySubj(sbj_name,project_name)
% Manually edit this function to include the name of the blocks:
% Make sure your are connected to CISCO and logged in the server
server_root = '/Volumes/neurology_jparvizi$/';
% comp_root = '/Volumes/NeuroSpin2T/Stanford/data';
comp_root = '/Volumes/LBCN8T/Stanford/data';
code_root = '/Users/pinheirochagas/Pedro/Stanford/code/lbcn_preproc/';
dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root); % 'Pedro_NeuroSpin2T'


%% Get iEEG and Pdio sampling rate and data format
[fs_iEEG, fs_Pdio, data_format] = GetFSdataFormat(sbj_name, center);

%% Create subject folders
CreateFolders(sbj_name, project_name, block_names, center, dirs, data_format, 1)


%% Copy the iEEG and behavioral files from server to local folders
parfor i = 1:length(block_names)
    CopyFilesServer(sbj_name,project_name,block_names{i},data_format,dirs)
end


%% Branch 2 - data conversion
ref_chan = [];
epi_chan = [];
empty_chan = [];

if strcmp(data_format, 'edf')
    SaveDataNihonKohden(sbj_name, project_name, block_names, dirs, ref_chan, epi_chan, empty_chan) %
elseif strcmp(data_format, 'TDT')
    SaveDataDecimate(sbj_name, project_name, block_names, fs_iEEG, fs_Pdio, dirs, ref_chan, epi_chan, empty_chan) %% DZa 3051.76
else
    error('Data format has to be either edf or TDT format')
end


%% Convert berhavioral data to trialinfo
switch project_name
    case 'Calculia_SingleDigit'
        %         OrganizeTrialInfoMMR(sbj_name, project_name, block_names, dirs) %%% FIX TIMING OF REST AND CHECK ACTUAL TIMING WITH PHOTODIODE!!! %%%
        OrganizeTrialInfoCalculia(sbj_name, project_name, block_names, dirs) %%% FIX ISSUE WITH TABLE SIZE, weird, works when separate, loop clear variable issue
    case 'UCLA'
        OrganizeTrialInfoUCLA(sbj_name, project_name, block_names, dirs) % FIX 1 trial missing from K.conds? INCLUDE REST!!!
    case 'MMR'
        OrganizeTrialInfoMMR_rest(sbj_name, project_name, block_names, dirs) %%% FIX ISSUE WITH TABLE SIZE, weird, works when separate, loop clear variable issue
    case 'Memoria'
        language = 'english'; % make this automnatize by sbj_name
        OrganizeTrialInfoMemoria(sbj_name, project_name, block_names, dirs, language)
    case 'Calculia_China'
        OrganizeTrialInfoCalculiaChina(sbj_name, project_name, block_names, dirs) % FIX 1 trial missing from K.conds?
    case 'Calculia_production'
        OrganizeTrialInfoCalculia_production(sbj_name, project_name, block_names, dirs) % FIX 1 trial missing from K.conds?
    case 'Number_comparison'
        OrganizeTrialInfoNumber_comparison(sbj_name, project_name, block_names, dirs) % FIX 1 trial missing from K.conds?
    case 'MFA'
        OrganizeTrialInfoMFA(sbj_name, project_name, block_names, dirs) % FIX 1 trial missing from K.conds?
    case 'Calculia'
        OrganizeTrialInfoCalculia_combined(sbj_name, project_name, block_names, dirs) % FIX 1 trial missing from K.conds?
    case 'Context'
        OrganizeTrialInfoContext(sbj_name, project_name, block_names, dirs) % FIX 1 trial missing from K.conds?        
    case 'EglyDriver'
        OrganizeTrialInfo_EglyDriver(sbj_name, project_name, block_names, dirs) % FIX 1 trial missing from K.conds?
end


%% Branch 3 - event identifier
if strcmp(project_name, 'Number_comparison')
    event_numcomparison_current(sbj_name, project_name, block_names, dirs, 9) %% MERGE THIS
% elseif strcmp(project_name, 'Memoria')
%     EventIdentifier_Memoria(sbj_name, project_name, block_names(3), dirs) % new ones, photo = 1; old ones, photo = 2; china, photo = varies, depends on the clinician, normally 9.)
elseif strcmp(project_name, 'EglyDriver')
    EventIdentifier_EglyDriver(sbj_name, project_name, block_names, dirs, 1) % new ones, photo = 1; old ones, photo = 2; china, photo = varies, depends on the clinician, normally 9.
else
    EventIdentifier(sbj_name, project_name, block_names, dirs,1) % new ones, photo = 1; old ones, photo = 2; china, photo = varies, depends on the clinician, normally 9.
end


%% Branch 4 - bad channel rejection
load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,block_names{1}));
ref_chan = [];
epi_chan = [];
empty_chan = []; 

BadChanRejectCAR(sbj_name, project_name, block_names, dirs)


%% Branch 5 - Time-frequency analyses
% Load elecs info
load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,block_names{1}),'globalVar');
elecs = setdiff(1:globalVar.nchan,globalVar.refChan);

for i = 1:length(block_names)
    parfor ei = 1:length(elecs)
        WaveletFilterAll(sbj_name, project_name, block_names{i}, dirs, elecs(ei), 'HFB', [], [], [], 'Band') % only for HFB
        WaveletFilterAll(sbj_name, project_name, block_names{i}, dirs, elecs(ei), 'SpecDense', [], [], true, 'Spec') % across frequencies of interest
    end
end

%% Branch 6 - Epoching, identification of bad epochs and baseline correction
epoch_params = genEpochParams(project_name, 'stim');
for i = 1:length(block_names)
    bn = block_names{i};
    parfor ei = 1:length(elecs)
        EpochDataAll(sbj_name, project_name, bn, dirs,elecs(ei), 'HFB', [],[], epoch_params,'Band')
        EpochDataAll(sbj_name, project_name, bn, dirs,elecs(ei), 'SpecDense', [],[], epoch_params,'Spec')
    end
end


%% DONE PREPROCESSING!


%% Branch 7 - Plotting
% plot avg. HFB timecourse for each electrode separately
plot_params = genPlotParams(project_name,'timecourse');
plot_params.noise_method = 'trials'; %'trials','timepts','none'
plot_params.noise_fields_trials = {'bad_epochs_HFO','bad_epochs_raw_HFspike'};
PlotTrialAvgAll(sbj_name,project_name,block_names,dirs,[],'HFB','stim','condNames',[],plot_params,'Band') % condNames

% plot ERSP (event-related spectral perturbations) for each electrode
plot_params = genPlotParams(project_name,'ERSP');
plot_params.noise_method = 'trials'; %'trials','timepts','none'
plot_params.noise_fields_trials = {'bad_epochs_HFO','bad_epochs_raw_HFspike'};
PlotERSPAll(sbj_name,project_name,block_names,dirs,[],'SpecDense','stim','condNames',[],plot_params)% condNames
