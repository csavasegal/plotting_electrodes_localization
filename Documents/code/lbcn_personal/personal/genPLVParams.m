function plv_params = genPLVParams(project_name)

switch project_name
    case 'GradCPT'
        plv_params.t_win = [0 0.8]; %time window in each trial during which to compute PLV
        plv_params.blc = false;
    case 'Memoria'
        plv_params.t_win = [-0.5 6];
        plv_params.blc = true;
end

plv_params.noise_method = 'trials';
plv_params.noise_fields_trials= {'bad_epochs_HFO','bad_epochs_raw_HFspike'}; % can combine any of the bad_epoch fields in data.trialinfo (will take union of selected fields)
plv_params.freq_range = [0 32]; 
