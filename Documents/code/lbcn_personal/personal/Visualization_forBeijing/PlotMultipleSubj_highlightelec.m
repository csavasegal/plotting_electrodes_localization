%PlotMultipleSubj_highlightelec
%function PlotMultipleSubj_highlightelec(subjVar, cfg)

% This function plots the electrodes on native brain, requiring only
% subjVar (which should have elinfo table), correction factor (default: 0)
% and ifsave (true/false) to save the plots to savefold
% (savefold/Individual_Coverage/[subj_name]).
%there is a function at the bottom that is being run in this script


load('cdcol_2018.mat')
marker_size = 20; %used for the electrodes
marker_size_high = 20; %used for the highlight electrodes



MarkerFaceColor = cdcol.light_cadmium_red;
MarkerFaceColor_high = MarkerFaceColor;

cfg.highlight_col = [1 0 0];


%figure('units', 'normalized', 'outerposition', figureDim);

% figure('units', 'normalized', 'outerposition', figureDim)
views = {'lateral', 'anterior', 'posterior'};

if strcmp(subjVar.elinfo.LvsR{cfg.chan_highlight}, 'L')
    hemis = {'left','left','left'};
else
    hemis = {'right', 'right', 'right'};
end


for z = 1:size(sbj_names,2)
    sbj_name = sbj_names{z};
    dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root);
    load([dirs.original_data filesep sbj_name filesep 'subjVar_' sbj_name '.mat']);
    cfg.chan_highlight = str2num(cfg.chan_highlight_total{z})
    for i = 1:size(subjVar.elinfo,1)
        elec_init{i} =  subjVar.elinfo.FS_label{i}(1:2)
    end
    elec_init = unique(elec_init)
    cols = hsv(length(elec_init))
    
    
    %added this if on both hemispheres
    if strcmp(subjVar.elinfo.LvsR{cfg.chan_highlight}, 'L')
        hemis = {'left','left','left'};
    else
        hemis = {'right', 'right', 'right'};
    end
    
    for i = 1:size(subjVar.elinfo,1)
        init = subjVar.elinfo.FS_label{i}(1:2)
        MarkerFaceColor(i,:) = cols(find(strcmp(init, elec_init)),:)
        %MarkerFaceColor(i,:) = [0 0 1];
        MarkerFaceColor(i,:) = [0 0 0];
        
    end
    
%     if z==1
%         cfg.highlight_col = [1 0 0]
%     elseif z == 2
%         cfg.highlight_col = [0 1 1]
%     elseif z == 3
%         cfg.highlight_col = [1 0 1] %magenta
%     elseif z==4
%         cfg.highlight_col = [0 0 1] %blue
%     end 

    if z==4|| z==5|| z==6|| z==7
        cfg.highlight_col = [1 0 1] %magenta
    elseif  z==1 || z==2|| z==3 
        cfg.highlight_col = [0 0 1]
    end 

    
    for i = 1:length(views)
        subplot(1,3,i)
        
        %this creates the MNI brain
        ctmr_gauss_plot(cmcortex.(hemis{i}),[0 0 0], 0, hemis{i}, views{i})
        alpha(0.5)
        %     subplot(1,2,i)
        
        %coords_plot = CorrectElecLoc(subjVar.elinfo.LEPTO_coord, views{i}, hemis{i}, cfg.correction_factor);
        coords_plot = CorrectElecLoc(subjVar.elinfo.MNI_coord, views{i}, hemis{i}, cfg.correction_factor);
        %ctmr_gauss_plot(subjVar.cortex.(hemis{i}),[0 0 0], 0, hemis{i}, views{i})
        
        for ii = 1:length(coords_plot)
            if (strcmp(hemis{i}, 'left') && strcmpi(subjVar.elinfo.LvsR{ii},'L'))
                plot3(coords_plot(ii,1),coords_plot(ii,2),coords_plot(ii,3), '.', 'MarkerSize', marker_size, 'MarkerFaceColor', MarkerFaceColor(ii,:), 'MarkerEdgeColor', MarkerFaceColor(ii,:));
            elseif (strcmp(hemis{i}, 'right') && strcmpi(subjVar.elinfo.LvsR{ii},'R'))
                plot3(coords_plot(ii,1),coords_plot(ii,2),coords_plot(ii,3), '.', 'MarkerSize', marker_size, 'MarkerFaceColor', MarkerFaceColor(ii,:), 'MarkerEdgeColor', MarkerFaceColor(ii,:));
            end
        end
        
        if ~isempty(cfg.chan_highlight)
            for hi = 1:length(cfg.chan_highlight)
                if (strcmp(hemis{i}, 'left') && strcmpi(subjVar.elinfo.LvsR{cfg.chan_highlight(hi)},'L'))
                    plot3(coords_plot(cfg.chan_highlight(hi),1),coords_plot(cfg.chan_highlight(hi),2),coords_plot(cfg.chan_highlight(hi),3), 'o', 'MarkerSize', marker_size_high, 'MarkerFaceColor', cfg.highlight_col(hi,:), 'MarkerEdgeColor',  cfg.highlight_col(hi,:));
                elseif (strcmp(hemis{i}, 'right') && strcmpi(subjVar.elinfo.LvsR{cfg.chan_highlight(hi)},'R'))
                    plot3(coords_plot(cfg.chan_highlight(hi),1),coords_plot(cfg.chan_highlight(hi),2),coords_plot(cfg.chan_highlight(hi),3), 'o', 'MarkerSize', marker_size_high, 'MarkerFaceColor', cfg.highlight_col(hi,:), 'MarkerEdgeColor', cfg.highlight_col(hi,:));
                else
                end
            end
        end
        
        alpha(cfg.alpha)
    end
    

end


%% Function to optimize electrode location for plotting
function coords_plot = CorrectElecLoc(coords, views, hemisphere, correction_factor)
coords_plot = coords;
switch views
    case 'lateral'
        if strcmp(hemisphere, 'right')
            coords_plot(:,1) = coords_plot(:,1) + correction_factor;
        elseif strcmp(hemisphere, 'left')
            coords_plot(:,1) = coords_plot(:,1) - correction_factor;
        end
    case 'medial'
        if strcmp(hemisphere, 'right')
            coords_plot(:,1) = coords_plot(:,1) - correction_factor;
        elseif strcmp(hemisphere, 'left')
            coords_plot(:,1) = coords_plot(:,1) + correction_factor;
        end
    case 'ventral'
        coords_plot(:,3) = coords_plot(:,3) - correction_factor;
end
end
