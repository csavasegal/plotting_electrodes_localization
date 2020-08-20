function stim_onset = EventIdentifierExceptions_moreTriggers(stim_onset, stim_offset, sbj_name,project_name, bn)

if strcmp(sbj_name, 'S15_87_RL') && strcmp(project_name, 'Calculia') && (strcmp(bn, 'E15-282_0025') || strcmp(bn, 'E15-282_0026') || strcmp(bn, 'E15-282_0027'))
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S15_87_RL') && (strcmp(bn, 'E15-282_0023'))
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S15_92_MR') && strcmp(project_name, 'Calculia')
    stim_onset = stim_onset(7:end-1);
elseif strcmp(sbj_name, 'S16_93_MA') && (strcmp(bn, 'E16-022_0012'))
    stim_onset = stim_onset(2:end);
elseif strcmp(sbj_name, 'S16_93_MA') && strcmp(bn, 'E16-022_0013')
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S16_93_MA') && strcmp(bn, 'E16-022_0014')
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S16_93_MA') && strcmp(bn, 'E16-022_0015')
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S16_93_MA') && strcmp(bn, 'E16-022_0016')
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S16_93_MA') && strcmp(bn, 'E16-022_0017')
    stim_onset = stim_onset(1:end-1);
    
elseif strcmp(sbj_name, 'S16_94_DR') && (strcmp(bn, 'E16-168_0020'))
    stim_onset = stim_onset(2:end-1);
elseif strcmp(sbj_name, 'S16_94_DR') && (strcmp(bn, 'E16-168_0021'))
    stim_onset = stim_onset(2:end-1);
elseif strcmp(sbj_name, 'S16_94_DR') && (strcmp(bn, 'E16-168_0022'))
    stim_onset = stim_onset(3:end);
    % elseif strcmp(sbj_name, 'S16_94_DR') && (strcmp(bn, 'E16-168_0023'))
    %     stim_onset = stim_onset(9:end-4);
elseif strcmp(sbj_name, 'S14_62_JW') && (strcmp(bn, 'S14_62_42'))
    stim_onset = stim_onset(2:end);
elseif strcmp(sbj_name, 'S14_62_JW') && (strcmp(bn, 'S14_62_43'))
    stim_onset = stim_onset(2:end);
% elseif strcmp(sbj_name, 'S14_62_JW') && (strcmp(bn, 'S14_62_44'))
%     stim_onset = stim_onset(3:end);
elseif strcmp(sbj_name, 'S14_64_SP') && (strcmp(bn, 'S14_64_SP_12'))
    stim_onset = stim_onset(3:end);
elseif strcmp(sbj_name, 'S14_64_SP') && (strcmp(bn, 'S14_64_SP_15'))
    stim_onset = stim_onset(2:end);
    
elseif strcmp(sbj_name, 'S15_89_JQa') && (strcmp(bn, 'E15-497_0008'))
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S15_89_JQa') && (strcmp(bn, 'E15-497_0009'))
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S15_89_JQa') && (strcmp(bn, 'E15-497_0010'))
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S15_89_JQa') && (strcmp(bn, 'E15-497_0011'))
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S15_89_JQa') && (strcmp(bn, 'E15-497_0012'))
    stim_offset = stim_offset(1:end-1);
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S15_89_JQa') && (strcmp(bn, 'E15-497_0013'))
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S15_89_JQa') && (strcmp(bn, 'E15-497_0014'))
    stim_onset = stim_onset(1:end-6);
elseif strcmp(sbj_name, 'S15_89_JQa') && (strcmp(bn, 'E15-497_0015'))
    stim_onset = stim_onset(1:end-1);
    
elseif strcmp(sbj_name, 'S15_91_RP') && (strcmp(bn, 'E15_695_0017')) || (strcmp(bn, 'E15_695_0018'))
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S16_96_LF') && (strcmp(bn, 'E16-429_0006'))
    stim_onset = stim_onset(1:end-2);
elseif strcmp(sbj_name, 'S16_96_LF') && (strcmp(bn, 'E16-429_0007'))
    stim_onset = stim_onset(1:end-3);
elseif strcmp(sbj_name, 'S15_90_SO') && (strcmp(bn, 'E15-579_0011'))
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S15_90_SO') && (strcmp(bn, 'E15-579_0015'))
    stim_onset = stim_onset(1:end-1);
    
elseif strcmp(sbj_name, 'S16_97_CHM') && (strcmp(bn, 'E16-517_0015'))
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S16_97_CHM') && (strcmp(bn, 'E16-517_0016'))
    stim_onset = stim_onset(1:end-1);
    % elseif strcmp(sbj_name, 'S16_97_CHM') && (strcmp(bn, 'E16-517_0014'))
    %     stim_onset = stim_onset(1:end-1);  '
    
elseif strcmp(sbj_name, 'S17_105_TA') && (strcmp(bn, 'E17-58_0014'))
    stim_onset = stim_onset(1:end-4);

elseif strcmp(sbj_name, 'S14_66_CZ') && (strcmp(bn, 'S14_66_CZ_26'))
    stim_onset = stim_onset(5:end-1);
elseif strcmp(sbj_name, 'S14_66_CZ') && (strcmp(bn, 'S14_66_CZ_27'))
    stim_onset = stim_onset(3:end);
elseif strcmp(sbj_name, 'S14_66_CZ') && (strcmp(bn, 'S14_66_CZ_29'))
    stim_onset = stim_onset(3:end);
elseif strcmp(sbj_name, 'S14_66_CZ') && (strcmp(bn, 'S14_66_CZ_30'))
    stim_onset = stim_onset(12:end);
elseif strcmp(sbj_name, 'S14_66_CZ') && (strcmp(bn, 'S14_66_CZ_37'))
    stim_onset = stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S14_66_CZ') && (strcmp(bn, 'S14_66_CZ_40'))
    stim_onset = stim_onset(1:end-1);
    
    
elseif strcmp(sbj_name, 'S14_67_RH') && (strcmp(bn, 'S14_67_RH_05')) % added 01/17
    stim_onset = stim_onset(1:end-2);
elseif strcmp(sbj_name, 'S12_41_KS') && (strcmp(bn, 'KS_25'))
    %stim_onset = stim_onset(2:end-1);
    stim_onset = stim_onset(2:end);
elseif strcmp(sbj_name, 'S12_41_KS') && (strcmp(bn, 'KS_26'))
    stim_onset = stim_onset(2:end-19);
    %stim_onset = stim_onset(2:end-4);
elseif strcmp(sbj_name, 'S12_41_KS') && (strcmp(bn, 'KS_27'))
    stim_onset = stim_onset(2:end-1);
    
elseif strcmp(sbj_name, 'S13_53_KS2') && (strcmp(bn, 'KS2_24'))
    stim_onset = stim_onset(2:end);
elseif strcmp(sbj_name, 'S13_53_KS2') && (strcmp(bn, 'KS2_25'))
    stim_onset = stim_onset(2:end-1);
elseif strcmp(sbj_name, 'S13_53_KS2') && (strcmp(bn, 'KS2_26'))
    stim_onset = stim_onset(2:end-1);
elseif strcmp(sbj_name, 'S13_53_KS2') && (strcmp(bn, 'KS2_27'))
    stim_onset = stim_onset(3:end-1);
elseif strcmp(sbj_name, 'S13_53_KS2') && (strcmp(bn, 'KS2_28'))
    stim_onset = stim_onset(3:end-1);
elseif strcmp(sbj_name, 'S13_53_KS2') && (strcmp(bn, 'KS2_29'))
    stim_onset = stim_onset(3:end);

elseif strcmp(sbj_name, 'S13_57_TVD') && (strcmp(bn, 'TVD_23'))
    stim_onset = stim_onset(2:end-1); 
elseif strcmp(sbj_name, 'S13_57_TVD') && (strcmp(bn, 'TVD_24'))
    stim_onset = stim_onset(2:end-1);  
elseif strcmp(sbj_name, 'S13_57_TVD') && (strcmp(bn, 'TVD_25'))
    stim_onset = stim_onset(2:end-1);
elseif strcmp(sbj_name, 'S13_57_TVD') && (strcmp(bn, 'TVD_26'))
    stim_onset = stim_onset(2:end-1);
elseif strcmp(sbj_name, 'S14_67_RH') && (strcmp(bn, 'S14_67_RH_22')) && (strcmp(project_name, 'Scrambled'))
    stim_onset = stim_onset(1:end-1);
    
elseif strcmp(sbj_name, 'S14_68_NB') && (strcmp(bn, 'S14_68_NB_15')) % added 01/29
    stim_onset = stim_onset(1:end-1); 
elseif strcmp(sbj_name, 'S19_136_AG')
    stim_onset = stim_onset(1:end-9);   
elseif strcmp(sbj_name, 'S15_91_RP') && (strcmp(project_name, 'Calculia')) % (strcmp(bn, 'E15-695_0017')) & block 18
    stim_onset = stim_onset(1:end-1); 
    
 %VTC
  elseif strcmp(sbj_name, 'S14_70_AP') && strcmp(bn,'S14_70_AP_05')
    stim_onset = stim_onset(1:end-6);     
    
 %Calculia
  elseif strcmp(sbj_name, 'S16_95_JOB') && strcmp(bn,'E16-345_0019')
    stim_onset = stim_onset(1:end-6);      
    
%TEMPERORARY
end
end

