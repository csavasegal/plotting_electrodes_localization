%get ready with the addpath,plz adjust accordingly
addpath(genpath('/Users/clara/Documents/code/lbcn_personal/'))
addpath(genpath('/Users/clara/Documents/ode/lbcn_preproc/'))

%addpath(genpath('/Users/chao/Desktop/function_tools/gramm-master'))% this is a matlab based graph toolbox which is similar to the ggplot2
[server_root, comp_root, code_root] = AddPaths('Clara_iMAC');%home

% define the cohort
sbj_names_all = {'C17_20';'C17_21';'C18_22';'C18_23';'C18_24';'C18_25';'C18_26';'C18_27';'C18_28';'C18_29';'C18_30'...
    ;'C18_31';'C18_32';'C18_33';'C18_34';'C18_35';'C18_37';'C18_38';'C18_39';'C18_40';'C18_41';'C18_42';'C18_43';'C18_44'...
    ;'C18_45';'C18_46';'C18_47';'C18_49';'C19_50';'C19_51';'C19_52';'C19_53';'C19_55';'C19_58';'C19_60';'C19_62';'S17_114_EB'...
    ;'S17_116_AA';'S17_118_TW';'S19_145_PC';'S20_148_SM';'S20_149_DR';'S20_150_CM';'S20_152_HT'};


sbj_names_all_grad_CPT = {'C17_21';'C18_22';'C18_23';'C18_25';'C18_26';'C18_29';'C18_30'...
    ;'C18_31';'C18_32';'C18_35';'C18_37';'C18_38';'C18_39';'C18_41';'C18_42';...
    ;'C18_45';'C18_47';'C18_49';'C19_50';'C19_53';'C19_58';'C19_60';'C19_62'};
%make a specific selection of cohort
indxcohort = ismember(sbj_names_all, sbj_names_all_grad_CPT);%China
% indxcohort = [37:44];%Stanfordc
% indxcohort = [1:44];%2 Centers
% indxcohort = [1:36];%china

sbj_names = sbj_names_all(indxcohort);%China

% define the the abbreviations of kinds of brian structures
anat_all = {'SFG','SFS','MFG','IFS','IFG','OFC','MPG','SMA','VMPFC','ACC','MCC','PCC','STG','STS','MTG','ITS','ITG','AMY','HIPPO A','HIPPO M','HIPPO P'...
    ,'TP','OTS','FG','CS','PHG','PRECENTRAL G','POSTCENTRAL G','SPL','IPL','IPS','PCG','CG','POF','CF','LG','SOG','MOG','IOG','WM','OUT','EC',...
    'FOP','POP','TOP','EMPTY','PARL','LESION','INSULA','BASAL'};

%make a specific selection of anatomical structures
anat = {'HIPPO A','HIPPO M','HIPPO P','PHG'};anat_name = 'MTLE';
anat = {'HIPPO A'};anat_name = 'HIPPO A';
anat = {'HIPPO M'};anat_name = 'HIPPO M';
anat = {'HIPPO P'};anat_name = 'HIPPO P';
anat = {'PHG'};anat_name = 'PHG';
anat = {'INSULA'};anat_name = 'INSULA';
anat = {'ACC','MCC'};anat_name = 'ACC MCC';
anat = {'ACC'};anat_name = 'ACC';
anat = {'MCC'};anat_name = 'MCC';
anat = {'FG'};anat_name = 'FG';
anat = {'FG','OTS','CS'};anat_name = 'FG OTS CS';
anat = {'IFS','IFG'};anat_name = 'IFS IFG';%
anat = {'SFS','SFG'};anat_name = 'SFS SFG';
anat = {'OFC'};anat_name = 'OFC';
anat = {'AMY'};anat_name = 'amygdala';
anat = {'SMA','PARL'};anat_name = 'SMA and PARL';
anat = {'SOG','MOG','IOG'}; anat_name= 'occipital';
anat = {'FOP','POP','TOP'}; anat_name= 'operculum';
anat = {'PCG','CG','POF','CF','PCC'}; anat_name='posterior medial';
anat = {'SPL','IPL','IPS'};anat_name='parieltal area';
anat = {'POSTCENTRAL G','PRECENTRAL G'};anat_name='central area';
anat = {'POSTCENTRAL G'};anat_name='central area';
anat = {'STG','STS','MTG','ITS','ITG'};anat_name='temporal area lateral';
anat = {'PCG'};anat_name='PCG';
anat = {'MTG'};anat_name = 'MTG';
anat = {'IFS','IFG',}
anat = {'SFG','SFS','MFG','IFS','IFG','OFC','MPG','SMA','VMPFC','ACC','MCC','PCC','STG','STS','MTG','ITS','ITG','AMY','HIPPO A','HIPPO M','HIPPO P'...
    ,'TP','OTS','FG','CS','PHG','PRECENTRAL G','POSTCENTRAL G','SPL','IPL','IPS','PCG','CG','POF','CF','LG','SOG','MOG','IOG','EC',...
    'FOP','POP','TOP','PARL','INSULA','BASAL'};anat_name='all available';
anat = {'WM','OUT','EMPTY','LESION'};;anat_name='exclude';


side = 'none';%'L','R','none'



anat = {'STS'};anat_name='STS';
% Check on the meaning of the abbreviations
anat_displ =  importdata('/Users/clara/Documents/code/lbcn_personal/personal/race_project/anat_abbreviation.txt');%pls select a directory to store the 
disp(anat_displ);


%% Visit each excel table, add a name column, and concatenate them into a cell
load('/Users/clara/Documents/code/lbcn_personal/cell_of_44_race_cases_tables.mat');%if there is any change of the excel sheet, 
%then this need to update,go to 'Creat_cell_of_tables.mat'
T = T(indxcohort,1);

%Creat another table with rows of specific cohorts and column of specific anatomical
%structures
sz = [size(sbj_names,1) size(anat,2)];
varTypes = cell(1,size(anat,2));
varTypes(:) = {'cell'};
T2 = table('Size',sz,'VariableTypes',varTypes,'VariableNames',anat,'RowNames',sbj_names);
%put the glv_index into each space of the table as a vector
if isempty(side)||strcmp(side,'none')
    for i = 1:length(sbj_names)
        for j = 1:length(anat)
            idx1 = strcmp(T{i}.label,anat{j});
            idx2 = T{i}.any_activation;%or idx2 = T{i}.any_activation/T{i}.all_trials_activation/T{i}.group_diff %default
            idx = idx1 & idx2;
            T2{sbj_names{i},anat{j}} = {T{i}.glv_index(idx)'};
        end
    end
else
    for i = 1:length(sbj_names)
        for j = 1:length(anat)
            idx1 = strcmp(T{i}.label,anat{j});
            idx2 = T{i}.any_activation;%or idx2 = T{i}.any_activation/T{i}.all_trials_activation
            idx3 = strcmp(T{i}.LvsR,side);
            idx = idx1 & idx2 & idx3;
            T2{sbj_names{i},anat{j}} = {T{i}.glv_index(idx)'};
        end
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
loc=cellfun('isempty', T3{:,'anat'} );
T3(loc,:)=[];


%% display info of behav data

behv = readtable(['/Users/clara/Documents/code/lbcn_personal/personal/race_project/results_summary.xlsx']);
behv_indx = ismember(behv.Chao_patient_ID_in_server,T3.Properties.RowNames);
disp(['the mean of accuracy in ' anat{:} ' is ' num2str(mean(behv.Race_CatAcc_SR(behv_indx))) ' and the std is ' num2str(std(behv.Race_CatAcc_SR(behv_indx)))]);
%%
%define the plot and stats parameters first
project_name ='GradCPT';% 'race_encoding_simple'or'Grad_CPT'  % The might be error here because of the naming some are GradCPT and some are Grad_CPT
plot_params = genPlotParams(project_name,'timecourse');
plot_params.single_trial_replot = true;
plot_params.single_trial_thr = 15;%the threshold of HFB it could be like 10 15 20 ...
stats_params = genStatsParams(project_name);
plot_params.single_trial = false;
plot_params.clust_per = true;% clusterd based permuation
plot_params.clust_per_win = [0 1.5]; %changed to 1.5 for gradCPT based on Kucyi 2020
%%
%make a specific selection of conditions and coloring
if strcmp(project_name,'GradCPT') % The might be error here because of the naming some are GradCPT and some are Grad_CPT
    conditions = {'mtn','city'};column = 'condNames';
    load cdcol.mat
    plot_params.col = [cdcol.carmine;cdcol.ultramarine];
elseif strcmp(project_name,'race_encoding_simple')
conditions = {'asian','black','white'}; column = 'condNames';
%     conditions = {'own_race','other_races'};column = 'condNames9';
%     conditions = {'my_race_ans','not_my_race_ans'};column = 'condNames8';
%     load cdcol.mat
%     plot_params.col = [cdcol.carmine;cdcol.ultramarine];
end

%%
%concatenate  data for conditions
plot_data = cell(1,length(conditions));
plot_data_all = cell(1,length(conditions));
plot_data_trials = cell(1,length(conditions));
plot_data_trials_all = cell(1,length(conditions));
stats_data = cell(1,length(conditions));
stats_data_all = cell(1,length(conditions));
for i = 1:length(T3.Properties.RowNames)
    i
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
            %data_all = concatBlocks(sbj_name, project_name, block_names,dirs,T3.anat{i}(j),'HFB','Band',{'wave'},['stimlock']);%'stimlock_bl_corr'
            %concatBlocks(sbj_name, project_name, block_names,dirs,el,freq_band,datatype,concatfields,tag)
            data_all = concatBlocks(sbj_name, project_name_tmp, block_names,dirs,T3.anat{i}(j),'HFB','Band',{'wave'},['stimlock_bl_corr']);%'stimlock'

            %smooth is in the trial level
            winSize = floor(data_all.fsample*plot_params.sm);
            gusWin = gausswin(winSize)/sum(gausswin(winSize));
            data_all.wave_sm = convn(data_all.wave,gusWin','same');
            
            [grouped_trials_all,~] = groupConds(conditions,data_all.trialinfo,column,'none',[],false);
            [grouped_trials,cond_names] = groupConds(conditions,data_all.trialinfo,column,stats_params.noise_method,stats_params.noise_fields_trials,false);
            % this part is to exclude HFB over a fixed threshold
            if plot_params.single_trial_replot
                thr_raw =[];
                for di = 1:size(data_all.wave,1)
                    if ~isempty(find(data_all.wave(di,:)>=plot_params.single_trial_thr));
                        fprintf('You have deleted the data over threshold %d from the data \n',plot_params.single_trial_thr);
                    else
                    end
                end
                [thr_raw,thr_column] = find(data_all.wave >= plot_params.single_trial_thr);
                thr_raw = unique(thr_raw);
            end

                for ci = 1:length(conditions)
                    grouped_trials{ci} = setdiff(grouped_trials{ci},thr_raw);% make the grouped_trial and thr_raw in together
                    plot_data{ci} = [plot_data{ci};nanmean(data_all.wave_sm(grouped_trials{ci},:),1)];% we use smoothed data for plotting
                    plot_data_all{ci} = [plot_data_all{ci};nanmean(data_all.wave_sm(grouped_trials_all{ci},:),1)];
                    stats_data{ci} = [stats_data{ci};nanmean(data_all.wave(grouped_trials{ci},:),1)]; % this part of data were prepared for further comparison (original non-smoothed data)
                    stats_data_all{ci} = [stats_data_all{ci};nanmean(data_all.wave(grouped_trials_all{ci},:),1)];                   
%                     plot_data{ci}  = [plot_data{ci};data_all.wave_sm(grouped_trials{ci},:)];% averaged across all trials
%                     plot_data_all{ci} = [plot_data_all{ci};data_all.wave_sm(grouped_trials_all{ci},:)];
%                     stats_data{ci} = [stats_data{ci};data_all.wave(grouped_trials{ci},:)]; % this part of data were prepared for further comparison (original non-smoothed data)
%                     stats_data_all{ci} = [stats_data_all{ci};data_all.wave(grouped_trials_all{ci},:)];
                end
        end
    else
    end
end
% randomly pick half of the other_races with fixed rng
% if strcmp(column,'condNames9')
%     rng('default');
%     half_index = randsample(size(plot_data{2},1),round(size(plot_data{2},1)/2));
%     plot_data{2} = plot_data{2}(half_index,:);
% else
% end
%% plot figure based on aboving data
clear h
load('cdcol.mat')
figureDim = [100 100 .23 .35 ];
figure('units', 'normalized', 'outerposition', figureDim)
for ci = 1:length(conditions)
    lineprops.col{1} = plot_params.col(ci,:);
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
    end
 
    h(ci)=plot(data_all.time,nanmean(plot_data{ci}),'LineWidth',plot_params.lw,'Color',plot_params.col(ci,:));
    hold on
end
xlim(plot_params.xlim)


if contains(sbj_names{1},'C17_20') && contains(sbj_names{end},'S20_152_HT')
    xlabel(plot_params.xlabel);
else
end


if strcmp(anat_name,'INSULA')
    ylabel(plot_params.ylabel);
else
end

set(gca,'fontsize',plot_params.textsize)
box off


    y_lim = ylim;

    % this part is clusterd based permuation
   
if plot_params.clust_per
    
    ylim_stac = y_lim;
    indx_per = find(abs(data_all.time-plot_params.clust_per_win(1))<0.001):find(abs(data_all.time-plot_params.clust_per_win(2))<0.001);
    data.time_stac = data_all.time(indx_per);
    
    data_mtn = stats_data{1}(:,indx_per);
    data_mtn = permute(data_mtn,[3 2 1]);
    data_city = stats_data{2}(:,indx_per);
    data_city = permute(data_city,[3 2 1]);
    rng('default')
    
    [pval, t_orig, clust_info, seed_state, est_alpha] = clust_perm2(data_mtn, data_city,[]);
    
    cluster_indx = find(clust_info.pos_clust_pval<0.05);
    cluster_sig = ismember(clust_info.pos_clust_ids,cluster_indx)*1;
    cluster_sig(cluster_sig==0)=NaN;
    warning(['cluster p value of mtn higher than city are ' num2str(clust_info.pos_clust_pval)])
    h(3) = plot(data.time_stac, cluster_sig.*ylim_stac(2)-0.05, '-*','Color',cdcol.black,'LineWidth',2,'MarkerIndices',1:35:length(data.time_stac),'MarkerSize',14);
    
    cluster_indx = find(clust_info.neg_clust_pval<0.05);
    cluster_sig = ismember(clust_info.neg_clust_ids,cluster_indx)*1;
    cluster_sig(cluster_sig==0)=NaN;
    warning(['cluster p value of mtn lower than city are ' num2str(clust_info.neg_clust_pval)])
    h(3) = plot(data.time_stac, cluster_sig.*ylim_stac(2)-0.05, '-*','Color',cdcol.black,'LineWidth',2,'MarkerIndices',1:35:length(data.time_stac),'MarkerSize',14);
    
    
    
%     [pval, t_orig, clust_info, seed_state, est_alpha] = clust_perm2(data_asian, data_white,[]);
%     
%     cluster_indx = find(clust_info.pos_clust_pval<0.05);
%     cluster_sig = ismember(clust_info.pos_clust_ids,cluster_indx)*1;
%     cluster_sig(cluster_sig==0)=NaN;
%     warning(['cluster p value of asian higher than white are ' num2str(clust_info.pos_clust_pval)])
%     h(5) = plot(data.time_stac, cluster_sig.*ylim_stac(2)-0.1, '-^','Color',cdcol.black,'LineWidth',2,'MarkerIndices',1:35:length(data.time_stac),'MarkerFaceColor',cdcol.chinese_white,'MarkerSize',14);
%     
%     cluster_indx = find(clust_info.neg_clust_pval<0.05);
%     cluster_sig = ismember(clust_info.neg_clust_ids,cluster_indx)*1;
%     cluster_sig(cluster_sig==0)=NaN;
%     warning(['cluster p value of asian lower than white are ' num2str(clust_info.neg_clust_pval)])
%     h(5) = plot(data.time_stac, cluster_sig.*ylim_stac(2)-0.1, '-^','Color',cdcol.black,'LineWidth',2,'MarkerIndices',1:35:length(data.time_stac),'MarkerFaceColor',cdcol.chinese_white,'MarkerSize',14);
%     
%     
%     [pval, t_orig, clust_info, seed_state, est_alpha] = clust_perm2(data_black, data_white,[]);
%     
%     cluster_indx = find(clust_info.pos_clust_pval<0.05);
%     cluster_sig = ismember(clust_info.pos_clust_ids,cluster_indx)*1;
%     cluster_sig(cluster_sig==0)=NaN;
%     warning(['cluster p value of black higher than white are ' num2str(clust_info.pos_clust_pval)])
%     h(6) = plot(data.time_stac, cluster_sig.*ylim_stac(2)-0.15, '-o','Color',cdcol.black,'LineWidth',2,'MarkerIndices',1:35:length(data.time_stac),'MarkerFaceColor',cdcol.chinese_white,'MarkerSize',14);
%     
%     cluster_indx = find(clust_info.neg_clust_pval<0.05);
%     cluster_sig = ismember(clust_info.neg_clust_ids,cluster_indx)*1;
%     cluster_sig(cluster_sig==0)=NaN;
%     warning(['cluster p value of ablack lower than white are ' num2str(clust_info.neg_clust_pval)])
%     h(6) = plot(data.time_stac, cluster_sig.*ylim_stac(2)-0.15, '-o','Color',cdcol.black,'LineWidth',2,'MarkerIndices',1:35:length(data.time_stac),'MarkerFaceColor',cdcol.chinese_white,'MarkerSize',14);
%     
%     
%     
    cond_names_stac = cond_names;
    cond_names_stac{1,1} = 'mtn';
    cond_names_stac{1,2} = 'city';
    cond_names_stac{1,3} = 'mtn vs city';
else
end


% take care of the axis, xlim, ylim, legend etc.
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
leg = legend(h,cond_names_stac,'Location','Northeast', 'AutoUpdate','off');%cond_names has the trial infomation(default), and cond_names2 is about the category
legend boxoff
set(leg,'fontsize',plot_params.legendfontsize, 'Interpreter', 'none')

%legend off
% set(gca,'XLabel','Time(S)');%chao
xlabel('Time(S)') 

sites_num = sum(cellfun(@numel, T3{:,'anat'} ));
sbj_names_num = size(T3,1);
title([num2str(sites_num),' sites in ' anat_name ' from ',num2str(sbj_names_num),' Subjects'])

%% plot the sites in MNI space 
%This part can work but the figure is not pretty, I'm still working on this part, if you know some way that we could plot a nicer brain
%plz tell me know, chao
%PlotCoverageElect
%PlotCoverageElectComb

%define the figure parameters first
cfg = [];
% cfg.highlight_col = [1 0 0];
% cfg.chan_highlight = [];
% cfg.correction_factor = 0;
% cfg.MarkerSize = 20;
% cfg.alpha = 0.3;
% cfg.lobe = 'medial';
% cfg.correction_factor = 0;
cfg.flip_right = true;% this is to flipped all the sites

% get the MNI coords and L/R information from variable T
coords = struct;
coords.MNI_coord = [];
coords.LvsR = [];
coords.isleft = [];
coords.channame = [];

if isempty(side)||strcmp(side,'none')
    for i = 1:length(sbj_names)
        for j = 1:length(anat)
            idx1 = strcmp(T{i}.label,anat{j});
            idx2 = T{i}.any_activation;%or idx2 = T{i}.any_activation/T{i}.all_trials_activation/T{i}.group_diff default: any_activation
            idx = idx1 & idx2;
            coords_in_T = [T{i}.MNI_coord_1 T{i}.MNI_coord_2 T{i}.MNI_coord_3];
%             coords_in_T = [T{i}.fsaverageINF_coord_1 T{i}.fsaverageINF_coord_2 T{i}.fsaverageINF_coord_3];
            coords_in_T = coords_in_T(idx,:);
            LvsR_in_T = T{i}.LvsR(idx,:);
            channame_in_T = T{i}.sbj_name_channame(idx,:);
            coords.MNI_coord = [coords.MNI_coord;coords_in_T];
            coords.LvsR = [coords.LvsR;LvsR_in_T];
            coords.channame = [coords.channame; channame_in_T];
        end
    end
else
    for i = 1:length(sbj_names)
        for j = 1:length(anat)
            idx1 = strcmp(T{i}.label,anat{j});
            idx2 = T{i}.any_activation;%or idx2 = T{i}.any_activation/T{i}.all_trials_activation
            idx3 = strcmp(T{i}.LvsR,side);
            idx = idx1 & idx2 & idx3;
            coords_in_T = [T{i}.MNI_coord_1 T{i}.MNI_coord_2 T{i}.MNI_coord_3];
            coords_in_T = coords_in_T(idx,:);
            LvsR_in_T = T{i}.LvsR(idx,:);
            channame_in_T = T{i}.sbj_name_channame(idx,:);
            coords.MNI_coord = [coords.MNI_coord;coords_in_T];
            coords.LvsR = [coords.LvsR;LvsR_in_T];
            coords.channame = [coords.channame; channame_in_T];
        end
    end
end


coords.isleft = [];
for i = 1:length(coords.LvsR)
    if strcmp(coords.LvsR{i},'L')
        coords.isleft(i,1) = 1;
    else
        coords.isleft(i,1) = 0;
    end
end


% this is for flip
if cfg.flip_right
for i = 1:size(coords.MNI_coord,1)
    if coords.MNI_coord(i,1) <= 0
        coords.MNI_coord(i,1) = coords.MNI_coord(i,1)+2*abs(coords.MNI_coord(i,1));
    end
end
else
end
coords.isleft = zeros(length(coords.isleft),1);

% plot the brain and the sites

% PlotCoverageGroup(coords,cfg)
%% plot the sites in MNI space by using iELVis
addpath(genpath('/Users/chao/Desktop/function_tools/for_plot/CCEP_fMRI/'))
addpath(genpath('/Users/chao/Desktop/function_tools/for_plot/iELVis-master/'))
global globalFsDir;
globalFsDir ='/Volumes/CHAO_IRON_M/iELVis_working/Plot_Elelctrodes';
fsDir='/Volumes/CHAO_IRON_M/iELVis_working/Plot_Elelctrodes';
cd([fsDir]);
%plotting=0;
load('DDS_parc_colors.mat');
load('cdcol_stanford.mat');
cdcol.loc_yellow = hex2rgb('#fff301');


% asian race orange #ff7c01     [1 0.4863 0.0039]
% Black race purple #612696     [0.3804 0.1490 0.5882]
% white race green  #02a755     [0.0078 0.6549 0.3333]
% localization yellow #fff301   [1 0.9529 0.0039]




eleColors =[];

for i = 1:size(coords.channame)
%      if contains(coods.channame{i},'C17')|| contains(coods.channame{i},'C18')||contains(coods.channame{i},'C19')
%         eleColors(i,:) = [0.9216,0.5686,0.3059];
% %     elseif flag(i) == 2
% %         eleColors(i,:) = [0.9196,0.1412,0.3451]
%     else
        eleColors(i,:) =[cdcol.loc_yellow];
end

cfg=[];
cfg.view='r';
cfg.elecSize=12;
cfg.surfType='inflated';    
cfg.opaqueness=1;
cfg.ignoreDepthElec='n';
cfg.elecCoord=[coords.MNI_coord coords.isleft];
cfg.elecNames=coords.channame;
cfg.elecColors = eleColors;
cfg.elecColorScale=[0 1];
cfg.title = [];
cfg.backgroundColor = [1,1,1];
cfgOut=plotPialSurf_v2('fsaverage',cfg);




