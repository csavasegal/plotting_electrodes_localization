function all_stim_onset = EventIdentifierExceptions_oneTrialLess(all_stim_onset, sbj_name,project_name, bn)


if strcmp(sbj_name, 'S14_62_JW') && strcmp(project_name, 'MMR')
    all_stim_onset = all_stim_onset(1:end-1); % DANGEROUS EXCEPTION
elseif strcmp(sbj_name, 'S14_66_CZ') && strcmp(project_name, 'MMR')
    all_stim_onset = all_stim_onset(1:end-1); % DANGEROUS EXCEPTION
elseif strcmp(sbj_name, 'S14_67_RH') && strcmp(bn, 'S14_67_RH_01')
    all_stim_onset = all_stim_onset(1:end-1); % DANGEROUS EXCEPTION
elseif strcmp(sbj_name, 'S14_67_RH') && strcmp(bn, 'S14_67_RH_04')
    all_stim_onset = all_stim_onset(1:end-2); % DANGEROUS EXCEPTION
elseif strcmp(sbj_name, 'S15_83_RR') && strcmp(bn, 'S15_83_RR_08')
    all_stim_onset = all_stim_onset(1:end-1); % DANGEROUS EXCEPTION
elseif strcmp(sbj_name, 'S15_92_MR') && strcmp(bn, 'E15-770_0018')
    all_stim_onset = all_stim_onset(1:end-1); % DANGEROUS EXCEPTION
elseif strcmp(sbj_name, 'S12_34_TC') && strcmp(bn, 'TC0212-10')
    all_stim_onset = all_stim_onset(1:end-4); % DANGEROUS EXCEPTION
elseif strcmp(sbj_name, 'S13_54_KDH') && strcmp(project_name, 'MMR') && strcmp(bn, 'KDH_04')
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S14_65_HN') && strcmp(project_name, 'MMR') && strcmp(bn, 'S14_65_HN_02')
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S14_68_NB') && strcmp(project_name, 'MMR') && strcmp(bn, 'S14_68_NB_01')
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S15_89_JQa') && strcmp(project_name, 'MMR') && (strcmp(bn, 'E15-497_0007') ||  strcmp(bn,'E15-497_0006'))
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S16_100_AF') && strcmp(project_name, 'MMR') && strcmp(bn, 'E16-950_0003')
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S16_97_CHM') && strcmp(project_name, 'MMR') && strcmp(bn, 'E16-517_0008')
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S15_84_KG') && strcmp(project_name, 'MMR') && strcmp(bn, 'S15_84_KG_02')
    all_stim_onset = all_stim_onset(1:end-2);
elseif strcmp(sbj_name, 'S15_84_KG') && strcmp(project_name, 'MMR') && strcmp(bn, 'S15_84_KG_04')
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S14_64_SP') && strcmp(project_name, 'Calculia') && strcmp(bn,'S14_64_SP_13')
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S11_29_RB') && strcmp(bn,'RB0911-20')
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S14_80_KBa') && strcmp(bn,'S14_80_KB_03')
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S15_82_JB') && strcmp(bn, 'S15_82_JB_06') && strcmp(project_name, 'MMR')
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S11_28_LS') && strcmp(bn, 'LS0911-08')
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(sbj_name, 'S12_43_HH') && strcmp(bn, 'HH-13')
    all_stim_onset = all_stim_onset(1:30,:);
    % elseif strcmp(sbj_name, 'S15_89_JQa') && strcmp(bn, 'E15-497_0014')
    %     all_stim_onset = all_stim_onset(1:end-1);
    % elseif strcmp(sbj_name,  'S16_96_LF') && strcmp(bn, 'E16-429_0015')
    %     all_stim_onset = all_stim_onset(1:end-1);
    %Calculia Production
elseif strcmp(sbj_name, 'S18_126_DF') && strcmp(bn, 'E18-602_0010')
    all_stim_onset = all_stim_onset(1:30,:);
elseif strcmp(sbj_name, 'S14_78_RSb') && strcmp(bn, 'S14_78_RSb_02')|| strcmp(bn, 'S14_78_RSb_03')|| strcmp(bn, 'S14_78_RSb_06')
    all_stim_onset = all_stim_onset(1:end-1);
%ReadNumWord
elseif strcmp(sbj_name, 'S11_26_SRa') && strcmp(bn, 'SR-07')
    all_stim_onset = all_stim_onset(1:end-8);
elseif strcmp(sbj_name, 'S11_26_SRa') && strcmp(bn, 'SR-13')
    all_stim_onset = all_stim_onset(1:end-1);    
%SevenHeaven
elseif strcmp(sbj_name, 'S16_96_LF') && strcmp(bn, 'E16-429_0003')
    all_stim_onset = all_stim_onset(1:end-1);    
elseif strcmp(sbj_name,  'S16_95_JOB') && strcmp(bn, 'E16-345_0023')
    all_stim_onset = all_stim_onset(1:end-1);   
%VTC
elseif strcmp(sbj_name,  'S14_65_HN') && strcmp(bn,  'S14_65_HM_03')
    all_stim_onset = all_stim_onset(1:end-1);   
elseif strcmp(sbj_name,  'S14_70_AP') && strcmp(bn,  'S14_70_AP_05')
    all_stim_onset = all_stim_onset(1:end-6);   
elseif strcmp(sbj_name,  'S15_86_CL') && strcmp(bn,  'S15_86_CL_06')
    all_stim_onset = all_stim_onset(1:end-2); 
%UCLA
% elseif strcmp(sbj_name,  'S09_06_RM') && strcmp(bn,  'ST06_43')
%     all_stim_onset = all_stim_onset(1:end-2); 
elseif strcmp(sbj_name,  'S11_31_DZb') && strcmp(bn,  'DZb1211-1')
    all_stim_onset = all_stim_onset(1:end-1);                   

%gradCPT
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name,'C17_21'))
    all_stim_onset = all_stim_onset(1:end-1);  
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name,'C18_49'))
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name,'C18_37'))
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name,'C19_62'))
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name,'S20_149_DR')) && (strcmp(bn, 'gradCPT_1'))
    all_stim_onset = all_stim_onset(1:end-2);    
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name,'S20_149_DR')) && (strcmp(bn, 'gradCPT_2'))
    all_stim_onset = all_stim_onset(1:end-2);       
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name,'S20_150_CM')) && ~(strcmp(bn, 'E20-506_0029'))
    all_stim_onset = all_stim_onset(1:end-2);     
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name,'S20_150_CM')) && (strcmp(bn, 'E20-506_0029'))
     all_stim_onset = all_stim_onset(1:end-1);     
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_23')) 
    all_stim_onset = all_stim_onset(1:end-1);   
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_30')) 
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_41')) 
    all_stim_onset = all_stim_onset(1:end-1);   
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_45'))
    all_stim_onset = all_stim_onset(1:end-1);
    %all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C19_53'))
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'S20_152_HT'))
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C17_20'))
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_22'))
    all_stim_onset = all_stim_onset(1:end-1);   
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_24'))
    all_stim_onset = all_stim_onset(1:end-1);  
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_25'))
    all_stim_onset = all_stim_onset(1:end-1);  
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_26'))
    all_stim_onset = all_stim_onset(1:end-1);  
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_31'))
    all_stim_onset = all_stim_onset(1:end-1);  
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_32'))
    all_stim_onset = all_stim_onset(1:end-1);    
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_33'))
    all_stim_onset = all_stim_onset(1:end-1);    
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_35'))
    all_stim_onset = all_stim_onset(1:end-1);    
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_38'))
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_39'))
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_34'))
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_43'))
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_44'))
    all_stim_onset = all_stim_onset(1:end-1);
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_46'))
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_47'))
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C18_42'))
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C19_58'))
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C19_50'))
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name, 'C19_51'))
    all_stim_onset = all_stim_onset(1:end-1);       
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name,  'S17_118_TW')) 
    all_stim_onset = all_stim_onset(1:end-1);       
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name,  'S17_114_EB'))  && strcmp(bn,'E17-526_0018') 
    all_stim_onset = all_stim_onset(1:end-1);      
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name,    'S17_116_AA'))  
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name,    'C19_60'))  
    all_stim_onset = all_stim_onset(1:end-1); 
elseif strcmp(project_name, 'GradCPT') && (strcmp(sbj_name,    'S19_137_AF'))  
    all_stim_onset = all_stim_onset(1:end-1); 
end