%% pipeline for Plotting, Created by CSS for Chao

%You need to create the SubjVar in order to have access to the different
%networks. I have sent you the SubjVar for the four patients that are
%important in this study. Let me know if you need anymore patients and I
%will create the subj variable because there is a big change that it
%requires more exceptions.

CreateSubjVar_CSS_forBeijing(sbj_name, comp_root, server_root, code_root)
%this is the script that you need to run to create it 
%in it, there are four more scripts that I edited to run:
%localizeElec_CSS_forBeijing & subj2AvgBrainCustom_CSS_forBeijing



%% Other plotting that you may need: 
%I created the PlotMulipleSubj_highlightelec script that should
%not be run as function, but should be opened up and run independently 
%This allows you plot multiple highlighted electrodes from one patient on
%the same MNI brain

%If want to plot one highlighted electrode in one patient in the native
%brain, you can use the PlotCoverageElect lower

%Can also use the plot3 function plot multiple brains in the same space

%% plotting all the electrodes from different patients in different colors
%you do not need to define a cfg for this plot
load([dirs.code_root filesep 'vizualization/Colin_cortex_left.mat']);
cmcortex.left = cortex;
load([dirs.code_root filesep 'vizualization/Colin_cortex_right.mat']);
cmcortex.right = cortex;

sbj_names = {'C18_49', 'C18_29','C18_37','C19_62'} %need to do it for 62 too

views = {'lateral', 'lateral', 'medial', 'medial', 'ventral', 'ventral'};
hemis = {'left', 'right', 'left', 'right', 'left', 'right'};


for i = 1:length(views)
    subplot(3,2,i)
    for z = 1:size(sbj_names,2)
        
        ctmr_gauss_plot(cmcortex.(hemis{i}),[0 0 0], 0, hemis{i}, views{i})
        alpha(0.5)
        sbj_name = sbj_names{z};
        dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root);
        load([dirs.original_data filesep sbj_name filesep 'subjVar_' sbj_name '.mat']);
        
        %         subplot(3,2,i)
        %         ctmr_gauss_plot(cmcortex.(hemis{i}),[0 0 0], 0, hemis{i}, views{i})
        %         alpha(0.5)
        
        % Only plot on the relevant hemisphere
        if z == 1
            for ii = 1:length(subjVar.elinfo.MNI_coord)
                if (strcmp(hemis{i}, 'left') == 1 && subjVar.elinfo.MNI_coord(ii,1) > 0) || (strcmp(hemis{i}, 'right') == 1 && subjVar.elinfo.MNI_coord(ii,1) < 0)
                else
                    plot3(subjVar.elinfo.MNI_coord(ii,1),subjVar.elinfo.MNI_coord(ii,2),subjVar.elinfo.MNI_coord(ii,3), 'o', 'MarkerSize', marker_size, 'MarkerFaceColor', 'k', 'MarkerEdgeColor', 'k');
                end
            end
        elseif z==2
            for ii = 1:length(subjVar.elinfo.MNI_coord)
                if (strcmp(hemis{i}, 'left') == 1 && subjVar.elinfo.MNI_coord(ii,1) > 0) || (strcmp(hemis{i}, 'right') == 1 && subjVar.elinfo.MNI_coord(ii,1) < 0)
                else
                    plot3(subjVar.elinfo.MNI_coord(ii,1),subjVar.elinfo.MNI_coord(ii,2),subjVar.elinfo.MNI_coord(ii,3), 'o', 'MarkerSize', marker_size, 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'k');
                end
            end
        else
            for ii = 1:length(subjVar.elinfo.MNI_coord)
                if (strcmp(hemis{i}, 'left') == 1 && subjVar.elinfo.MNI_coord(ii,1) > 0) || (strcmp(hemis{i}, 'right') == 1 && subjVar.elinfo.MNI_coord(ii,1) < 0)
                else
                    plot3(subjVar.elinfo.MNI_coord(ii,1),subjVar.elinfo.MNI_coord(ii,2),subjVar.elinfo.MNI_coord(ii,3), 'o', 'MarkerSize', marker_size, 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
                end
            end
        end
    end
    clear subjVar
end


%% Plotting multiple electrodes on the same brain (using MNI) & highlighting specific electrodes in each brain

%This creates the MNI space brain
load([dirs.code_root filesep 'vizualization/Colin_cortex_left.mat']);
cmcortex.left = cortex;
load([dirs.code_root filesep 'vizualization/Colin_cortex_right.mat']);
cmcortex.right = cortex;

sbj_names = {'C18_49', 'C18_29','C18_37','C19_62'} %need to do it for 62 too
cfg.chan_highlight_total = {'114','88','176','111'}
cfg.correction_factor = 0;
cfg.alpha = 0.3;

load([dirs.code_root filesep 'vizualization/Colin_cortex_left.mat']);
cmcortex.left = cortex;
load([dirs.code_root filesep 'vizualization/Colin_cortex_right.mat']);
cmcortex.right = cortex;
PlotMultipleSubj_highlightelec %open this script; need to have the cfg load

%may need to run the script directly in there, or need to change the
%function so that it takes in the sbj_names parameters instead of subjVar 
%But it is better to fun the script as a pipeline NOT as a function


%% for one patient with a loaded subjVar
%load a SubjVariable for this one; or can use the script above
marker_size = 5;
figureDim = [0 0 .4 1];
f1 = figure('units', 'normalized', 'outerposition', figureDim);
views = {'lateral', 'lateral', 'medial', 'medial', 'ventral', 'ventral'};
hemis = {'left', 'right', 'left', 'right', 'left', 'right'};
for i = 1:length(views)
    subplot(3,2,i)
    ctmr_gauss_plot(cmcortex.(hemis{i}),[0 0 0], 0, hemis{i}, views{i})
    alpha(0.5)
    % Only plot on the relevant hemisphere
    for ii = 1:length(subjVar.elinfo.MNI_coord)
        if (strcmp(hemis{i}, 'left') == 1 && subjVar.elinfo.MNI_coord(ii,1) > 0) || (strcmp(hemis{i}, 'right') == 1 && subjVar.elinfo.MNI_coord(ii,1) < 0)
        else
            plot3(subjVar.elinfo.MNI_coord(ii,1),subjVar.elinfo.MNI_coord(ii,2),subjVar.elinfo.MNI_coord(ii,3), 'o', 'MarkerSize', marker_size, 'MarkerFaceColor', 'k', 'MarkerEdgeColor', 'k');
        end
    end
end

%% if you want to plot just one selected electrode in ONE patient in their native brain
% for plotting a specific electrode location
cfg.plot_label = 'Destr_ind';
cfg.views = {'lateral', 'ventral'};
cfg.hemis = {'right', 'right'};
cfg.label_fontsize = 14;
cfg.correction_factor = 10;
cfg.highlight_col = [1 0 0];
cfg.correction_factor = 0;
cfg.alpha = 0.3;
cfg.chan_highlight = 83;
PlotCoverageElect(subjVar, cfg)
