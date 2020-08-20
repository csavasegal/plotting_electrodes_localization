function actpass = calculia_blocktype(sbj,BN)

switch sbj
    case {'S14_62_JW','S14_64_SP'}
        actpass = 1; %all active blocks for this subj
    case 'S14_66_CZ'
        if (ismember(BN,{'S14_66_CZ_37','S14_66_CZ_38','S14_66_CZ_39','S14_66_CZ_40'}))
            actpass = 1;
        else 
            actpass = 0;
        end
    case 'S14_78_RS'
        if (ismember(BN,{'S14_78_RS_13','S14_78_RS_15','S14_78_RS_16','S14_78_RS_17'}))
            actpass = 1;
        else
            actpass = 0;
        end
    case 'S14_80_KB'
        if (ismember(BN,{'S14_80_KB_26','S14_80_KB_27','S14_80_KB_28','S14_80_KB_29'}))
            actpass = 1;
        else 
            actpass = 0;
        end
    case 'S15_83_RR'
        if (ismember(BN,{'S15_83_RR_18','S15_83_RR_20','S15_83_RR_23','S15_83_RR_24'}))
            actpass = 1;
        else 
            actpass = 0;
        end
    case 'S15_92_MR'
        if (ismember(BN,{'E15_770_0019','E15_770_0021','E15_770_0022'}))
            actpass = 1;
        else
            actpass = 0;
        end
    case 'S16_94_DR'
        if ismember(BN,{'E16-168_0022','E16-168_0023','E16-168_0039'})
            actpass = 1;
        else
            actpass = 0;
        end
    case 'S17_105_TA'
        actpass = 0;
    case 'S15_89b_JQ'
        if ismember(BN,{'E17-152_0025','E17-152_0026'})
            actpass = 0;
        else
            actpass = 1;
        end
%         if ismember(BN,{'E17-58_0012','E17-58_0013','E17-58_0013'})
%             actpass = 0;
% %         else
% %             actpass = 1;
%         end
        
end