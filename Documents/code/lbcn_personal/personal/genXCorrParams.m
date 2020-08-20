function xcorr_params = genXCorrParams(project_name)

xcorr_params.smooth = true;     % whether to smooth timecourses first
xcorr_params.sm_win = 0.1;      % in sec.
xcorr_params.nreps = 200;       % for permutation test
xcorr_params.maxwin = 0.1;      % window on each side of max xcorr to avg when comparing real to permuted xcorrs
xcorr_params.pre_event = -0.2;
xcorr_params.post_event = 1;
xcorr_params.noise_method = 'trials';
xcorr_params.noise_fields_trials= {'bad_epochs_HFO','bad_epochs_raw_HFspike'}; % can combine any of the bad_epoch fields in data.trialinfo (will take union of selected fields)
xcorr_params.noise_fields_timepts= {'bad_inds_HFO','bad_inds_raw_HFspike'}; % can combine any of the bad_epoch fields in data.trialinfo (will take union of selected fields)

if strcmp(project_name,'GradCPT')
    xcorr_params.blc = false;
else
    xcorr_params.blc = true;        % load baseline corrected data
end


