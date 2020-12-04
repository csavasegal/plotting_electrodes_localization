function SaveDataNihonKohden_Chao(sbj_name, project_name, block_name, dirs, refChan, epiChan, emptyChan)

%% load the data to define and eliminate bad channels

% Loop across blocks
for i = 1:length(block_name)
    bn = block_name{i};
    
    % Load globalVar
    fn = sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,bn);
    load(fn,'globalVar');
    
    data_dir = [dirs.original_data '/' sbj_name '/' bn]; % directory for saving data
    fname =  [dirs.original_data '/' sbj_name '/' bn '/' bn '.edf'];
    
    if strcmp(globalVar.center, 'Stanford')
        [hdr, D] = edfread(fname);
    elseif strcmp(globalVar.center, 'China')
        if strcmp(sbj_name, 'C18_33')
            [hdr,D] = edfread_China(fname,'targetsignals',[1:105]);
        elseif  strcmp(sbj_name, 'C18_35')
            [hdr,D] = edfread_China(fname,'targetsignals',[1:186]);
        elseif  strcmp(sbj_name, 'C18_38')
            [hdr,D] = edfread_China(fname,'targetsignals',[1:146]);
        elseif  strcmp(sbj_name, 'C18_42')
            [hdr,D] = edfread_China(fname,'targetsignals',[1:123]);
        elseif  strcmp(sbj_name, 'C18_32')
            [hdr,D] = edfread_China(fname,'targetsignals',[1:163]);
        else
            [hdr, D] = edfread_China(fname);
        end
    else
    end
    
    
    %% Add Exception for when channels don' have labels
    hdr.label =  hdr.label(~strcmp(hdr.label, 'POL')); 
    D = D(~strcmp(hdr.label, 'POL'),:);
            
    fs = size(D,2)/(hdr.records * hdr.duration);
    % hdr.records = number of chuncks 
    % hdr.duration = duration of each chunck 
    
    % Downsampling parameters
    target_fs = 1000; % 
    target_fs_comp = round(target_fs/5); % reduced fs for spectral data 
    
    if fs <= target_fs
        ecog_ds = 1;
    else
        ecog_ds = round(fs/target_fs); % decimate factor
    end
    pdio_ds = 1; %downsample for photodiode signals

    % Take the indices of the channels of interest
    pdio_oldinds = find(contains(hdr.label, 'DC'));
    pdio_newinds = [1:length(pdio_oldinds)]; %how to save data
    ecog_oldinds = find(~contains(hdr.label, 'EKG') & ~contains(hdr.label, 'DC') & ~contains(hdr.label, 'REF') & ~contains(hdr.label, 'Annotations')); %index in EDF file
    ecog_newinds = 1:length(ecog_oldinds);

    % Loop across channels
    channame = cell(size(ecog_newinds));
    for ei = 1:length(ecog_oldinds)
        if (ecog_newinds(ei)<10)
            chanlbl = ['0',num2str(ecog_newinds(ei))];
        else
            chanlbl = num2str(ecog_newinds(ei));
        end
        fp = sprintf('%s/iEEG%s_%s.mat',data_dir,bn,chanlbl);
        wave = squeeze(D(ecog_oldinds(ei),:,1));
        if (ecog_ds > 1)
            wave = decimate(double(wave),ecog_ds);
        end
        % Clean channel name
        channame_tpm = hdr.label{ecog_oldinds(ei)};
        channame_tpm = strrep(channame_tpm,'POL','');
        
        % This is to correct some chan labels from China
        if contains(channame_tpm, 'EEG') && contains (channame_tpm, '-')
            channame_tpm = strrep(channame_tpm,'EEG','');
            channame{ei} = strrep(channame_tpm,'-Ref','');
        else
            channame{ei} = strrep(channame_tpm,'Ref','');
        end    
        save(fp,'wave','fs','channame')
        disp(['Saving chan ',chanlbl,' ',channame{ei}])
    end
    
    
    for pi = 1:length(pdio_oldinds)
        chanlbl = ['0',num2str(pdio_newinds(pi))];
        fp = sprintf('%s/Pdio%s_%s.mat',data_dir,bn,chanlbl);
        anlg = squeeze(D(pdio_oldinds(pi),:,1));
        if (pdio_ds > 1)
            anlg = decimate(double(anlg),pdio_ds);
        end
        save(fp,'anlg','fs')
        disp(['Saving pdio ',chanlbl])
    end
    
    %% Update global variable
    
    % Plot the pdio channels (pdio_oldinds)
    % Prompt asking to visually identify the photodiode channel
    % add the photodiode channel label the globalVar
    
    
    globalVar.iEEG_rate = fs/ecog_ds;
    globalVar.Pdio_rate = fs/pdio_ds;
    globalVar.fs_comp= target_fs_comp;
    globalVar.channame = channame;
    globalVar.chanLength = length(wave);
    globalVar.nchan = length(globalVar.channame);
    globalVar.refChan = refChan;
    globalVar.epiChan = epiChan; 
    globalVar.emptyChan = emptyChan;
    
    save(fn,'globalVar');
    disp('globalVar updated')

end
