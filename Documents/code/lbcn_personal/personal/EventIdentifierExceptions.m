function [n_initpulse_onset,n_initpulse_offset] = EventIdentifierExceptions(sbj_name,project_name, bn, n_initpulse_onset, n_initpulse_offset)

% default:

if strcmp(project_name, 'MMR')
    n_initpulse_onset=12;
    n_initpulse_offset=12;
elseif strcmp(project_name, 'VTCLoc')
    n_initpulse_onset=12;
    n_initpulse_offset=12;
elseif strcmp(project_name, 'Memoria')
    n_initpulse_onset=12;
    n_initpulse_offset=12;
elseif strcmp(project_name, 'Logo')
    n_initpulse_onset=12;
    n_initpulse_offset=12;
    
% elseif strcmp(project_name, 'GradCPT')
%     n_initpulse_onset=1;
%     n_initpulse_offset=1;
else
    if n_initpulse_onset == 0 && n_initpulse_offset == 0
    else
        n_initpulse_onset=12;
        n_initpulse_offset=12;
    end
end

% exceptions:
if strcmp(sbj_name, 'S09_07_CM') && strcmp(project_name, 'UCLA') && strcmp(bn, 'ST07-07')
    n_initpulse_onset = 0; n_initpulse_offset = 0;
elseif strcmp(sbj_name, 'S12_36_SrS') && strcmp(project_name, 'MMR') && strcmp(bn, 'SrS_09')
    n_initpulse_onset = 8; n_initpulse_offset = 8;
elseif strcmp(sbj_name, 'S13_50_LGM') && strcmp(bn, 'LGM_13')
    n_initpulse_onset = 4; n_initpulse_offset = 4;
elseif strcmp(sbj_name, 'S13_53_KS2') && strcmp(project_name, 'MMR') && strcmp(bn, 'KS2_02')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S14_64_SP') && strcmp(project_name, 'MMR') && strcmp(bn, 'S14_64_SP_02')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name, 'S14_66_CZ') && strcmp(project_name, 'MMR') && strcmp(bn, 'S14_66_CZ_11')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name,'S18_129') && strcmp(bn,'E18-767_0016')
    n_initpulse_onset = 11; n_initpulse_offset = 11;
elseif strcmp(sbj_name,'S18_128') && strcmp(bn,'E18-739_0002')
    n_initpulse_onset = 0; n_initpulse_offset = 0;
elseif strcmp(sbj_name, 'S14_67_RH') && strcmp(project_name, 'MMR') && strcmp(bn, 'S14_67_RH_01')
    n_initpulse_onset = 8; n_initpulse_offset = 8;
elseif strcmp(sbj_name, 'S14_67_RH') && strcmp(project_name, 'MMR') && strcmp(bn, 'S14_67_RH_04')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name, 'S12_33_DA') && strcmp(project_name, 'MMR') && strcmp(bn, 'DA0112-15')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S12_34_TC') && strcmp(project_name, 'MMR') && strcmp(bn, 'TC0212-10')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S15_87_RL') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E15-282_0016')
    n_initpulse_onset = 0; n_initpulse_offset = 0;
elseif strcmp(sbj_name, 'S15_92_MR') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 0; n_initpulse_offset = 0;
elseif strcmp(sbj_name, 'S16_93_MA') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name, 'S13_56_THS') && strcmp(project_name, 'MMR') && strcmp(bn, 'ST33_07')
    n_initpulse_onset = 1; n_initpulse_offset = 1;
elseif strcmp(sbj_name, 'S13_56_THS') && strcmp(project_name, 'MMR') && strcmp(bn, 'ST33_08')
    n_initpulse_onset = 0; n_initpulse_offset = 0;
elseif strcmp(sbj_name, 'S14_69_RTa') && strcmp(project_name, 'MMR') && strcmp(bn, 'S14_69_RT_02')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S14_65_HN') && strcmp(project_name, 'MMR') && strcmp(bn, 'S14_65_HN_05')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name, 'S14_65_HN') && strcmp(project_name, 'MMR') && strcmp(bn, 'S14_65_HN_02')
    n_initpulse_onset = 8; n_initpulse_offset = 8;
elseif strcmp(sbj_name, 'S14_68_NB') && strcmp(project_name, 'MMR') && strcmp(bn, 'S14_68_NB_01')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S14_73_AY') && strcmp(project_name, 'MMR') && strcmp(bn, 'S14_73_AY_04')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S14_73_AY') && strcmp(project_name, 'MMR') && strcmp(bn, 'S14_73_AY_05')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name, 'S15_81_RM') && strcmp(project_name, 'MMR') && strcmp(bn, 'S15_81_RM_04')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S16_95_JOB') && strcmp(project_name, 'MMR') && strcmp(bn, 'E16-345_0012')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S11_20_RHa') && strcmp(project_name, 'UCLA') && strcmp(bn, 'RH0211-02')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S11_26_SRb') && strcmp(project_name, 'UCLA') && strcmp(bn, 'SRb-17')
    n_initpulse_onset = 16; n_initpulse_offset = 16;
elseif strcmp(sbj_name, 'S11_26_SRa') && strcmp(project_name, 'UCLA') && strcmp(bn, 'SR-10')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S15_87_RL') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E15-282_0016')
    n_initpulse_onset = 0; n_initpulse_offset = 0;
elseif strcmp(sbj_name, 'S15_92_MR') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 0; n_initpulse_offset = 0;
elseif strcmp(sbj_name, 'S16_93_MA') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name, 'S12_33_DA') && strcmp(bn, 'DA0112-_07')
    n_initpulse_onset = 5; n_initpulse_offset = 5;
elseif strcmp(sbj_name, 'S11_26_SRa') && strcmp(bn, 'SR-03')
    n_initpulse_onset = 12; n_initpulse_offset = 12;
elseif strcmp(sbj_name, 'S10_15_KB2') && (strcmp(bn, 'KB0510_01') || strcmp(bn, 'KB0510_03'))
    n_initpulse_onset = 12; n_initpulse_offset = 12;
elseif strcmp(sbj_name, 'S11_22_EG') && strcmp(bn, 'EG0311-23')
    n_initpulse_onset = 19; n_initpulse_offset = 19;
elseif strcmp(sbj_name, 'S17_106_SD') && strcmp(bn, 'E17-107_0008')
    n_initpulse_onset = 11; n_initpulse_offset = 11;
elseif strcmp(sbj_name, 'S17_106_SD') && strcmp(bn, 'E17-107_0010')
    n_initpulse_onset = 8; n_initpulse_offset = 8;
elseif strcmp(sbj_name, 'S17_106_SD') && strcmp(bn, 'E17-107_0011')
    n_initpulse_onset = 10; n_initpulse_offset = 10;
elseif strcmp(sbj_name, 'S11_23_MD') && strcmp(project_name, 'UCLA') && strcmp(bn, 'MD0311-01')
    n_initpulse_onset = 12; n_initpulse_offset = 12;
elseif strcmp(sbj_name, 'S12_45_LR') && strcmp(bn, 'LR_06')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S14_74_OD') && strcmp(bn, 'S14_74_OD_03')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S17_106_SD') && strcmp(bn, 'E17-107_0016')
    n_initpulse_onset = 9; n_initpulse_offset = 9;
elseif strcmp(sbj_name,'S15_90_SO') && strcmp(bn, 'E15-579_0011')
    n_initpulse_onset = 8; n_initpulse_offset = 8;
    % elseif strcmp(sbj_name,'S16_97_CHM') && strcmp(bn, 'E16-517_0014')
    %     n_initpulse_onset = 13; n_initpulse_offset = 12;
elseif strcmp(sbj_name,'S14_64_SP') && strcmp(bn, 'S14_64_SP_39')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
    
elseif strcmp(sbj_name, 'S15_83_RR') && strcmp(bn, 'S15_83_RR_17') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 9; n_initpulse_offset = 9;
elseif strcmp(sbj_name, 'S15_83_RR') && strcmp(bn, 'S15_83_RR_18') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 4; n_initpulse_offset = 4;
elseif strcmp(sbj_name, 'S14_69_RTa') && strcmp(bn, 'S14_69_RT_05') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name, 'S14_68_NB') && strcmp(bn, 'S14_68_NB_08') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S14_68_NB') && strcmp(bn, 'S14_68_NB_10') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S14_68_NB') && strcmp(bn, 'S14_68_NB_14') && strcmp(project_name, 'Calculia')  % 01/29: last version
    n_initpulse_onset = 2; n_initpulse_offset = 2;
elseif strcmp(sbj_name, 'S14_68_NB') && strcmp(bn, 'S14_68_NB_15') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 1; n_initpulse_offset = 1;
elseif strcmp(sbj_name, 'S14_74_OD') && strcmp(bn, 'S14_74_OD_07') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S14_75_TB') && strcmp(bn, 'S14_75_TB_08') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name, 'S14_75_TB') && strcmp(bn, 'S14_75_TB_19') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S15_82_JB') && strcmp(bn, 'S15_82_JB_12') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 8; n_initpulse_offset = 8;
elseif strcmp(sbj_name,'S10_12_AC') && strcmp(bn, 'AC0210_07')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name, 'S15_83_RR') && strcmp(bn, 'S15_83_RR_17') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 9; n_initpulse_offset = 9;
elseif strcmp(sbj_name, 'S15_83_RR') && strcmp(bn, 'S15_83_RR_18') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 4; n_initpulse_offset = 4;
elseif strcmp(sbj_name, 'S14_69_RTa') && strcmp(bn, 'S14_69_RT_05') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name, 'S14_68_NB') && strcmp(bn, 'S14_68_NB_08') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S14_68_NB') && strcmp(bn, 'S14_68_NB_10') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S14_68_NB') && strcmp(bn, 'S14_68_NB_15') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 1; n_initpulse_offset = 1;
elseif strcmp(sbj_name, 'S14_73_AY') && strcmp(bn, 'S14_73_AY_20') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name, 'S14_73_AY') && strcmp(bn, 'S14_73_AY_25') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S14_74_OD') && strcmp(bn, 'S14_74_OD_07') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S14_75_TB') && strcmp(bn, 'S14_75_TB_08') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name, 'S14_75_TB') && strcmp(bn, 'S14_75_TB_19') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S15_82_JB') && strcmp(bn, 'S15_82_JB_12') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 8; n_initpulse_offset = 8;
elseif strcmp(sbj_name, 'S17_105_TA') && strcmp(bn, 'E17-58_0013') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 4; n_initpulse_offset = 4;
elseif strcmp(sbj_name, 'S17_105_TA') && strcmp(bn, 'E17-58_0016') && strcmp(project_name, 'Calculia')
    n_initpulse_onset = 4; n_initpulse_offset = 4;
    
    % elseif strcmp(sbj_name, 'S14_66_CZ') && strcmp(bn, 'S14_66_CZ_26') && strcmp(project_name, 'Calculia')
    %     n_initpulse_onset = 16; n_initpulse_offset = 16;
    % elseif strcmp(sbj_name, 'S14_66_CZ') && strcmp(bn, 'S14_66_CZ_27') && strcmp(project_name, 'Calculia')
    %     n_initpulse_onset = 14; n_initpulse_offset = 14;
    % elseif strcmp(sbj_name, 'S14_66_CZ') && strcmp(bn, 'S14_66_CZ_30') && strcmp(project_name, 'Calculia')
    %     n_initpulse_onset = 14; n_initpulse_offset = 14;
    % elseif strcmp(sbj_name, 'S14_66_CZ') && strcmp(bn, 'S14_66_CZ_37') && strcmp(project_name, 'Calculia')
    %     n_initpulse_onset = 8; n_initpulse_offset = 8;
    % elseif strcmp(sbj_name, 'S14_66_CZ') && strcmp(bn, 'S14_66_CZ_39') && strcmp(project_name, 'Calculia')
    %     n_initpulse_onset = 14; n_initpulse_offset = 14;
    % elseif strcmp(sbj_name, 'S14_66_CZ') && strcmp(bn, 'S14_66_CZ_40') && strcmp(project_name, 'Calculia')
    %     n_initpulse_onset = 14; n_initpulse_offset = 14;
    
elseif strcmp(sbj_name,'S14_66_CZ') && strcmp(project_name, 'Calculia') && strcmp(bn, 'S14_66_CZ_37')
    n_initpulse_onset = 8; n_initpulse_offset = 8;
elseif strcmp(sbj_name,'S14_66_CZ') && strcmp(project_name, 'Calculia') && strcmp(bn, 'S14_66_CZ_39')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name,'S14_66_CZ') && strcmp(project_name, 'Calculia') && strcmp(bn, 'S14_66_CZ_40')
    n_initpulse_onset = 14; n_initpulse_offset = 14;
elseif strcmp(sbj_name,'S15_89_JQb') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E17-152_0025')
    n_initpulse_onset = 11; n_initpulse_offset = 11;
elseif strcmp(sbj_name,'S15_89_JQb') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E17-152_0026')
    n_initpulse_onset = 11; n_initpulse_offset = 11;
elseif strcmp(sbj_name,'S15_89_JQb') && strcmp(project_name, 'Calculia') && strcmp(bn, 'E17-152_0029')
    n_initpulse_onset = 11; n_initpulse_offset = 11;
    
elseif strcmp(sbj_name, 'S11_29_RB') && strcmp(project_name, 'UCLA')
    n_initpulse_onset = 12; n_initpulse_offset = 12;
elseif strcmp(sbj_name, 'S13_56_THS') && strcmp(bn, 'THS_08')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S11_28_LS') && strcmp(bn, 'LS0911-08')
    n_initpulse_onset = 12; n_initpulse_offset = 12;
    
    
    % Calculia_letter China
elseif strcmp(sbj_name, 'G18_20') && strcmp(bn, 'G020_calculia_letter_01')
    n_initpulse_onset = 101; n_initpulse_offset = 101;
elseif strcmp(sbj_name, 'G18_21') && strcmp(bn, 'G021_letter_01')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'G18_22')&& strcmp(bn, 'G022_calculia_01')
    n_initpulse_onset = 4; n_initpulse_offset = 4;
elseif strcmp(sbj_name, 'G18_22')&& strcmp(bn, 'G022_calculia_04')
    n_initpulse_onset = 6; n_initpulse_offset = 6;
elseif strcmp(sbj_name, 'G18_22')&& strcmp(bn, 'G022_calculia_02')
    n_initpulse_onset = 4; n_initpulse_offset = 4;
elseif strcmp(sbj_name, 'G18_22')&& strcmp(bn, 'G022_calculia_03')
    n_initpulse_onset = 8; n_initpulse_offset = 8;
elseif strcmp(sbj_name, 'S19_139_JRb')&& strcmp(bn, 'E19-495_0006')
    n_initpulse_onset = 4; n_initpulse_offset = 4;
    
elseif strcmp(sbj_name, 'G18_20')&& strcmp(bn, 'calculia_b1')
    n_initpulse_onset = 40; n_initpulse_offset = 40;
    
    
    %MFA
elseif strcmp(sbj_name, 'S12_33_DA')&& strcmp(bn, 'DA0112-07')
    n_initpulse_onset = 5; n_initpulse_offset = 5;
elseif strcmp(sbj_name,  'S13_52_FVV')&& strcmp(bn, 'FVV_09')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name,  'S16_99_CJ')&& strcmp(bn, 'E16-1107_0022')
    n_initpulse_onset = 10; n_initpulse_offset = 10;
elseif strcmp(sbj_name,  'S11_31_DZb')&& strcmp(bn, 'DZb1211-5')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
    
    
    %VTC
    % elseif strcmp(sbj_name,  'S14_62_JW')&& strcmp(bn, 'S14_62_01')
    %     n_initpulse_onset = 12; n_initpulse_offset = 12;
elseif strcmp(sbj_name,  'S14_70_AP')&& strcmp(bn, 'S14_70_AP_05')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name,  'S15_81_RM')&& strcmp(bn, 'S15_81_RM_02')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name,  'S14_65_HN')&& strcmp(bn, 'S14_65_HM_03')
    n_initpulse_onset = 13; n_initpulse_offset = 13;   
elseif strcmp(sbj_name,  'S14_67_RH')&& strcmp(bn, 'S14_67_RH_03')
    n_initpulse_onset = 15; n_initpulse_offset = 15;       
    
    %Context
elseif strcmp(sbj_name,  'S13_52_FVV')&& strcmp(bn, 'FVV_16') || strcmp(bn, 'FVV_18')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name,  'S13_52_FVV')&& strcmp(bn, 'FVV_19')
    n_initpulse_onset = 15; n_initpulse_offset = 15;
elseif strcmp(sbj_name,  'S13_52_FVV')&& strcmp(bn, 'FVV_21') || strcmp(bn, 'FVV_22') || strcmp(bn, 'FVV_23') || strcmp(bn, 'FVV_24')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name, 'S12_43_HH')&& strcmp(bn, 'HH-12')
    n_initpulse_onset = 16; n_initpulse_offset = 16;
elseif strcmp(sbj_name, 'S12_43_HH')&& strcmp(bn, 'HH-13')
    n_initpulse_onset = 15; n_initpulse_offset = 15;
elseif strcmp(sbj_name, 'S12_43_HH')&& strcmp(bn, 'HH-14')
    n_initpulse_onset = 16; n_initpulse_offset = 16;
elseif strcmp(sbj_name,  'S12_41_KS')&& strcmp(bn, 'KS_28')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
elseif strcmp(sbj_name,  'S12_41_KS')&& strcmp(bn, 'KS_24')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
    
    %Calculia
elseif strcmp(sbj_name, 'S14_62_JW')&& strcmp(bn, 'S14_62_44')
    n_initpulse_onset = 4; n_initpulse_offset = 4;
    
    %MMR
elseif strcmp(sbj_name,   'S13_58_MJD')&& strcmp(bn, 'MJD_02')
    n_initpulse_onset = 13; n_initpulse_offset = 13;
    
    %ReadNumWord
elseif strcmp(sbj_name,   'S11_26_SRa')&& strcmp(bn, 'SR-07')
    n_initpulse_onset = 17; n_initpulse_offset = 17;
elseif strcmp(sbj_name,   'S11_26_SRa')&& strcmp(bn, 'SR-13')
    n_initpulse_onset = 13; n_initpulse_offset = 13;  
elseif strcmp(sbj_name,   'S12_38_LK')&& strcmp(bn, 'LK_02')
    n_initpulse_onset = 2; n_initpulse_offset = 2;      
elseif strcmp(sbj_name,   'S12_45_LR')&& strcmp(bn, 'LR_14')
    n_initpulse_onset = 13; n_initpulse_offset = 13;     
elseif strcmp(sbj_name,   'S12_36_SrS')&& strcmp(bn, 'SrS_01')
    n_initpulse_onset = 13; n_initpulse_offset = 13;     

%Scrambled
elseif strcmp(sbj_name,   'S14_70_AP')&& strcmp(bn, 'S14_70_AP_08')
    n_initpulse_onset = 12; n_initpulse_offset = 12;  
elseif strcmp(sbj_name,   'S14_80_KBa')&& strcmp(bn, 'S14_80_KB_39')
    n_initpulse_onset = 12; n_initpulse_offset = 12;      
    
%Memoria
elseif strcmp(sbj_name,   'S19_142_EA')&& strcmp(bn, 'E19-786_0003')
    n_initpulse_onset = 4; n_initpulse_offset = 4;  
elseif strcmp(sbj_name,   'S19_145_PC')&& strcmp(bn, 'E20-194_0011')
    n_initpulse_onset = 8; n_initpulse_offset = 8;  
%UCLA
elseif strcmp(sbj_name,  'S09_06_RM')&& strcmp(bn, 'ST06_43')
    n_initpulse_onset = 2; n_initpulse_offset = 2;  
    
    
%gradCPT
elseif strcmp(sbj_name,  'C18_29')&& strcmp(bn, 'gradCPT_1')
    n_initpulse_onset = 2; n_initpulse_offset = 2;
elseif strcmp(sbj_name,  'C17_21')&& strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;
elseif strcmp(sbj_name, 'C18_49') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;
elseif strcmp(sbj_name, 'C18_37') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;
elseif strcmp(sbj_name, 'C19_62') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;
elseif strcmp(sbj_name,  'S20_149_DR') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;    
elseif strcmp(sbj_name,   'C18_23') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;  
elseif strcmp(sbj_name,   'C18_30') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;     
elseif strcmp(sbj_name,   'C18_41') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;     
elseif strcmp(sbj_name,   'C18_45') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;     
elseif strcmp(sbj_name,   'C19_53') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;   
elseif strcmp(sbj_name,       'S20_152_HT') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;       
elseif strcmp(sbj_name,       'C17_20') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;      
elseif strcmp(sbj_name,       'C18_22') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;         
elseif strcmp(sbj_name,       'C18_24') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;     
elseif strcmp(sbj_name,       'C18_25') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;         
elseif strcmp(sbj_name,       'C18_26') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;          
elseif strcmp(sbj_name,       'C18_31') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;     
elseif strcmp(sbj_name,       'C18_32') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;     
elseif strcmp(sbj_name,       'C18_33') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;     
elseif strcmp(sbj_name,       'C18_35') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;     
elseif strcmp(sbj_name,       'C18_38') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1; 
elseif strcmp(sbj_name,       'C18_39') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;     
elseif strcmp(sbj_name,       'C18_34') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;   
elseif strcmp(sbj_name,       'C18_43') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;       
elseif strcmp(sbj_name,       'C18_44') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1; 
elseif strcmp(sbj_name,       'C18_46') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;     
elseif strcmp(sbj_name,       'C18_47') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;       
elseif strcmp(sbj_name,       'C18_42') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;     
elseif strcmp(sbj_name,       'C19_58') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;         
elseif strcmp(sbj_name,       'C19_58') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;    
elseif strcmp(sbj_name,       'C19_50') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;       
elseif strcmp(sbj_name,       'C19_51') && strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1;   
elseif strcmp(sbj_name,       'S17_118_TW') && strcmp(project_name, 'GradCPT') && ~strcmp(bn,'E17-910_0053') 
    n_initpulse_onset = 1; n_initpulse_offset = 1;   
 elseif strcmp(sbj_name,       'S17_114_EB') && strcmp(project_name, 'GradCPT') && strcmp(bn,'E17-526_0018') 
     n_initpulse_onset = 1; n_initpulse_offset = 1;   
 elseif strcmp(sbj_name,       'S17_116_AA') && strcmp(project_name, 'GradCPT') 
     n_initpulse_onset = 1; n_initpulse_offset = 1;   
 elseif strcmp(sbj_name, 'C19_60') && strcmp(project_name, 'GradCPT') 
     n_initpulse_onset = 1; n_initpulse_offset = 1;    
 elseif strcmp(sbj_name, 'S19_137_AF') && strcmp(project_name, 'GradCPT') 
     n_initpulse_onset = 1; n_initpulse_offset = 1;         
 
%MFA
elseif strcmp(sbj_name,  'S13_57_TVD')&& strcmp(bn, 'TVD_16')
    n_initpulse_onset = 12; n_initpulse_offset = 12;
elseif strcmp(sbj_name,   'S12_41_KS')&& strcmp(bn, 'KS_16')
    n_initpulse_onset = 12; n_initpulse_offset = 12;
elseif strcmp(sbj_name,   'S13_53_KS2')&& strcmp(bn, 'KS2_08')
    n_initpulse_onset = 12; n_initpulse_offset = 12;    
    
elseif strcmp(sbj_name,   'S20_150_CM')&& strcmp(bn,  'E20-506_0028')
    n_initpulse_onset = 1; n_initpulse_offset = 1; 
elseif strcmp(sbj_name,   'S20_150_CM')&& strcmp(project_name, 'GradCPT')
    n_initpulse_onset = 1; n_initpulse_offset = 1; 
        
    
    
end
end

