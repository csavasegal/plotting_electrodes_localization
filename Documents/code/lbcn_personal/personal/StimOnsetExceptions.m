function [stim_onset,stim_offset] = StimOnsetExceptions(sbj_name,bn,stim_onset,stim_offset)
% handles exception cases with missing photodiode pulses, etc.

switch sbj_name
    case 'S16_99_CJ'
        if strcmp(bn ,'E16-1107_0005')
            stim_onset = [stim_onset(1:97) NaN stim_onset(98:189) NaN stim_onset(190:end)];
            stim_offset = [stim_offset(1:97) NaN stim_offset(98:189) NaN stim_offset(190:end)];
        elseif strcmp(bn ,'E16-1107_0006')
            stim_onset = [stim_onset(1:107) NaN stim_onset(108:212) NaN stim_onset(213:end)];
            stim_offset = [stim_offset(1:107) NaN stim_offset(108:212) NaN stim_offset(213:end)];
        elseif strcmp(bn ,'E16-1107_0007')
            stim_onset = [stim_onset(1:56) NaN stim_onset(57:66) NaN stim_onset(67:end)];
            stim_offset = [stim_offset(1:56) NaN stim_offset(57:66) NaN stim_offset(67:end)];
        end
    case 'S17_105_TA'
        if strcmp(bn,'E17-58_0033')
            stim_onset = [stim_onset(1:62) NaN stim_onset(63:end)];
            stim_offset = [stim_offset(1:62) NaN stim_offset(63:end)];
        end
    case 'S16_100_AF'
        if strcmp(bn,'E16-950_0010')
            stim_onset = [stim_onset(1:200) NaN stim_onset(201:end)];
            stim_offset = [stim_offset(1:200) NaN stim_offset(201:end)];
        end
        
    case 'S14_67_RH'
        if strcmp(bn, 'S14_67_RH_08')
            stim_onset = stim_onset(3:end-2);
            stim_offset = stim_offset(3:end-2);
        elseif strcmp(bn, 'S14_67_RH_09')
            stim_onset = stim_onset(3:end-2);
            stim_offset = stim_offset(3:end-2);
        elseif strcmp(bn, 'S14_67_RH_12')
            stim_onset = stim_onset(1:end-2);
            stim_offset = stim_offset(1:end-2);
        elseif strcmp(bn, 'S14_67_RH_15')
            stim_onset = [stim_onset(1:120) stim_onset(122:end)];
            stim_offset = [stim_offset(1:120) stim_offset(122:end)];
            stim_onset = stim_onset(1:end-2);
            stim_offset = stim_offset(1:end-2);
        elseif strcmp(bn, 'S14_67_RH_16')
            stim_onset = [stim_onset(13:45) stim_onset(49:end)];
            stim_offset = [stim_offset(13:45) stim_offset(49:end)];
            stim_onset = stim_onset(1:end-2);
            stim_offset = stim_offset(1:end-2);
        elseif strcmp(bn, 'S14_67_RH_05')   % added 01/17
            stim_onset = stim_onset(3:end);
            stim_offset = stim_offset(3:end);
        elseif strcmp(bn, 'S14_67_RH_06')   % added 01/17
            stim_onset = stim_onset(1:end-2);
            stim_offset = stim_offset(1:end-2);
        elseif strcmp(bn, 'S14_67_RH_17')   %added 01/08
            stim_onset = stim_onset(1:end-2);
            stim_offset = stim_offset(1:end-2);
        end
        
    case 'S13_57_TVD'
        if strcmp(bn, 'TVD_23')
            stim_onset = [stim_onset(1:31) stim_onset(33:62) stim_onset(64:93) stim_onset(95:124) stim_onset(126:155) stim_onset(157:end)];
            stim_offset = [stim_offset(1:31) stim_offset(33:62) stim_offset(64:93) stim_offset(95:124) stim_offset(126:155) stim_offset(157:end)];
        elseif strcmp(bn, 'TVD_24')
            stim_onset = [stim_onset(1:31) stim_onset(33:62) stim_onset(64:93) stim_onset(95:124) stim_onset(126:155) stim_onset(157:end)];
            stim_offset = [stim_offset(1:31) stim_offset(33:62) stim_offset(64:93) stim_offset(95:124) stim_offset(126:155) stim_offset(157:end)];
        elseif strcmp(bn, 'TVD_25')
            stim_onset = [stim_onset(1:31) stim_onset(33:62) stim_onset(64:93) stim_onset(95:124) stim_onset(126:155) stim_onset(157:end)];
            stim_offset = [stim_offset(1:31) stim_offset(33:62) stim_offset(64:93) stim_offset(95:124) stim_offset(126:155) stim_offset(157:end)];
        elseif strcmp(bn, 'TVD_26')
            stim_onset = [stim_onset(1:31) stim_onset(33:62) stim_onset(64:93) stim_onset(95:124) stim_onset(126:155) stim_onset(157:end)];
            stim_offset = [stim_offset(1:31) stim_offset(33:62) stim_offset(64:93) stim_offset(95:124) stim_offset(126:155) stim_offset(157:end)];
        else
        end
        
    case 'S15_89_JQa'
        if strcmp(bn, 'E15-497_0008')
            stim_onset = [stim_onset(1:158) stim_onset(160:end)];
            stim_offset = [stim_offset(1:158) stim_offset(160:end)];
        elseif strcmp(bn, 'E15-497_0012')
            stim_onset = [stim_onset(1:20) stim_onset(22:44) stim_onset(46:end)];
            stim_offset = [stim_offset(1:20) stim_offset(22:44) stim_offset(46:end)];
        elseif strcmp(bn, 'E15-497_0013')
            stim_onset = [stim_onset(2:151) stim_onset(153:156)  stim_onset(158:160) stim_onset(161:end)];
            stim_offset = [stim_offset(2:151) stim_offset(153:156) stim_onset(158:160) stim_offset(161:end)];
        else
        end
        
    case 'S16_93_MA'
        if strcmp(bn, 'E16-022_0013')
            stim_onset = [stim_onset(1:23) stim_onset(25) stim_onset(26:end)];
            stim_offset = [stim_offset(1:23) stim_offset(25) stim_offset(26:end)];
        else
        end
        
    case 'S12_45_LR'
        if strcmp(bn, 'LR_32') || strcmp(bn, 'LR_33')
            stim_onset = [stim_onset(2:21) stim_onset(23:42) stim_onset(44:63) stim_onset(65:84) stim_onset(86:105) stim_onset(107:126) stim_onset(128:147) stim_onset(149:168) stim_onset(170:189) stim_onset(191:end)];
            stim_offset = [stim_offset(2:21) stim_offset(23:42) stim_offset(44:63) stim_offset(65:84) stim_offset(86:105) stim_offset(107:126) stim_offset(128:147) stim_offset(149:168) stim_offset(170:189) stim_offset(191:end)];
        else
        end
        
    case 'S13_53_KS2'
        
        if strcmp(bn, 'KS2_24')
            stim_onset = [stim_onset(1:21) stim_onset(23:42) stim_onset(44:63) stim_onset(65:84) stim_onset(86:105) stim_onset(107:126) stim_onset(128:147) stim_onset(149:168) stim_onset(170:189) stim_onset(190:end-1)];
            stim_offset = [stim_offset(1:21) stim_offset(23:42) stim_offset(44:63) stim_offset(65:84) stim_offset(86:105) stim_offset(107:126) stim_offset(128:147) stim_offset(149:168) stim_offset(170:189) stim_offset(190:end-1)];
        elseif strcmp(bn, 'KS2_25')
            stim_onset = [stim_onset(1:16) stim_onset(18:32) stim_onset(34:48) stim_onset(50:64) stim_onset(66:80) stim_onset(82:96) stim_onset(98:112) stim_onset(114:128) stim_onset(130:144) stim_onset(146:160) stim_onset(162:176) stim_onset(178:193)];
            stim_offset = [stim_offset(1:16) stim_offset(18:32) stim_offset(34:48) stim_offset(50:64) stim_offset(66:80) stim_offset(82:96) stim_offset(98:112) stim_offset(114:128) stim_offset(130:144) stim_offset(146:160) stim_onset(162:176) stim_offset(178:193)];
        elseif strcmp(bn, 'KS2_26')
            stim_onset = [stim_onset(1:21) stim_onset(23:42) stim_onset(44:63) stim_onset(65:84) stim_onset(86:105) stim_onset(107:126) stim_onset(128:147) stim_onset(149:168) stim_onset(170:189) stim_onset(190:end)];
            stim_offset = [stim_offset(1:21) stim_offset(23:42) stim_offset(44:63) stim_offset(65:84) stim_offset(86:105) stim_offset(107:126) stim_offset(128:147) stim_offset(149:168) stim_offset(170:189) stim_offset(190:end)];
        elseif strcmp(bn, 'KS2_27')
            stim_onset = [stim_onset(1:17) stim_onset(19:33) stim_onset(35:49) stim_onset(51:65) stim_onset(67:81) stim_onset(83:97) stim_onset(99:113) stim_onset(115:129) stim_onset(131:145) stim_onset(147:161) stim_onset(163:177) stim_onset(179:end)]
            stim_offset = [stim_offset(1:17) stim_offset(19:33) stim_offset(35:49) stim_offset(51:65) stim_offset(67:81) stim_offset(83:97) stim_offset(99:113) stim_offset(115:129) stim_offset(131:145) stim_offset(147:161) stim_offset(163:177) stim_offset(179:end)]
        elseif strcmp(bn, 'KS2_28')
            stim_onset = [stim_onset(1:22) stim_onset(24:43) stim_onset(45:64) stim_onset(66:85) stim_onset(87:106) stim_onset(108:127) stim_onset(129:148) stim_onset(150:169) stim_onset(171:189) stim_onset(190:end)];
            stim_offset = [stim_offset(1:22) stim_offset(24:43) stim_offset(45:64) stim_offset(66:85) stim_offset(87:106) stim_offset(108:127) stim_offset(129:148) stim_offset(150:169) stim_offset(171:189) stim_offset(190:end)];
        elseif strcmp(bn, 'KS2_29')
            stim_onset = [stim_onset(1:22) stim_onset(24:43) stim_onset(45:64) stim_onset(66:85) stim_onset(87:106) stim_onset(108:127) stim_onset(129:148) stim_onset(150:169) stim_onset(171:189) stim_onset(190:end)];
            stim_offset = [stim_offset(1:22) stim_offset(24:43) stim_offset(45:64) stim_offset(66:85) stim_offset(87:106) stim_offset(108:127) stim_offset(129:148) stim_offset(150:169) stim_offset(171:189) stim_offset(190:end)];
        else
        end
    case  'S13_52_FVV'
        
        if strcmp(bn, 'FVV_16')
            stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:104) stim_onset(106:125) stim_onset(127:146) stim_onset(148:167) stim_onset(169:188) stim_onset(190:end)];
            stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:104) stim_offset(106:125) stim_offset(127:146) stim_offset(148:167) stim_offset(169:188) stim_offset(190:end)];
        elseif strcmp(bn, 'FVV_18')
            stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:104) stim_onset(106:125) stim_onset(127:146) stim_onset(148:167) stim_onset(169:188) stim_onset(190:end-1)];
            stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:104) stim_offset(106:125) stim_offset(127:146) stim_offset(148:167) stim_offset(169:188) stim_offset(190:end-1)];
        elseif strcmp(bn, 'FVV_19')
            stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:104) stim_onset(106:125) stim_onset(127:146) stim_onset(148:167) stim_onset(169:188) stim_onset(190:end-1)];
            stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:104) stim_offset(106:125) stim_offset(127:146) stim_offset(148:167) stim_offset(169:188) stim_offset(190:end-1)];
        elseif strcmp(bn, 'FVV_21')
            stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:104) stim_onset(106:125) stim_onset(127:146) stim_onset(148:167) stim_onset(169:188) stim_onset(190:end-1)];
            stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:104) stim_offset(106:125) stim_offset(127:146) stim_offset(148:167) stim_offset(169:188) stim_offset(190:end-1)];
        elseif strcmp(bn, 'FVV_22')
            stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:104) stim_onset(106:125) stim_onset(127:146) stim_onset(148:167) stim_onset(169:188) stim_onset(190:end-1)];
            stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:104) stim_offset(106:125) stim_offset(127:146) stim_offset(148:167) stim_offset(169:188) stim_offset(190:end-1)];
        elseif strcmp(bn, 'FVV_23')
            stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:104) stim_onset(106:125) stim_onset(127:146) stim_onset(148:167) stim_onset(169:188) stim_onset(190:end-1)];
            stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:104) stim_offset(106:125) stim_offset(127:146) stim_offset(148:167) stim_offset(169:188) stim_offset(190:end-1)];
        elseif strcmp(bn, 'FVV_24')
            stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:104) stim_onset(106:125) stim_onset(127:146) stim_onset(148:167) stim_onset(169:188) stim_onset(190:end-1)];
            stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:104) stim_offset(106:125) stim_offset(127:146) stim_offset(148:167) stim_offset(169:188) stim_offset(190:end-1)];
        else
        end
    case  'S12_43_HH'
        
        if strcmp(bn, 'HH-12')
            stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:104) stim_onset(106:125) stim_onset(127:146) stim_onset(148:167) stim_onset(169:188) stim_onset(190:end-1)];
            stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:104) stim_offset(106:125) stim_offset(127:146) stim_offset(148:167) stim_offset(169:188) stim_offset(190:end-1)];
        elseif strcmp(bn, 'HH-13')
            stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:104) stim_onset(106:125) stim_onset(127:146) stim_onset(148:end-1)];
            stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:104) stim_offset(106:125) stim_offset(127:146) stim_offset(148:end-1)];
        elseif strcmp(bn, 'HH-14')
            stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:104) stim_onset(106:125) stim_onset(127:146) stim_onset(148:167) stim_onset(169:188) stim_onset(190:end-1)];
            stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:104) stim_offset(106:125) stim_offset(127:146) stim_offset(148:167) stim_offset(169:188) stim_offset(190:end-1)];
        else
        end
    case  'S12_41_KS'
        %CONTEXT
        if strcmp(bn,  'KS_25')
             stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:102) stim_onset(104:123) stim_onset(125:144) stim_onset(146:164) stim_onset(166:185) stim_onset(187:end-1)];
             stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:102) stim_offset(104:123) stim_offset(125:144) stim_offset(146:164) stim_offset(166:185) stim_offset(187:end-1)];
% %         stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:89) stim_onset(104:123)]% stim_onset(125:144) stim_onset(146:164) stim_onset(166:185) stim_onset(187:end)];
% %         stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:89) stim_offset(91:104:123)] %stim_offset(125:144) stim_offset(146:164) stim_offset(166:185) stim_offset(187:end)];
%         
%try again 2020
%                stim_onset = [stim_onset(1:20) stim_onset(21:40) stim_onset(41:60) stim_onset(61:80) stim_onset(81:102) stim_onset(104:123) stim_onset(124:145) stim_onset(146:165) stim_onset(166:186) stim_onset(187:end)];
%                stim_offset = [stim_offset(1:20) stim_offset(21:40) stim_offset(41:60) stim_offset(61:80) stim_offset(81:102) stim_offset(104:123) stim_offset(124:145) stim_offset(146:165) stim_offset(166:186) stim_offset(187:end)];
% % % %         
%         
        
        elseif strcmp(bn,  'KS_24')
            stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:103) stim_onset(105:124) stim_onset(126:145) stim_onset(147:166) stim_onset(168:187) stim_onset(189:end)];
            stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:103) stim_offset(105:124) stim_offset(126:145) stim_offset(147:166) stim_offset(168:187) stim_offset(189:end)];
        elseif strcmp(bn, 'KS_26')
            %             stim_onset = [stim_onset(1:21) stim_onset(23:42) stim_onset(44:63) stim_onset(65:84) stim_onset(86:105) stim_onset(107:126) stim_onset(128:147) stim_onset(148:167) stim_onset(169:188) stim_onset(190:end)];
            %             stim_offset = [stim_offset(1:21) stim_offset(23:42) stim_offset(44:63) stim_offset(65:84) stim_offset(86:105) stim_offset(107:126) stim_offset(128:147) stim_offset(148:167) stim_offset(169:188) stim_offset(190:end)];
            stim_onset = [stim_onset(1:21) stim_onset(23:42) stim_onset(44:63) stim_onset(65:84) stim_onset(86:105) stim_onset(107:126) stim_onset(128:147) stim_onset(149:167) stim_onset(169:188) stim_onset(190:end)];
            stim_offset = [stim_offset(1:21) stim_offset(23:42) stim_offset(44:63) stim_offset(65:84) stim_offset(86:105) stim_offset(107:126) stim_offset(128:147) stim_offset(149:167) stim_offset(169:188) stim_offset(190:end)];
        elseif strcmp(bn, 'KS_27')
%             stim_onset = [stim_onset(1:21) stim_onset(23:42) stim_onset(44:62) stim_onset(64:83) stim_onset(85:104) stim_onset(106:125) stim_onset(127:146) stim_onset(148:167) stim_onset(169:186) stim_onset(188:end)];
%             stim_offset = [stim_offset(1:21) stim_offset(23:42) stim_offset(44:62) stim_offset(64:83) stim_offset(85:104) stim_offset(106:125) stim_offset(127:146) stim_offset(148:167) stim_offset(169:186) stim_offset(188:end)];
            stim_onset = [stim_onset(1:21) stim_onset(23:42) stim_onset(44:62) stim_onset(64:83) stim_onset(85:104) stim_onset(106:125) stim_onset(127:146) stim_onset(148:167) stim_onset(169:186)];
            stim_offset = [stim_offset(1:21) stim_offset(23:42) stim_offset(44:62) stim_offset(64:83) stim_offset(85:104) stim_offset(106:125) stim_offset(127:146) stim_offset(148:167) stim_offset(169:186)];
        elseif strcmp(bn, 'KS_28')
            stim_onset = [stim_onset(1:20) stim_onset(22:41) stim_onset(43:62) stim_onset(64:83) stim_onset(85:104) stim_onset(106:125) stim_onset(127:146) stim_onset(148:167) stim_onset(169:188) stim_onset(190:end)];
            stim_offset = [stim_offset(1:20) stim_offset(22:41) stim_offset(43:62) stim_offset(64:83) stim_offset(85:104) stim_offset(106:125) stim_offset(127:146) stim_offset(148:167) stim_offset(169:188) stim_offset(190:end)];
            %LOGO
        elseif  strcmp(bn, 'KS_11')
            stim_onset = [stim_onset(1:180) stim_onset(182:218) stim_onset(220:end)];
            stim_offset = [stim_offset(1:180) stim_offset(182:218) stim_offset(220:end)];
        else
        end
        
        
    case 'S16_94_DR'
        if strcmp(bn, 'E16-168_0023')
            stim_onset = [stim_onset(9:112) stim_onset(114:end-48)];
            stim_offset = [stim_offset(9:112) stim_offset(114:end-48)];
        else
        end
        
    case 'S14_80_KBa'
        if strcmp(bn, 'S14_80_KB_22')
            stim_onset = [stim_onset(1:90) stim_onset(92:end)];
            stim_offset = [stim_offset(1:90) stim_offset(92:end)];
            stim_onset = [stim_onset(1:98) stim_onset(100:end)];
            stim_offset = [stim_offset(1:98) stim_offset(100:end)];
        end
    case 'S14_68_NB'    % 01/29: last version
        if strcmp(bn, 'S14_68_NB_15')
            stim_onset = stim_onset(1:end-1);
            stim_offset = stim_offset(1:end-1);
        elseif strcmp(bn, 'S14_68_NB_11')
            stim_onset = [stim_onset(1:70) stim_onset(76:end)]; % added 01/29
            stim_offset = [stim_onset(1:70) stim_onset(76:end)];
        end
    case 'S14_74_OD'
        if strcmp(bn, 'S14_74_OD_06')
            stim_onset = [stim_onset(1:240)];
            stim_offset = [stim_offset(1:240)];
        elseif strcmp(bn, 'S14_74_OD_07')
            stim_onset = [stim_onset(1:240)];
            stim_offset = [stim_offset(1:240)];
        elseif strcmp(bn, 'S14_74_OD_08')
            stim_onset = [stim_onset(1:240)];
            stim_offset = [stim_offset(1:240)];
        end
    case 'S14_75_TB'
        if strcmp(bn, 'S14_75_TB_08')
            stim_onset = [stim_onset(1:100)];
            stim_offset = [stim_offset(1:100)];
        end
    case 'S14_76_AA'
        if strcmp(bn, 'S14_76_AA_06') || strcmp(bn, 'S14_76_AA_07') || strcmp(bn, 'S14_76_AA_08') || strcmp(bn, 'S14_76_AA_09') || strcmp(bn, 'S14_76_AA_11') || strcmp(bn, 'S14_76_AA_12') || strcmp(bn, 'S14_76_AA_13') || strcmp(bn, 'S14_76_AA_14')
            stim_onset = [stim_onset(1:240)];
            stim_offset = [stim_offset(1:240)];
        end
    case 'S14_78_RS'
        if strcmp(bn, 'S14_78_RS_13')
            stim_onset = [stim_onset(1:240)];
            stim_offset = [stim_offset(1:240)];
        elseif strcmp(bn, 'S14_78_RS_17')
            stim_onset = [stim_onset(1:24) stim_onset(26:62) stim_onset(64:end-1)];
            stim_offset = [stim_offset(1:24) stim_offset(26:62) stim_offset(64:end-1)];
        end
    case 'S14_66_CZ'
        if strcmp(bn, 'S14_66_CZ_30')
            stim_onset = [stim_onset(1:210) stim_onset(233:end-1)]; % updated 01/29
            stim_offset = [stim_offset(1:210) stim_offset(233:end-1)];
        end
    case 'S17_107_PR'
        if strcmp(bn,'E17-237_0013')
            stim_onset = [stim_onset(1:119) NaN stim_onset(120:end)];
            stim_offset = [stim_offset(1:119) NaN stim_offset(120:end)];
        end
    case 'S17_106_SD'
        if strcmp(bn,'E17-107_0017')
            stim_onset = [stim_onset(1) NaN stim_onset(2:end)];
            stim_offset = [stim_offset(1) NaN stim_offset(2:end)];
        end
        
    case 'S19_136_AG'
        if strcmp(bn, 'E19-320_0008') %langloc
            remov=ones(1,502);
            remindex=[1:15 16 32 48 64 95 111 127 158 174 205 236 267 283 299 315 331 362 378 409 425 441 457 473 489 505];
            remindex = remindex(4:end);
            remindex = remindex - 3;
            remov(remindex)=0;
            
            stim_onset = stim_onset(logical(remov));
            stim_offset = stim_offset(logical(remov));
        else
        end
        
        %MFA
    case 'S12_33_DA'
        if strcmp(bn, 'DA0112-07')
            stim_onset = [stim_onset(1:114) stim_onset(116:end)];
            stim_offset = [stim_offset(1:114) stim_offset(116:end)];
        else
        end
    case  'S14_78_RSb'
        if strcmp(bn, 'S14_78_RSb_06')
            stim_onset = [stim_onset(1:36) stim_onset(38:end)];
            stim_offset = [stim_offset(1:36) stim_offset(38:end)];
        else
        end
        
        
end