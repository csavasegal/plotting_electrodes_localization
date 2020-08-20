%get ready with the addpath,plz adjust accordingly
%addpath(genpath('/Users/chao/Documents/Stanford/code/lbcn_personal-master/'))
%addpath(genpath('/Users/chao/Documents/Stanford/code/lbcn_preproc-master/'))
%addpath(genpath('/Users/chao/Desktop/function_tools/gramm-master'))% this is a matlab based graph toolbox which is similar to the ggplot2
%[server_root, comp_root, code_root] = AddPaths('Chao_iMAC');%home

% define the cohort
% sbj_names_all = {'C17_20';'C17_21';'C18_22';'C18_23';'C18_24';'C18_25';'C18_26';'C18_27';'C18_28';'C18_29';'C18_30'...
%     ;'C18_31';'C18_32';'C18_33';'C18_34';'C18_35';'C18_37';'C18_38';'C18_39';'C18_40';'C18_41';'C18_42';'C18_43';'C18_44'...
%     ;'C18_45';'C18_46';'C18_47';'C18_49';'C19_50';'C19_51';'C19_52';'C19_53';'C19_55';'C19_58';'C19_60';'C19_62';'S17_114_EB'...
%     ;'S17_116_AA';'S17_118_TW';'S20_148_SM';'S20_149_DR';'S20_150_CM';'S20_152_HT'};

sbj_names_all = {'C17_20';'C17_21';'C18_22';'C18_23';'C18_24';'C18_25';'C18_26';'C18_27';'C18_28';'C18_29';'C18_30'...
    ;'C18_31';'C18_32';'C18_33';'C18_34';'C18_35';'C18_37';'C18_38';'C18_39';'C18_40';'C18_41';'C18_42';'C18_43';'C18_44'...
    ;'C18_45';'C18_46';'C18_47';'C18_49';'C19_50';'C19_51';'C19_52';'C19_53';'C19_55';'C19_60';'C19_62';'S17_114_EB'...
    ;'S17_116_AA';'S17_118_TW';'S20_148_SM';'S20_149_DR';'S20_150_CM';'S20_152_HT'};

%significant ones*
sbj_names_all = {'C17_21'; 'C18_23'; 'C18_29'; 'C18_30'; 'C18_37';'C18_41';'C18_45'; 'C18_49';'C19_53';'C19_62'};
sbj_names = sbj_names_all(1:12);%China
sbj_names = sbj_names_all(13:end);%Stanford
sbj_names = sbj_names_all;%all

%make a specific selection of cohort
% sbj_names = sbj_names_all(1:36);%China
% sbj_names = sbj_names_all(37:end);%Stanford
% sbj_names = sbj_names_all;%all

sbj_names = sbj_names_all(1:35);%China
sbj_names = sbj_names_all(36:end);%Stanford
sbj_names = sbj_names_all;%all

% define the the abbreviations of kinds of brian structures
anat_all = {'SFG','SFS','MFG','IFS','IFG','OFC','MPG','SMA','VMPFC','ACC','MCC','PCC','STG','STS','MTG','ITS','ITG','AMY','HIPPO A','HIPPO M','HIPPO P'...
    ,'TP','OTS','FG','CS','PHG','PRECENTRAL G','POSTCENTRAL G','SPL','IPL','IPS','PCG','CG','POF','CF','LG','SOG','MOG','IOG','WM','OUT','EC',...
    'FOP','POP','TOP','EMPTY','PARL','LESION','INSULA','BASAL'};

%make a specific selection of anatomical structures
anat = {'INSULA'};anat_name = 'INSULA';
anat = {'ACC','MCC'};anat_name = 'ACC MCC';
anat = {'IFS','IFG'};anat_name = 'IFS IFG';
anat = {'FG','OTS','CS'};anat_name = 'FG OTS CS';
anat = {'SFS','SFG'};anat_name = 'SFS SFG';
anat = {'OFC'};anat_name = 'OFC';
anat = {'AMY'};anat_name = 'amygdala';

anat ={'SOG','MOG','IOG'};anat_name = 'OCCIPITAL'
anat = {'HIPPO A','HIPPO M','HIPPO P'};


% Check on the meaning of the abbreviations
%anat_displ =  importdata('/Users/chao/Documents/Stanford/code/lbcn_personal-master/Chao/anat_abbreviation.txt');%pls select a directory to store the 
anat_displ = importdata('/Users/clara/Documents/code/lbcn_personal/personal/race_project/anat_abbreviation.txt');
disp(anat_displ);


%% Visit each excel table, add a name column, and concatenate them into a cell
T = cell(size(sbj_names,1), 1);
for i = 1:length(sbj_names)
    %cd(['/Volumes/CHAO_IRON_M/data/neuralData/originalData/' sbj_names{i}])%plz adjust accordingly to your ecosystem
    %T{i} = readtable(['/Volumes/CHAO_IRON_M/data/neuralData/originalData/' sbj_names{i} '/' sbj_names{i} '_stats.xlsx']);
    T{i} = readtable(['/Volumes/CSS_backup/data/neuralData/originalData/' sbj_names{i} '/' sbj_names{i} '_stats.xlsx']);
    sbj_name = cell(size(T{i},1),1);
    sbj_name(:) = {sbj_names{i}};
    T{i}.sbj_name = sbj_name;
end
%Creat another table with rows of specific cohorts and column of specific anatomical
%structures
sz = [size(sbj_names,1) size(anat,2)];
varTypes = cell(1,size(anat,2));
varTypes(:) = {'cell'};
T2 = table('Size',sz,'VariableTypes',varTypes,'VariableNames',anat,'RowNames',sbj_names);
%put the glv_index into each space of the table as a vector
for i = 1:length(sbj_names)
    for j = 1:length(anat)
        idx = strcmp(T{i}.label,anat{j});
        T2{sbj_names{i},anat{j}} = {T{i}.glv_index(idx)'};
    end
end
%Since there may be empty electrodes in the stats sheet, Glv_index may be str. Here, all Glv_index in T2 will be transformed into vetor
for i = 1:length(sbj_names)
    for j = 1:length(anat)
        if iscell(T2{sbj_names{i},anat{j}}{:})
            T2{sbj_names{i},anat{j}}{:} = str2double(T2{sbj_names{i},anat{j}}{:});
        end
    end
end
%Creat a third table that horizontally concatenate all the specific
%anatomical structures in together and get rid of the empty rows in T3
sz = [size(sbj_names,1) 1];
varTypes = cell(1,1);
varTypes(:) = {'cell'};
T3 = table('Size',sz,'VariableTypes',varTypes,'VariableNames',{'anat'},'RowNames',sbj_names);
for i = 1:size(T3,1)
    T3{i,:}{:} = horzcat(T2{i,:}{:});
end
loc=cellfun('isempty', T3{:,'anat'} );% 
T3(loc,:)=[];
%%
%define the plot and stats parameters first
%project_name = 'race_encoding_simple';
project_name = 'GradCPT'
plot_params = genPlotParams(project_name,'timecourse');
plot_params.single_trial_replot = true;
plot_params.single_trial_thr = 20;%the threshold of HFB it could be like 10 15 20 ...
stats_params = genStatsParams(project_name);
%%
%make a specific selection of conditions
%conditions = {'asian','black','white'}; column = 'condNames';
%conditions = {'own_race','other_races'};column = 'condNames9';
conditions = {'mountains','cities'}; column = 'condNames';
% if strcmp(column,'condNames9')
%     load cdcol.mat
%     plot_params.col = [cdcol.ultramarine;cdcol.carmine];
% else
% end
if strcmp(column,'condNames')
    load cdcol.mat
    plot_params.col = [cdcol.ultramarine;cdcol.carmine];
else
end


%%
%concatenate  data for conditions
plot_data = cell(1,length(conditions));
plot_data_all = cell(1,length(conditions));
for i = 1:length(T3.Properties.RowNames)
    if ~isempty(T3.anat{i})
        indx = i;
        sbj_name = T3.Properties.RowNames{indx};%set basic pipeline parameters
        if contains(sbj_name,'C17')||contains(sbj_name,'C18')||contains(sbj_name,'C19')
            center = 'China';
        else
            center = 'Stanford';
        end
        block_names = BlockBySubj(sbj_name,project_name);
        dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root);
        load([dirs.data_root,filesep,'OriginalData',filesep,sbj_name,filesep,'global_',project_name,'_',sbj_name,'_',block_names{1},'.mat'])
        for j = 1:length(T3.anat{i})
            %data_all = concatBlocks(sbj_name, block_names,dirs,T3.anat{i}(j),'HFB','Band',{'wave'},'stimlock_bl_corr');
            %data_all = concatBlocks(sbj_name, project_name, block_names, dirs, T3.anat{i}(j), 'HFB','Band',{'wave'},'stimlock_bl_corr')
            data_all = concatBlocks(sbj_name, project_name, block_names, dirs, T3.anat{i}(j), 'HFB','Band',{'wave'},'stimlock')
            winSize = floor(data_all.fsample*plot_params.sm);
            gusWin = gausswin(winSize)/sum(gausswin(winSize));
            data_all.wave = convn(data_all.wave,gusWin','same');
            [grouped_trials_all,~] = groupConds(conditions,data_all.trialinfo,column,'none',[],false);
            [grouped_trials,cond_names] = groupConds(conditions,data_all.trialinfo,column,stats_params.noise_method,stats_params.noise_fields_trials,false);
            for ci = 1:length(conditions)
                plot_data{ci} = [plot_data{ci};data_all.wave(grouped_trials{ci},:)];
                plot_data_all{ci} = [plot_data_all{ci};data_all.wave(grouped_trials_all{ci},:)];
            end
        end
    else
    end
end
%randomly pick half of the other_races with fixed rng
% if strcmp(column,'condNames9')
%     rng(1);
%     half_index = randsample(size(plot_data{2},1),round(size(plot_data{2},1)/2));
%     plot_data{2} = plot_data{2}(half_index,:);
% else
% end
if strcmp(column,'condNames')
    rng(1);
    half_index = randsample(size(plot_data{2},1),round(size(plot_data{2},1)/2));
    plot_data{2} = plot_data{2}(half_index,:);
else
end

%% plot figure based on aboving data
clear h
load('cdcol.mat')
figureDim = [100 100 .23 .35 ];
figure('units', 'normalized', 'outerposition', figureDim)
for ci = 1:length(conditions)
    lineprops.col{1} = plot_params.col(ci,:);
    if plot_params.single_trial_replot
        for di = 1:size(plot_data{ci},1)
            if ~isempty(find(plot_data{ci}(di,:)>=plot_params.single_trial_thr))
                fprintf('You have deleted the data over threshold %d from the condition %d \n;',plot_params.single_trial_thr,ci);
            else
            end
        end
        [thr_raw,thr_column] = find(plot_data{ci} >= plot_params.single_trial_thr);
        thr_raw = unique(thr_raw);
        plot_data{ci}(thr_raw,:)=[];
        %plot_data_stac{ci} = plot_data{ci}(:,(find(abs(data.time-plot_params.clust_per_win(1))<0.001):find(abs(data.time-plot_params.clust_per_win(2))<0.001)));%%%%%Chao the time window to do the permutation
        cond_names{ci} = [cond_names{ci},' (',num2str(size(plot_data{ci},1)),' of ',num2str(size(plot_data_all{ci},1)), ' trials)'];
    end
    if ~strcmp(plot_params.eb,'none')
        lineprops.style= '-';
        lineprops.width = plot_params.lw;
        lineprops.edgestyle = '-';
        if strcmp(plot_params.eb,'ste')
            mseb(data_all.time,nanmean(plot_data{ci}),nanstd(plot_data{ci})/sqrt(size(plot_data{ci},1)),lineprops,1);
            hold on
        else %'std'
            mseb(data_all.time,nanmean(plot_data{ci}),nanstd(plot_data{ci}),lineprops,1);
            hold on
        end
    else
    end
    h(ci)=plot(data_all.time,nanmean(plot_data{ci}),'LineWidth',plot_params.lw,'Color',plot_params.col(ci,:));
    hold on
end
xlim(plot_params.xlim)
%ylim(plot_params.ylim)
xlabel(plot_params.xlabel);
ylabel(plot_params.ylabel)
set(gca,'fontsize',plot_params.textsize)
box off
y_lim = ylim;
if size(data_all.trialinfo.allonsets,2) > 1
    time_events = cumsum(nanmean(diff(data_all.trialinfo.allonsets,1,2)));
    for i = 1:length(time_events)
        plot([time_events(i) time_events(i)],y_lim,'Color', [.5 .5 .5], 'LineWidth',1)
    end
else
end
plot([0 0],y_lim, 'Color', [0 0 0], 'LineWidth',2)
plot(xlim,[0 0], 'Color', [.5 .5 .5], 'LineWidth',1)
ylim(y_lim)
box on 
leg = legend(h,cond_names,'Location','Northeast', 'AutoUpdate','off');%cond_names has the trial infomation(default), and cond_names2 is about the category
legend boxoff
set(leg,'fontsize',plot_params.legendfontsize, 'Interpreter', 'none')

sites_num = sum(cellfun(@numel, T3{:,'anat'} ));
sbj_names_num = size(T3,1);
title([num2str(sites_num),' sites in ' anat_name ' from ',num2str(sbj_names_num),' Subjects'])

%cd('/Users/chao/Desktop/Project_in_Stanford/RACE/4_working_data/globe_analysis_figures');%plz adjust accordingly





%% plot the distribution of sites among cases
figureDim = [100 100 .23 .35 ];
figure('units', 'normalized', 'outerposition', figureDim)
%x = 1:sbj_names_num;
x = cell(1,size(T3,1));
for i = 1:size(T3,1)
    x{i} = T3.Row{i};
end
x=categorical(x);
y = cellfun(@numel, T3{:,'anat'} );
barh(x,y)
set(gca,'fontsize',plot_params.textsize)
sbj_names_num = size(T3,1);
title(['distribution of sites in ' anat_name ' from ',num2str(sbj_names_num),' Subjects'])

%cd('/Users/chao/Desktop/Project_in_Stanford/RACE/4_working_data/globe_analysis_figures');%plz adjust accordingly
%% plot the sites in MNI space 
%This part can work but the figure is not pretty, I'm still working on this part, if you know some way that we could plot a nicer brain
%plz tell me know, chao
%PlotCoverageElect
%PlotCoverageElectComb

%define the figure parameters first
cfg = [];
cfg.highlight_col = [1 0 0];
cfg.chan_highlight = [];
cfg.correction_factor = 0;
cfg.MarkerSize = 20;
cfg.alpha = 0.3;
cfg.lobe = 'medial';
cfg.correction_factor = 5;
cfg.flip_right = true;% this is to flipped all the sites

% get the MNI coords and L/R information from variable T
coords = struct;
coords.MNI_coord = [];
coords.LvsR = [];

for i = 1:length(sbj_names)
    for j = 1:length(anat)
        idx = strcmp(T{i}.label,anat{j});
        coords_in_T = [T{i}.MNI_coord_1 T{i}.MNI_coord_2 T{i}.MNI_coord_3];
        coords_in_T = coords_in_T(idx,:);
        LvsR_in_T = T{i}.LvsR(idx,:);
        coords.MNI_coord = [coords.MNI_coord;coords_in_T];
        coords.LvsR = [coords.LvsR;LvsR_in_T];
    end
end

% this is for flip
if cfg.flip_right
    for i = 1:size(coords.MNI_coord,1)
        if coords.MNI_coord(i,1)<=0
            coords.MNI_coord(i,1) = coords.MNI_coord(i,1) + 2*abs(coords.MNI_coord(i,1));
            coords.LvsR{i} = 'L';
        else
        end
    end
else
end

% plot the brain and the sites

PlotCoverageGroup(coords,cfg)






%% Check whether the left and right coordinates are correct in the the subjvar 
for i = 1:length(sbj_names_all)
    load(['/Volumes/CHAO_IRON_M/data/neuralData/originalData/',sbj_names_all{i},'/','subjVar_',sbj_names_all{i},'.mat'])
    elinfo_link = subjVar.elinfo;
    
    for j = 1:size(elinfo_link,1)
        if strcmp(elinfo_link.LvsR{j},'L')&&elinfo_link.MNI_coord(j,1)<0
            disp('good to go')
        elseif strcmp(elinfo_link.LvsR{j},'R')&&elinfo_link.MNI_coord(j,1)>0
            disp('good to go')
        elseif strcmp(elinfo_link.LvsR{j},'L')&&elinfo_link.MNI_coord(j,1)>0
            warning(['please check the subjvar' sbj_names{i}])
            return
        elseif strcmp(elinfo_link.LvsR{j},'R')&& elinfo_link.MNI_coord(j,1)<0
            warning(['please check the subjvar' sbj_names{i}])
            return
        else
            disp('catched empty site')
        end
    end
end