function pac_params = genPACParams(project_name)

switch project_name
    case 'GradCPT'
        pac_params.blc = false;
    case 'Memoria'
        pac_params.blc = true;
    case 'MMR'
        pac_params.blc = true;
end
pac_params.type = 'fullsignal';
pac_params.phase_freq = [0 32]; % range of freqs used for phase (Hz)
pac_params.amp_freq = [16 256]; % range of freqs used for phase (Hz)
pac_params.nreps = 200; % number of permutations to estimate surrogate PAC distribution 

pac_params.noise_method = 'trials';
pac_params.noise_fields_trials= {'bad_epochs_HFO','bad_epochs_raw_HFspike'}; % can combine any of the bad_epoch fields in data.trialinfo (will take union of selected fields)
