


sbj_names = {'C18_31','C18_32','C18_35','C18_38','C18_39','C18_41','C18_42'}

for i=1:size(sbj_names,2)

sbj_name = sbj_names{i}
block_names = BlockBySubj(sbj_name,project_name)

block_names = BlockBySubj(sbj_name,project_name)


for i=1:length(block_names)
    bn = block_names{i}
    %load trialinfo
    dirs = InitializeDirs(project_name, sbj_name, comp_root, server_root, code_root);
    load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,bn));
    %load[globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
    %load('/Volumes/CSS_backup/data/psychData/S14_66_CZ/S14_66_CZ_03/trialinfo_S14_66_CZ_03.mat')
    
    load(sprintf('%s/%s/%s/trialinfo_%s.mat',dirs.psych_root,sbj_name,bn,bn))
    for i = 1:size(trialinfo,1)
        if strcmp(trialinfo.condNames{i}, 'faces');
            
            trialinfo.condFaces{i} = 'faces';
        else
            trialinfo.condFaces{i} = 'other';
        end
        
    end
    save([globalVar.psych_dir '/trialinfo_', bn '.mat'], 'trialinfo');
    %clear trialinfo
end 

load(sprintf('%s/originalData/%s/global_%s_%s_%s.mat',dirs.data_root,sbj_name,project_name,sbj_name,block_names{1}),'globalVar');
elecs = setdiff(1:globalVar.nchan,globalVar.refChan);


epoch_params = genEpochParams(project_name, 'stim');
for i = 1:length(block_names)
    bn = block_names{i};
    %parfor ei = 1:length(elecs)
    parfor ei = 72
         EpochDataAll(sbj_name, project_name, bn, dirs,elecs(ei), 'HFB', [],[], epoch_params,'Band')
          %EpochDataAll(sbj_name, project_name, bn, dirs, elecs(ei), 'SpecDense', [],[], epoch_params,'Spec')
    end
end
end 