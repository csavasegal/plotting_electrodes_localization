
fname = '/Volumes/CSS_backup/forSu/S142_seizure1_part1/S142_seizure1_part1.edf'
data_dir = '/Volumes/CSS_backup/forSu/S142_seizure1_part1'

[hdr, D] = edfread(fname);


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