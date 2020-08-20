function vid_params = genVidParams(project_name)

if strcmp(project_name,'Memoria')
    vid_params.t_stim = [0 1]; % time relative to each stim. onset
    vid_params.t_bl = [-0.5 0];
else
    vid_params.t_stim = [0 5];
    vid_params.t_bl = [-0.2 0];
end

vid_params.cond = 'math';
vid_params.colmap = 'PiYG'; %'RedsWhite','RedBlue'
vid_params.center_zero = true; % symmetric (i.e. colormap centered at 0)
vid_params.scale_neg = true; % if want to exaggerate the negative values (so easier to visualize)
vid_params.scale_neg_factor = 2; % factor by which to multiply negative values
vid_params.clim = [-0.15 0.15];
vid_params.MarkSizeEffect = 35;
vid_params.brain_alpha = 0.7; % transparency of cortex


