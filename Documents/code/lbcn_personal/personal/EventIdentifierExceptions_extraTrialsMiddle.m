function all_stim_onset = EventIdentifierExceptions_extraTrialsMiddle(all_stim_onset, StimulusOnsetTime, sbj_name, project_name, bn, n_stim_per_trial)

if strcmp(sbj_name, 'S13_46_JDB') && strcmp(project_name, 'MMR') && strcmp(bn, 'JDB_01')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')
elseif strcmp(sbj_name, 'S13_54_KDH') && strcmp(project_name, 'MMR') && strcmp(bn, 'KDH_03')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')
elseif  strcmp(sbj_name, 'S13_59_SRR') && strcmp(project_name, 'MMR') && strcmp(bn, 'SRR_02')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')
elseif strcmp(sbj_name, 'S14_65_HN') && strcmp(project_name, 'MMR') && strcmp(bn, 'S14_65_HN_05')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')
elseif strcmp(sbj_name, 'S15_81_RM') && strcmp(project_name, 'MMR') && strcmp(bn, 'S15_81_RM_04')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')
elseif strcmp(sbj_name, 'S11_26_SRb') && strcmp(project_name, 'UCLA') && strcmp(bn, 'SRb-17')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')
elseif strcmp(sbj_name, 'S15_89_JQa') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E15-497_0008')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')
elseif strcmp(sbj_name, 'S10_15_KB2') && strcmp(bn, 'KB0510_01')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')
elseif strcmp(sbj_name, 'S12_41_KS') && strcmp(project_name, 'MMR') && strcmp(bn, 'KS_13')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')  
elseif strcmp(sbj_name, 'S11_25_DL') && strcmp(project_name, 'UCLA') && strcmp(bn, 'dl_44')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')  
elseif strcmp(sbj_name, 'S09_07_CM') && strcmp(project_name, 'UCLA') && strcmp(bn, 'ST07-07')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless') 
elseif strcmp(sbj_name, 'S15_89_JQb') && strcmp(project_name, 'Calculia') && strcmp(bn,'E17-152_0027') || strcmp(bn,'E17-152_0029') || strcmp(bn,'E17-152_0026') 
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')  
% elseif strcmp(sbj_name, 'S16_94_DR') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E16-168_0021');
%     all_stim_onset = StimulusOnsetTime;
%     warning('using psychtoolbox output - diagnostic plots are meaningless')
% elseif strcmp(sbj_name, 'S16_94_DR') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E16-168_0023');
%     all_stim_onset = StimulusOnsetTime;
%     warning('using psychtoolbox output - diagnostic plots are meaningless')
% elseif strcmp(sbj_name, 'S16_94_DR') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E16-168_0039');
%     all_stim_onset = all_stim_onset;
%     warning('using psychtoolbox output - diagnostic plots are meaningless')
    % elseif strcmp(sbj_name, 'S15_89_JQa') && (strcmp(bn, 'E15-497_0012'))
    %     all_stim_onset = StimulusOnsetTime;
    %     warning('using psychtoolbox output - diagnostic plots are meaningless')
    % elseif strcmp(sbj_name, 'S15_89_JQa') && (strcmp(bn, 'E15-497_0012'))
elseif strcmp(sbj_name, 'S16_94_DR') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E16-168_0020')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')
elseif strcmp(sbj_name, 'S16_94_DR') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E16-168_0023')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')
elseif strcmp(sbj_name, 'S16_96_LF') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E16-429_0006')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')    
elseif strcmp(sbj_name, 'S16_96_LF') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E16-429_0015')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')    
elseif strcmp(sbj_name, 'S16_97_CHM') && strcmp(project_name, 'Calculia') && strcmp(bn,'E16-517_0014')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless') 
elseif strcmp(sbj_name, 'S14_64_SP') && strcmp(project_name, 'Calculia') && strcmp(bn,'S14_64_SP_13') ||  strcmp(bn,'S14_64_SP_15')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless') 
 
elseif strcmp(sbj_name, 'S17_105_TA') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E17-58_0014')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')

elseif strcmp(sbj_name, 'S15_82_JB') && strcmp(project_name, 'MMR') && strcmp(bn, 'S15_82_JB_07')
    all_stim_onset = StimulusOnsetTime;    
    warning('using psychtoolbox output - diagnostic plots are meaningless')

elseif strcmp(sbj_name, 'S11_26_SRb') && strcmp(project_name, 'UCLA') && strcmp(bn, 'SRb-17')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')

elseif strcmp(sbj_name, 'S15_89_JQa') && strcmp(project_name, 'Calculia') && strcmp(bn, 'S14_80_KB_03')
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless')

elseif strcmp(sbj_name, 'S14_66_CZ') && strcmp(project_name, 'Calculia') && strcmp(bn,'S14_66_CZ_30') || strcmp(bn,'S14_66_CZ_37') || strcmp(bn,'S14_66_CZ_40') 
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless') 
%MFA
elseif strcmp(sbj_name, 'S13_52_FVV') && strcmp(project_name, 'MFA') 
    all_stim_onset = StimulusOnsetTime;
    warning('using psychtoolbox output - diagnostic plots are meaningless') 

elseif strcmp(sbj_name, 'S16_94_DR') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E16-168_0039')
    all_stim_onset = StimulusOnsetTime;    
    warning('using psychtoolbox output - diagnostic plots are meaningless')
    all_stim_onset = reshape(all_stim_onset,n_stim_per_trial,length(all_stim_onset)/n_stim_per_trial)'

%ReadNumWord
elseif strcmp(sbj_name, 'S12_38_LK') && strcmp(project_name, 'ReadNumWord') && strcmp(bn, 'LK_02')
    all_stim_onset = StimulusOnsetTime;    
    warning('using psychtoolbox output - diagnostic plots are meaningless')
    all_stim_onset = reshape(all_stim_onset,n_stim_per_trial,length(all_stim_onset)/n_stim_per_trial)'
    

end
    
    
end


