
function BN = BlockBySubj(sbj,task)

switch task
    case 'AnimalLoc'
        switch sbj
            case 'S14_64_SP'
                BN = {'S14_64_SP_09'};
        end
    case 'Calculia'
        switch sbj
            case 'S14_62_JW'
                BN = {'S14_62_42','S14_62_43','S14_62_44'};
            case 'S14_64_SP'
                BN = {'S14_64_SP_12','S14_64_SP_13','S14_64_SP_15','S14_64_SP_39','S14_64_SP_40'};
                %                 BN = {'S14_64_SP_12','S14_64_SP_13','S14_64_SP_15'};
                %                 %                 BN = {'S14_64_SP_39','S14_64_SP_40'};
            case 'S14_78_RS'
                BN = {'S14_78_RS_08','S14_78_RS_09','S14_78_RS_10','S14_78_RS_11','S14_78_RS_13','S14_78_RS_15','S14_78_RS_16','S14_78_RS_17'};
                %             case 'S14_66_CZ'
                %                 BN = {'S14_66_CZ_26','S14_66_CZ_27','S14_66_CZ_29','S14_66_CZ_30','S14_66_CZ_37','S14_66_CZ_38','S14_66_CZ_39','S14_66_CZ_40'};
            case 'S14_80_KBa'
                BN = {'S14_80_KB_20','S14_80_KB_22','S14_80_KB_24','S14_80_KB_25','S14_80_KB_26','S14_80_KB_27','S14_80_KB_28','S14_80_KB_29'};
            case 'S15_83_RR'
                %BN = {'S15_83_RR_12','S15_83_RR_14','S15_83_RR_17','S15_83_RR_18','S15_83_RR_23','S15_83_RR_24'};
                %                 BN = {'S15_83_RR_12','S15_83_RR_14','S15_83_RR_16','S15_83_RR_17','S15_83_RR_18','S15_83_RR_20','S15_83_RR_23','S15_83_RR_24'};
                BN = {'S15_83_RR_14','S15_83_RR_17','S15_83_RR_18','S15_83_RR_23','S15_83_RR_24'};
                
            case 'S15_91_RP'
                BN = {'E15-695_0017','E15-695_0018'};
            case 'S15_92_MR'
                BN = {'E15-770_0013','E15-770_0014','E15-770_0019','E15-770_0021','E15-770_0022'};
            case 'S16_93_MA'
                BN = {'E16-022_0012', 'E16-022_0013', 'E16-022_0014', 'E16-022_0015', 'E16-022_0016', 'E16-022_0017', 'E16-022_0018'};
            case 'S16_94_DR'
                BN = {'E16-168_0021','E16-168_0022'};
            case 'S17_105_TA'
                BN = {'E17-58_0008','E17-58_0012','E17-58_0013','E17-58_0014','E17-58_0015','E17-58_0016','E17-58_0017'};
            case 'S15_89b_JQ'
                BN = {'E17-152_0025','E17-152_0026','E17-152_0027','E17-152_0028','E17-152_0029'};
                %case 'E16_429_0027'
                %BN = {'E16-429_0005','E16-429_0006','E16-429_0007','E16-429_0008','E16-429_0009','E16-429_0010','E16-429_0014','E16-429_0015','E16-429_0016'};
            case 'S16_97_CHM'
                %                 BN = {'E16-517_0009','E16-517_0010','E16-517_0011','E16-517_0012','E16-517_0013','E16-517_0014','E16-517_0015','E16-517_0016'};
                BN = {'E16-517_0009','E16-517_0010','E16-517_0015','E16-517_0016'};
                
                
            case 'S15_82_JB'
                BN = {'S15_82_JB_09','S15_82_JB_10','S15_82_JB_11','S15_82_JB_12','S15_82_JB_14','S15_82_JB_15','S15_82_JB_16','S15_82_JB_17'};
            case 'S15_87_RL'
                BN = {'E15-282_0016','E15-282_0017','E15-282_0021','E15-282_0022','E15-282_0023','E15-282_0025','E15-282_0026','E15-282_0027'};
            case 'S15_89_JQa'
                BN = {'E15-497_0008','E15-497_0009','E15-497_0010','E15-497_0011','E15-497_0012','E15-497_0013','E15-497_0014','E15-497_0015'};
            case 'S15_89_JQb'
                BN = {'E17-152_0025','E17-152_0026','E17-152_0028','E17-152_0030'};
            case 'S16_99_CJ'
                BN = {'E16-1107_0010','E16-1107_0011','E16-1107_0012','E16-1107_0013','E16-1107_0014','E16-1107_0015','E16-1107_0016','E16-1107_0017','E16-1107_0024','E16-1107_0025','E16-1107_0026','E16-1107_0028'};
            case 'S14_69_RTa'
                BN = {'S14_69_RT_03','S14_69_RT_04','S14_69_RT_05','S14_69_RT_06','S14_69_RT_07','S14_69_RT_08','S14_69_RT_09','S14_69_RT_10'};
            case 'S14_67_RH'
                BN = {'S14_67_RH_05','S14_67_RH_06','S14_67_RH_08','S14_67_RH_09','S14_67_RH_12','S14_67_RH_15','S14_67_RH_16','S14_67_RH_17'};
            case 'S14_68_NB'
                BN = {'S14_68_NB_08','S14_68_NB_09','S14_68_NB_10','S14_68_NB_11','S14_68_NB_12','S14_68_NB_13','S14_68_NB_14','S14_68_NB_15'};
                
            case 'S14_66_CZ'     % this one is correct on, there is another which is incorrect
                BN = {'S14_66_CZ_27','S14_66_CZ_37','S14_66_CZ_38','S14_66_CZ_39','S14_66_CZ_40'}; % 'S14_66_CZ_29' %'S14_66_CZ_26',
                %                 BN = {'S14_66_CZ_27','S14_66_CZ_30','S14_66_CZ_38','S14_66_CZ_39'};
                
            case 'S14_73_AY'
                %BN = {'S14_73_AY_20','S14_73_AY_21','S14_73_AY_22','S14_73_AY_24','S14_73_AY_25','S14_73_AY_26','S14_73_AY_27'};
                BN = {'S14_73_AY_20','S14_73_AY_21','S14_73_AY_22','S14_73_AY_24','S14_73_AY_26','S14_73_AY_27'};
            case 'S14_74_OD'
                %BN = {'S14_74_OD_05','S14_74_OD_06','S14_74_OD_07','S14_74_OD_08'};
                BN = {'S14_74_OD_06','S14_74_OD_07','S14_74_OD_08'};
            case 'S14_75_TB'
                BN = {'S14_75_TB_05','S14_75_TB_06','S14_75_TB_07','S14_75_TB_08','S14_75_TB_09','S14_75_TB_10','S14_75_TB_18','S14_75_TB_19','S14_75_TB_20'};
            case 'S14_76_AA'
                BN = {'S14_76_AA_06','S14_76_AA_07','S14_76_AA_08','S14_76_AA_09','S14_76_AA_11','S14_76_AA_12','S14_76_AA_13','S14_76_AA_14'};
                
                
            case 'S16_96_LF'
                BN = {'E16-429_0008','E16-429_0009','E16-429_0010','E16-429_0014','E16-429_0015','E16-429_0016'};
            case 'S15_90_SO'
                BN = {'E15-579_0008','E15-579_0009','E15-579_0010','E15-579_0011','E15-579_0012','E15-579_0013','E15-579_0014','E15-579_0015'};
            case 'S16_95_JOB'
                BN = {'E16-345_0016','E16-345_0017','E16-345_0020','E16-345_0021'};
            otherwise
                BN = [];
        end
        
    case 'Calculia_production'
        switch sbj
            case 'S18_124_JR2'
                BN = {'E18-309_0021','E18-309_0022','E18-309_0023','E18-309_0024'};
            case 'S18_126_DF'
                BN = {'E18-602_0011', 'E18-602_0012'}; %'E18-602_0010',
            case 'S18_127_AK'
                BN = {'E18-706_0022', 'E18-706_0025', 'E18-706_0026'};
            case 'S18_132_MDC'
                BN = {'E18-975_0018', 'E18-975_0019', 'E18-975_0022', 'E18-975_0023'};
            case 'S19_137_AF'
                BN = {'E19-380_0051','E19-380_0052','E19-380_0053','E19-380_0054'};
        end
    case 'Calculia_production_stim'
        switch sbj
            case 'S19_137_AF'
                BN = {'E19-380_0078','E19-380_0079','E19-380_0081','E19-380_0083','E19-380_0087'};
            case 'S19_139_JRb'
                BN = {'E19-495_0097','E19-495_0101','E19-495_0102'};
        end
        
    case 'Context'
        switch sbj
            case 'S12_43_HH'
                BN = {'HH-12','HH-14'};
            case 'S12_41_KS'
                BN = {'KS_24','KS_25','KS_26','KS_27','KS_28','KS_29'};
            case 'S12_45_LR'
                BN = {'LR_32','LR_33'};
            case 'S13_52_FVV'
                BN = {'FVV_16','FVV_18','FVV_19','FVV_21','FVV_22','FVV_23','FVV_24'};
            case 'S13_53_KS2'
                BN = {'KS2_24','KS2_25','KS2_26','KS2_27','KS2_28','KS2_29'};
            case 'S13_57_TVD'
                %                 BN = {'TVD_22','TVD_23','TVD_24','TVD_25','TVD_26'};
                BN = {'TVD_23','TVD_24','TVD_25','TVD_26'};
            otherwise
                BN = [];
        end
        
        
    case 'GradCPT'
        switch sbj
            case 'C17_13'
                BN = {'Run1','Run2','Run3','Run4'};
            case 'S15_89b_JQ'
                BN = {'E17-152_0045'};
            case 'S16_99_CJ'
                BN = {'E16-1107_0018','E16-1107_0019','E16-1107_0020','E16-1107_0021'};
            case 'S17_107_PR'
                BN = {'E17-237_0010','E17-237_0011'};
            case 'S17_110_SC'
                BN = {'E17-394_0010','E17-394_0011','E17-394_0017','E17-394_0018'};
            case 'S17_116_AA'
                %                 BN = {'E17-789_0009','E17-789_0010','E17-789_0019','E17-789_0020','E17-789_0021','E17-789_0026','E17-789_0028'};
                BN = {'E17-789_0009','E17-789_0019','E17-789_0020','E17-789_0021','E17-789_0026','E17-789_0028'};
            case 'S17_118_TW'
                BN = {'E17-910_0009','E17-910_0010','E17-910_0011','E17-910_0012','E17-910_0028','E17-910_0034','E17-910_0053'};
            case 'S18_119_AG'
                BN = {'E18-40_0008','E18-40_0009','E18-40_0010','E18-40_0011','E18-40_0014','E18-40_0015','E18-40_0016','E18-40_0035'};
            case 'S18_123_KJ'
                BN = {'E18-274_0001','E18-274_0013','E18-274_0014'};
            case 'S18_124_JR2'
                BN = {'E18-309_0009','E18-309_0010','E18-309_0012','E18-309_0013','E18-309_0015','E18-309_0034','E18-309_0035','E18-309_0037'};
            case 'C18_23'
                BN = {'S17_023_gradCPT_Block_1_6','S17_023_gradCPT_Block_2_6','S17_023_gradCPT_Block_3_6','S17_023_gradCPT_Block_4_6','S17_023_gradCPT_Block_5_6','S17_023_gradCPT_Block_6_6'}
            case 'C17_21'
                BN = {'S17_021_gradCPT_Block_1_4','S17_021_gradCPT_Block_2_4','S17_021_gradCPT_Block_3_4','S17_021_gradCPT_Block_4_4'}
            case 'C18_29'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C18_30'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C18_37'
                BN = {'GradCPT_1','GradCPT_2','GradCPT_3','GradCPT_4','GradCPT_5'};
            case 'C18_41'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C18_45'
                BN = {'gradCPT_1','gradCPT_2'}
            case 'C18_49'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4'};
            case 'C19_53'
                BN = {'gradCPT_1','Race_2_gradCPT_2'};
            case 'C19_62'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case   'C18_22'
                BN = {'S17_022_gradCPT_Block_1_6','S17_022_gradCPT_Block_2_6','S17_022_gradCPT_Block_3_6','S17_022_gradCPT_Block_4_6','S17_022_gradCPT_Block_5_6','S17_022_gradCPT_Block_6_6','S17_022_RACE_Block_2_3'}
            %case 'C18_23'
               % BN = {'S17_023_gradCPT_Block_1_6','S17_023_gradCPT_Block_2_6','S17_023_gradCPT_Block_3_6','S17_023_gradCPT_Block_4_6','S17_023_gradCPT_Block_5_6','S17_023_gradCPT_Block_6_6'}
            
            case    'C18_24'
                BN = {'C18_024_gradCPT_Block_1_4','C18_024_gradCPT_Block_2_4','C18_024_gradCPT_Block_3_4','C18_024_gradCPT_Block_4_4','C18_024_RACE_Block_2_3'};
                
            case 'C18_25'
                BN = {'C18_025_VgradCPT_Block_1_6','C18_025_VgradCPT_Block_2_6','C18_025_VgradCPT_Block_3_6','C18_025_VgradCPT_Block_5_6'};
                
            case 'C18_26'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C18_31'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C18_32'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4'};%,'gradCPT_5'};
            case 'C18_33'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C18_35'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C18_38'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C18_39'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5'};
            case 'C18_34'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4'};
            case 'C18_43'
                BN = {'gradCPT_1','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C18_44'
                BN = {'gradCPT2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C18_46'
                BN = {'gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C18_47'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C19_52'
                BN = {'gradCPT_1','Race_2_gradCPT_2'};
            case 'C19_58'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_5','gradCPT_6'};
            case 'C19_60'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C19_50'
                BN =   {'Race_2_gradCPT_2'} %{'gradCPT_1'}   
            case 'C19_51'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3_RACE_2','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C19_55'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'C18_42'
                BN = {'gradCPT_1','gradCPT_2','gradCPT_3','gradCPT_4','gradCPT_5','gradCPT_6'};
            case 'S17_114_EB'
                %BN = {'E17-526_0028','E17-526_0018'};
                BN = {'E17-526_0018'};
            case 'S17_116_AA'
                BN = {'E17-789_0009','E17-789_0010','E17-789_0019','E17-789_0020','E17-789_0021','E17-789_0026','E17-789_0028'};
            case 'S20_152_HT'
                BN = {'E20-580_0008','E20-580_0030'};
                
        end
    case 'MMR'
        switch sbj
            case 'S11_30_VA'
                BN = {'VA121011-05','VA121011-06'};
            case 'S11_31_DZa'
                BN = {'DZ1211-10'};
            case 'S12_32_JTa'
                BN = {'JT0112-3','JT0112-4'};
            case 'S12_32_JTb'
                BN = {'JT0112-45'};
            case 'S12_33_DA'
                BN = {'DA0112-03','DA0112-15'};
            case 'S12_34_TC'
                BN = {'TC0212-08','TC0212-10'};
            case 'S12_36_SrS'
                BN = {'SrS_09','SrS_10'};
            case 'S12_38_LK'
                BN = {'LK_08','LK_10'};
            case 'S12_41_KS'
                BN = {'KS_09','KS_13'};
            case 'S12_42_NC'
                BN = {'NC_05','NC_06'};
            case 'S12_45_LR'
                BN = {'LR_03','LR_06'};
            case 'S13_46_JDB'
                BN = {'JDB_01','JDB_03'};
            case 'S13_47_JT2'
                BN = {'JT2_01','JT2_03'};
            case 'S13_50_LGM'
                BN = {'LGM_08','LGM_13'};
            case 'S13_52_FVV'
                BN = {'FVV_01','FVV_02'};
                %                 BN = {'FVV_01'};
            case 'S13_53_KS2'
                BN = {'KS2_02','KS2_03'};
            case 'S13_54_KDH'
                BN = {'KDH_03','KDH_04'};
            case 'S13_55_JJC'
                BN = {'JJC_04','JJC_06'};
            case 'S13_56_THS'
                BN = {'THS_07','THS_08'};
            case 'S13_57_TVD'
                BN = {'TVD_08','TVD_10','TVD_13','TVD_14'};
            case 'S13_59_SRR'
                BN = {'SRR_02','SRR_03'};
            case 'S13_60_DY'
                BN = {'DY_06','DY_07','DY_09'};
            case 'S14_61_CM2'
                BN = {'S14_61_03'};
            case 'S14_62_JW'
                BN = {'S14_62_04','S14_62_05'};
            case 'S14_64_SP'
                BN = {'S14_64_SP_02','S14_64_SP_03'};
            case 'S14_65_HN'
                BN = {'S14_65_HN_02','S14_65_HN_05'};
            case 'S14_66_CZ'
                BN = {'S14_66_CZ_09','S14_66_CZ_11'};
            case 'S14_67_RH'
                BN = {'S14_67_RH_01','S14_67_RH_04'};
            case 'S14_68_NB'
                BN = {'S14_68_NB_01','S14_68_NB_02'};
            case 'S14_69_RTa'
                BN = {'S14_69_RT_02'};
            case 'S17_69_RTb'
                BN = {'E17-438_0008','E17-438_0009','E17-438_0010'};
            case 'S14_73_AY'
                BN = {'S14_73_AY_04','S14_73_AY_05'};
            case 'S14_74_OD'
                BN = {'S14_74_OD_02','S14_74_OD_03'};
            case 'S14_75_TB'
                BN = {'S14_75_TB_02','S14_75_TB_03', 'S14_75_TB_12'};
            case 'S14_76_AA'
                BN = {'S14_76_AA_02','S14_76_AA_03'}; % 'S14_76_AA_20','S14_76_AA_21'
            case 'S14_78_RSa'
                BN = {'S14_78_RS_02','S14_78_RS_03'};
                %             case 'S14_78_RSb'
                %                 BN = {'S14_78_RSb_06','S14_78_RSb_07'};
            case 'S14_78_RSb'
                BN = {'S14_78_RSb_02','S14_78_RSb_03','S14_78_RSb_06'};
            case 'S14_80_KBa'
                BN = {'S14_80_KB_03'};
            case 'S17_80_KBb'
                BN = {'E17-669_0008'};
            case 'S15_81_RM'
                BN = {'S15_81_RM_03','S15_81_RM_04'};
            case 'S15_82_JB'
                BN = {'S15_82_JB_06','S15_82_JB_07'};
            case 'S15_83_RR'
                BN = {'S15_83_RR_03','S15_83_RR_08'}; % 'S15_83_RR_07' - no RTs
            case 'S15_84_KG'
                BN = {'S15_84_KG_02','S15_84_KG_04'};
            case 'S15_86_CL'
                BN = {'S15_86_CL_21'};
            case 'S15_87_RL'
                BN = {'E15-282_0010'};
            case 'S15_89_JQa'
                BN = {'E15-497_0006','E15-497_0007'};
            case 'S15_90_SO'
                BN = {'E15-579_0003','E15-579_0004'};
            case 'S15_92_MR'
                BN = {'E15-770_0009','E15-770_0018'};
            case 'S16_93_MA'
                BN = {'E16-022_0006','E16-022_0007'};
            case 'S16_94_DR'
                BN = {'E16-168_0007'};
            case 'S16_99_CJ'
                BN={'E16-1107_0002','E16-1107_0003'};
            case 'S16_95_JOB'
                BN = {'E16-345_0002','E16-345_0003'};
            case 'S10_18_JBXb'
                BN = {'E15-428_0005','E15-428_0006'};
            case 'S17_105_TA'
                BN = {'E17-58_0003','E17-58_0004'};
            case 'S17_106_SD'
                BN = {'E17-107_0008','E17-107_0010','E17-107_0011'};
            case 'S17_107_JQ'
                BN = {'E17-152_0002','E17-152_0003'};
            case 'S17_109_NM'
                BN = {'E17-356_0008','E17-356_0009'};
            case 'S17_110_SC'
                BN = {'E17-394_0006','E17-394_0007'};
            case 'S17_112_EA'
                BN = {'E17-450_0006','E17-450_0007','E17-450_0008'};
            case 'S17_113_CAM'
                BN = {'E17-508_0006','E17-508_0007'};
            case 'S17_115_MP'
                BN = {'E17-681_0001','E17-681_0002'};
            case 'S17_116_AA'
                BN = {'E17-789_0003','E17-789_0004'};
            case 'S17_117_MC'
                BN = {'E17-823_0004','E17-823_0005'};
            case 'S17_118_TW'
                BN = {'E17-910_0005','E17-910_0006'};
            case 'S18_119_AG'
                BN = {'E18-40_0005','E18-40_0006'};
            case 'S18_120_EGa'
                BN = {'E18-65_0005'};
            case 'S18_122_KS3'
                BN = {'E18-226_0005','E18-226_0006'};
            case 'S18_124_JR2'
                BN = {'E18-309_0004','E18-309_0005'};%,
            case 'S18_125_LU'
                BN = {'E18-542_0007','E18-542_0008'};
            case 'S18_126_DF'
                BN = {'E18-602_0017','E18-602_0019'};
            case 'S11_27_PT'
                BN = {'PT0711-05','PT0711-06'};
            case 'S12_43_HH'
                BN = {'HH-02','HH-04'};
            case 'S12_44_EA'
                BN = {'EA_01'};
            case 'S14_72_NHF'
                BN = {'S14_72_NHF_14','S14_72_NHF_15'};
            case 'S15_84_KG'
                BN = {'S15_84_KG_02','S15_84_KG_04'};
            case 'S15_91_RP'
                BN = {'E15_695_0006','E15-695-0012'};
            case 'S16_100_AF'
                BN = {'E16-950_0002','E16-950_0003'};
            case 'S16_96_LF'
                BN = {'E16_429_0027'};
            case 'S16_97_CHM'
                BN = {'E16-517_0007'};
            case 'S17_108_AH'
                BN = {'E17-265_0011','E17-265_0012','E17-265_0013'};
            case 'S17_69_RTb'
                BN = {'E17-438_0008','E17-438_0009','E17-438_0010'};
            case 'S17_104_SW'
                BN = {'E17-32_0008','E17-32_0009'};
            case 'S15_89_JQb'
                BN = {'E17-152_0002','E17-152_0003'};
            case 'S17_107_PR'
                BN = {'E17-237_0006','E17-237_0007','E17-237_0008'};
            case 'S17_114_EB'
                BN = {'E17-526_0005','E17-526_0006'};
            case 'S18_131_CB'
                BN = {'E18-896_0001','E18-896_0013'};
            case 'S18_132_MDC'
                BN = {'E18-975_0006','E18-975_0007'};
                
            case 'S19_137_AF'
                BN = {'E19-380_0034', 'E19-380_0036'};
            case 'S13_58_MJD'
                
                BN = {'MJD_01','MJD_02'};
            case 'S14_63_ML'
                
                BN = {'S14_63_07','S14_63_09'}   ;
            case 'S18_130_RH'
                BN ={'E18-841_0026','E18-841_0027'};
            case 'S19_81_RMb'
                BN = {'E19-61_0002','E19-61_0007'};
            case 'S19_139_JRb'
                BN = {'E19-495_0090','E19-495_0091'}
            otherwise
                BN = [];
        end
    case 'UCLA'
        switch sbj
            case 'S09_06_RM'
                BN = {'ST06_43'};
            case 'S09_07_CM'
                BN = {'ST07-03','ST07-07'};
            case 'S10_09_AP'
                BN = {'ANP065','ANP066'};
            case 'S10_12_AC'
                BN = {'AC0210_03','AC0210_05','AC0210_07','AC0210_08'};
            case 'S10_18_JBXa'
                BN = {'JBX1210-01','JBX1210-02'};
            case 'S11_23_MD'
                BN = {'MD0311-01','MD0311-05'};
            case 'S11_20_RHb'
                BN = {'RHb0211-01'};
            case 'S11_26_SRa'
                BN = {'SR-03','SR-10'};
            case 'S11_26_SRb'
                BN = {'SRb-17'};
            case 'S11_28_LS'
                BN = {'LS0911-08'};
            case 'S11_29_RB'
                BN = {'RB0911-02','RB0911-20'};
            case 'S10_15_KB2'
                BN = {'KB0510_01','KB0510_03'};
            case 'S11_22_EG'
                BN = {'EG0311-23'};
            case 'S11_25_DL'
                BN = {'dl_04','dl_44'};
            case 'S11_20_RHa'
                BN = {'RH0211-02','RH0211-05'};
            otherwise
                BN = [];
        end
    case 'Scrambled'
        switch sbj
            case 'S11_28_LS'
                BN = {'LS0911-47'};
            case 'S11_31_DZa'
                BN = {'DZ1211-14'};
            case 'S12_36_SrS'
                BN = {'SrS_04'};
            case 'S12_38_LK'
                BN = {'LK_26'};
            case 'S12_41_KS'
                BN = {'KS_15'};
            case 'S12_45_LR'
                BN = {'LR_15'};
            case 'S13_53_KS2'
                BN = {'KS2_07'};
            case 'S13_55_JJC'
                BN = {'JJC_13'};
            case 'S14_64_SP'
                BN = {'S14_64_SP_10','S14_64_SP_11'};
            case 'S14_66_CZ'
                BN = {'S14_66_CZ_13'};
            case 'S14_67_RH'
                BN = {'S14_67_RH_22'};
            case 'S14_80_KB'
                BN = {'S14_80_KB_39'};
            case  'S14_80_KBa'
                BN = {'S14_80_KB_39'};
            case 'S15_83_RR'
                BN = {'S15_83_RR_26'};
            case 'S16_95_JOB'
                BN = {'E16-345_0026'};
            case 'S15_91_RP'
                BN = {'E15-695-0013'};
            case 'S15_87_RL'
                BN = {'E15-282_0011'};
            case 'S13_46_JDB'
                BN = {'JDB_05'};
            case 'S15_81_RM'
                BN = {'S15_81_RM_13'};
            case 'S14_69_RTa'
                BN = {'S14_69_RT_12'};
            case 'S12_37_EJ'
                BN = {'EJ_13'};
            case 'S14_70_AP'
                BN = {'S14_70_AP_08'};
            case 'S15_86_CL'
                BN = {'S15_86_CL_09'};
            otherwise
                BN = [];
        end
    case 'AllCateg'
        switch sbj
            case 'S11_29_RB'
                BN = {'RB0911-17'};
            case 'S12_32_JTa'
                BN = {'JT0112-27'};
            case 'S12_32_JTb'
                BN = {'JT0112-27'};
            case 'S11_31_DZa'
                BN = {'DZ1211-13'};
            case 'S11_31_DZb'
                BN = {'DZb1211-2'};
            case 'S12_37_EJ'
                BN = {'EJ_05'};
            case 'S12_36_SrS'
                BN = {'SrS_15', 'SrS_17'};
            case 'S11_30_VA'
                BN = {'va121011-07'};
            otherwise
                BN = [];
        end
    case 'LogoPassive'
        switch sbj
            case 'S13_52_FVV'
                BN = {'FVV_06'};
            case 'S13_57_TVD'
                BN ={'TVD_09'};
            case 'S14_62_JW'
                BN = {'S14_62_07'};
            otherwise
                BN = [];
        end
    case 'LogoActive'
        switch sbj
            case 'S14_64_SP'
                BN = {'S14_64_SP_19'};
            otherwise
                BN = [];
        end
        
    case 'Logo'
        switch sbj
            case 'S12_36_SrS'
                BN = {'SrS_03','SrS_16'};
            case 'S13_52_FVV'
                BN = {'FVV_04','FVV_06'}; %added another
            case 'S13_57_TVD'
                BN ={'TVD_09'};
            case 'S14_62_JW'
                BN = {'S14_62_07'};
            case 'S14_64_SP'
                BN = {'S14_64_SP_19'}; %do not use block 18
            case 'S14_73_AY'
                BN = {'S14_73_AY_06','S14_73_AY_03'};
            case 'S14_61_CM2'
                BN = {'S14_61_06'};
            case 'S12_45_LR'
                BN = {'LR_16','LR_17'};
            case   'S13_53_KS2'
                BN = {'KS2_04'};
            case 'S13_46_JDB'
                BN = {'JDB_08'};
            case 'S12_37_EJ'
                BN = {'EJ_06'};
            case 'S13_55_JJC'
                BN = {'JJC_05','JJC_11'};
            case 'S14_66_CZ'
                BN = {'S14_66_CZ_07'}; %MISSING OTHER BLOCK
            case 'S12_38_LK'
                BN = {'LK_03'};
            case 'S12_41_KS'
                BN = {'KS_11'};
            otherwise
                BN = [];
        end
        
        
    case 'ReadNumWord'
        switch sbj
            case 'S11_26_SRa'
                BN = {'SR-07','SR-13'};
            case 'S11_28_LS'
                BN = {'LS0911-04'};
            case 'S11_29_RB'
                BN = {'RB0911-18'};
            case 'S11_31_DZa'
                BN = {'DZ1211-15'};
            case 'S12_32_JTa'
                BN = {'JT0112-29'};
            case 'S12_36_SrS'
                BN = {'SrS_01'};
            case 'S12_38_LK'
                BN = {'LK_02'};
            case 'S12_41_KS'
                BN = {'KS_12'};
            case 'S12_42_NC'
                BN = {'NC_02'};
            case 'S12_45_LR'
                BN = {'LR_14'};
            case 'S13_47_JT2'
                BN = {'JT2_02'};
            case 'S13_53_KS2'
                BN = {'KS2_06'};
            case 'S13_57_TVD'
                BN = {'TVD_11'};
            case 'S14_62_JW'
                BN = {'S14_62_25'};
            case 'S14_64_SP'
                %BN = {'S14_64_SP_07','S14_64_SP_08'};
                BN = {'S14_64_SP_08'};
            case 'S14_66_CZ'
                BN = {'S14_66_CZ_12'};
            case 'S14_80_KB'
                BN = {'S14_80_KB_13'};
            case 'S15_83_RR'
                BN = {'S15_83_RR_05'};
            case 'S16_94_DR'
                BN = {'E16-168_0002'};
            case 'S17_106_SD'
                BN = {'E17-107_0026'};
            case 'S14_80_KBa'
                BN = {'S14_80_KB_13'};
            otherwise
                BN = [];
        end
        
    case 'Rest'
        switch sbj
            case 'S09_06_RM'
                BN = {'ST06_01','ST06_03'};
            case 'S09_07_CM'
                BN = {'NKClinicalRest2','NKClinicalRest3'};
            case 'S10_18_JBXa'
                BN = {'NKClinicalRest1','NKClinicalRest2'};
            case 'S11_20_RHb'
                BN = {'NKClinicalRest2','NKClinicalRest1'};
            case 'S11_26_SRb'
                BN = {'SRb-04'};
            case 'S11_29_RB'
                BN = {'RB0911-01'};
            case 'S12_32_JTb'
                BN = {'JT0112-40'};
            case 'S12_33_DA'
                BN = {'DA0112-01'};
            case 'S12_38_LK'
                %                 BN = {'LK_05','LK_11','LK_24'};
                BN = {'LK_11'};
            case 'S12_42_NC'
                BN = {'NC_01','NC_03'};
                BN = {'NC_01'};
            case 'S12_45_LR'
                BN = {'LR_02','LR_05'};
            case 'S13_47_JT2'
                BN = {'JT2_17','JT2_04','JT2_07'};
            case 'S13_55_JJC'
                BN = {'JJC_21'};
            case 'S13_56_THS'
                BN = {'THS_04','THS_06','THS_19'};
            case 'S13_57_TVD'
                BN = {'TVD_15'};
            case 'S14_74_OD'
                BN = {'NKClinicalRest1'};
            case 'S15_83_RR'
                BN = {'S15_83_RR_04','S15_83_RR_19'};
                BN = {'S15_83_RR_04'};
            case 'S16_100_AF'
                BN = {'E16-950_0001','E16-950_0006','E16-950_0011'};
            otherwise
                BN = [];
        end
    case 'VTCLoc'
        switch sbj
            case 'G18_27'
                BN = {'VTC24_1','VTC24_2','VTC24_3'};
            case 'S14_61_CM2'
                BN = {'S14_61_02'};
            case 'S14_62_JW'
                BN = {'S14_62_01'};
            case 'S14_64_SP'
                BN = {'S14_64_SP_06'};
            case 'S14_65_HN'
                BN = {'S14_65_HM_03'};
            case 'S14_66_CZ'
                BN = {'S14_66_CZ_03'};
            case 'S14_67_RH'
                BN = {'S14_67_RH_03'};
            case 'S14_70_AP'
                BN = {'S14_70_AP_05'};
            case 'S14_73_AY'
                BN = {'S14_73_AY_01'};
            case 'S14_80_KBa'
                BN = {'S14_80_KB_11'};
            case 'S15_81_RM'
                BN = {'S15_81_RM_02'};
            case 'S15_83_RR'
                BN = {'S15_83_RR_25'};
            case 'S15_86_CL'
                BN = {'S15_86_CL_06','S15_86_CL_19'};
            case 'S15_87_RL'
                BN = {'E15-282_0013'};
            case 'S15_91_RP'
                BN = {'E15-695_0009'};
            case 'S15_92_MR'
                BN = {'E15-770_0017'};
            case 'S16_100_AF'
                BN = {'E16-950_0005','E16-950_0007','E16-950_0008'}   ;
            case 'S16_94_DR'
                BN = {'E16-168_0014'};
            case 'S17_112_EA'
                BN = {'E17-450_0002','E17-450_0003','E17-450_0004'};
            case  'S14_63_ML'
                BN = {'S14_63_04'};
            case 'S18_132_MDC'
                BN = {'E18-975_0004','E18-975_0005'};
            case 'S18_130_RH'
                BN = {'E18-841_0002','E18-841_0006'};
            case 'S18_129_AS'
                BN = {'E18-767_0002','E18-767_0003'};
            case 'S18_127_AK'
                BN = {'E18-706_0016'};
            case 'S18_126_DF'
                BN = {'E18-602_0035','E18-602_0036'};
            case 'S18_125_LU'
                BN = {'E18-542_0003','E18-542_0004'};
            case 'S18_123_KJ'
                BN = {'E18-274_0004','E18-274_0006'};
            case 'S18_120_EGb'
                BN = {'E18-447_0003','E18-447_0004'};
            case 'S17_80_KBb'
                BN = {'E17-669_0003'};
            case 'S17_69_RTb'
                BN = {'E17-438_0004','E17-438_0005','E17-438_0007'};
            case 'S17_106_SD'
                BN = {'E17-107_0001','E17-107_0005','E17-107_0006'};
            case 'S17_104_SW'
                BN = {'E17-32_0004','E17-32_0005','E17-32_0006'};
            case 'S17_107_PR'
                BN = {'E17-237_0002','E17-237_0003','E17-237_0004'};
            case 'S17_108_AH'
                BN = {'E17-265_0004','E17-265_0005','E17-265_0007'};
            case 'S17_109_NM'
                BN = {'E17-356_0003','E17-356_0004','E17-356_0005'};
            case 'S17_110_SC'
                BN = {'E17-394_0002','E17-394_0003','E17-394_0004'};
            case 'S17_113_CAM'
                BN = {'E17-508_0003','E17-508_0004','E17-508_0005'};
            case 'S17_114_EB'
                BN = {'E17-526_0002','E17-526_0003','E17-526_0004'};
            case 'S17_116_AA'
                BN = {'E17-789_0005','E17-789_0006','E17-789_0007'};
            case 'S17_117_MC'
                BN = {'E17-823_0001','E17-823_0002','E17-823_0003'};
            case 'S17_118_TW'
                %BN = {'E17-910_0002','E17-910_0003','E17-910_0004'};
                BN = {'E17-910_0002','E17-910_0003'};

            case 'S15_89_JQb'
                BN = {'E17-152_0004','E17-152_0005','E17-152_0006'};
            case 'S18_124_JR2'
                BN = {'E18-309_0001','E18-309_0002','E18-309_0006'};
            case 'S19_139_JRb'
                BN = {'E19-495_0003','E19-495_0004', 'E19-495_0035', 'E19-495_0037'};
            case 'S18_119_AG'
                BN = {'E18-40_0003','E18-40_0004'};
            case 'S18_125_LU'
                BN = {'E18-542_0003','E18-542_0004'};
            case 'S19_134_MJ'
                BN = {'E19-199_0006'};
            case 'S19_138_MV'
                BN = {'E19-416_0001','E19-416_0003'};
            case 'S16_102_MDO'
                BN = {'E16-993_0002','E16-993_0003','E16-993_0004'};
            case 'S17_105_TA'
                BN = {'E17-58_0005','E17-58_0006'};
            case  'S19_136_AG'
                BN = {'E19-320_0001','E19-320_0003'};
            case 'C18_31'
               BN =  {'VTC24_1', 'VTC24_2','VTC24_3'};
            case 'C18_32'
                BN = {'VTC24_1', 'VTC24_2','VTC24_3'};
            case 'C18_30'
                BN = {'VTC24_1', 'VTC24_2','VTC24_3'};
            case 'C18_27'
               BN =  {'VTC24_1', 'VTC24_2','VTC24_3'};    
            case 'C18_35'
                BN =  {'VTC24_1', 'VTC24_2','VTC24_3'};    
            case 'C18_37'
                BN =  {'VTC24_1', 'VTC24_2','VTC24_3'};    
            case 'C18_38'
                BN =  {'VTC_1', 'VTC_2','VTC_3'};    
            case 'C18_49'
                BN =  {'VTC_1', 'VTC_2','VTC_3'};                    
             case 'C18_39'
                BN =  {'VTC_1', 'VTC_2','VTC_3'};  
            case 'C18_41'
                BN =  {'VTC_1', 'VTC_2','VTC_3'};      
            case 'C18_45'
                BN =  {'VTC_1', 'VTC_2','VTC_3'}; 
            case 'C18_42'
                BN =  {'VTC_1', 'VTC_2','VTC_3'}; 
            case 'C18_47'
                BN =  {'VTC_1', 'VTC_2','VTC_3'};   
            case 'C19_50'
                BN =  {'VTC_1', 'VTC_2','VTC_3'};   
            case 'C19_43'
                BN =  {'VTC_1', 'VTC_2','VTC_3'};   
            case 'C19_45'
                BN =  {'VTC_1', 'VTC_2','VTC_3'}; 
            case 'C19_58'
                BN =  {'VTC_1', 'VTC_2','VTC_3'};   
            case 'C19_60'
                BN =  {'VTC_1', 'VTC_2','VTC_3'}; 
            case 'C18_43'
                BN =  {'VTC_1', 'VTC_2','VTC_3'};    
            case 'C18_23'
                BN = {'S17_023_VTC24_Block_1_3','S17_023_VTC24_Block_2_3','S17_023_VTC24_Block_3_3'};
            case 'C17_21'
                BN = {'S17_021_VTC24_Block_1_3','S17_021_VTC24_Block_2_3','S17_021_VTC24_Block_3_3'};
            case 'C18_22'
                BN = {'S17_022_VTC24_Block_1_3','S17_022_VTC24_Block_2_3','S17_022_VTC24_Block_3_3'};
            case 'C18_25'
                BN = {'C18_025_VTC25_Block_1_3','C18_025_VTC25_Block_2_3','C18_025_VTC25_Block_3_3'};
            case 'C18_26'
                BN =  {'VTC24_1', 'VTC24_2','VTC24_3'};
            case 'C19_55'
                BN = {'VTC_1','VTC_2','VTC_3'};
            case 'C18_28'
                BN =  {'VTC24_1', 'VTC24_2','VTC24_3'};  
            case 'C18_29'
                BN =  {'VTC24_1', 'VTC24_2','VTC24_3'}; 
            case 'C19_62'
                 BN =  {'VTC_1', 'VTC_2','VTC_3'};
            case 'S20_152_HT'
                BN = {'E20-580_0032','E20-580_0033'};
            otherwise
                BN = [];
        end
    case 'MFA'
        switch sbj
            case 'S11_31_DZa'
                BN = {'DZ1211-11'};
            case 'S12_32_JTa'
                BN = {'JT0112-28'};
            case 'S12_32_JTb'
                BN = {'JT0112-42'};
            case 'S12_33_DA'
                BN = {'DA0112-07'};
            case 'S12_36_SrS'
                BN = {'SrS_02'};
            case 'S12_41_KS'
                BN = {'KS_16'};
            case 'S12_42_NC'
                BN = {'NC_09'};
            case 'S13_47_JT2'
                BN = {'JT2_16'};
            case 'S13_52_FVV'
                BN = {'FVV_09'};
            case 'S13_53_KS2'
                BN = {'KS2_08'};
            case 'S13_55_JJC'
                BN = {'JJC_10'};
            case 'S13_57_TVD'
                BN = {'TVD_16'};
            case 'S15_89_JQb'
                BN = {'E17-152_0024'};
            case 'S16_99_CJ'
                BN = {'E16-1107_0022','E16-1107_0023'};
            case 'S11_31_DZb'
                BN = {'DZb1211-5'};
            otherwise
                BN = [];
        end
    case 'Memoria'
        switch sbj
            case {'S17_69_RTb','S14_69b_RT'}
                BN = {'E17-438_0012','E17-438_0013','E17-438_0014','E17-438_0015','E17-438_0034','E17-438_0035'};
                %                 BN = {'E17-438_0034','E17-438_0035'};
            case 'S16_99_CJ'
                BN = {'E16-1107_0005','E16-1107_0006','E16-1107_0007','E16-1107_0008'};
            case 'S16_100_AF'
                BN = {'E16-950_0009','E16-950_0010'};
            case 'S16_102_MDO'
                BN = {'E16-993_0005','E16-993_0006','E16-993_0007'};
            case 'S17_104_SW'
                BN = {'E17-32_0013','E17-32_0015','E17-32_0016'};
            case 'S17_105_TA'
                BN = {'E17-58_0029','E17-58_0030','E17-58_0032','E17-58_0033'};
            case 'S17_106_SD'
                BN = {'E17-107_0015','E17-107_0016','E17-107_0017'};
            case {'S15_89b_JQ'}
                BN = {'E17-152_0015','E17-152_0016','E17-152_0017','E17-152_0023'};
            case 'S17_107_PR'
                BN = {'E17-237_0013','E17-237_0014','E17-237_0015','E17-237_0016'};
            case 'S17_109_NM'
                BN = {'E17-356_0026','E17-356_0028'};
            case 'S17_110_SC'
                BN = {'E17-394_0012','E17-394_0013','E17-394_0014','E17-394_0015'};
            case 'S17_112_EA'
                BN = {'E17-450_0010','E17-450_0011','E17-450_0012','E17-450_0013'};
            case 'S17_114_EB'
                BN = {'E17-526_0020','E17-526_0021','E17-526_0022'};
                %                 BN = {'E17-526_0019','E17-526_0020','E17-526_0021','E17-526_0022'};
            case 'S17_115_MP'
                BN = {'E17-681_0006','E17-681_0007','E17-681_0008','E17-681_0009'};
            case {'S17_116_AA','S17_116'}
                BN = {'E17-789_0011','E17-789_0012','E17-789_0014','E17-789_0015','E17-789_0016'};
            case 'S17_117_MC'
                BN = {'E17-823_0009','E17-823_0010','E17-823_0011','E17-823_0012'};
            case {'S17_118_TW','S17_118'}
                BN = {'E17-910_0015','E17-910_0016','E17-910_0017','E17-910_0018'};
            case {'S18_119_AG','S18_119'}
                BN = {'E18-40_0019','E18-40_0020','E18-40_0021','E18-40_0022'};
            case 'S18_120_EGa'
                BN = {'E18-65_0006','E18-65_0007','E18-65_0008','E18-65_0009','E18-65_0010'};
            case 'S18_123_KJ'
                BN = {'E18-274_0009','E18-274_0010','E18-274_0011'};
            case {'S18_124_JR2','S18_124'}
                BN = {'E18-309_0017','E18-309_0018','E18-309_0019','E18-309_0020'};
            case 'S18_125_LU'
                BN = {'E18-542_0013','E18-542_0014'};
            case 'S18_126_DF'
                BN = {'E18-602_0003','E18-602_0004','E18-602_0005','E18-602_0006'};
            case {'S18_127_AK','S18_127'}
                BN = {'E18-706_0003','E18-706_0004', 'E18-706_0007','E18-706_0008','E18-706_0011','E18-706_0013'};
            case {'S18_128_CG','S18_128'}
                BN = {'E18-739_0002','E18-739_0003', 'E18-739_0005','E18-739_0006'};
            case {'S18_129_AS','S18_129'}
                BN = {'E18-767_0004', 'E18-767_0016', 'E18-767_0018', 'E18-767_0019'};
            case {'S18_130_RH','S18_130'}
                BN = {'E18-841_0005', 'E18-841_0008', 'E18-841_0009', 'E18-841_0015'};
            case 'S17_108_AH'
                BN = {'E17-265_0014','E17-265_0015','E17-265_0016'};
            case 'S15_87_RL'
                BN = {'E15-282_0038','E15-282_0040','E15-282_0041'};
            case 'S15_89_JQa'
                BN = {'E15-497_0067','E15-497_0068','E15-497_0069'};
                
            case 'S18_108_AH'
                BN = {'E17-265_0014','E17-265_0015','E17-265_0016'};
            case 'S15_82_JB'
                BN = {'S15_82_JB_51','S15_82_JB_52','S15_82_JB_53','S15_82_JB_54','S15_82_JB_55'};
            case 'S15_89_JQb'
                BN = {'E17-152_0015','E17-152_0016','E17-152_0017','E17-152_0023'};
            case 'S18_131_CB'
                BN = {'E18-896_0002','E18-896_0003', 'E18-896_0011', 'E18-896_0012'};
            case 'S17_107_JQ'
                BN = {'E17-152_0015','E17-152_0016', 'E17-152_0017', 'E17-152_0023'};
            case 'S18_132_MDC'
                BN = {'E18-975_0025','E18-975_0026'};
            case 'S19_136_AG'
                BN = {'E19-320_0004','E19-320_0005', 'E19-320_0006'};
            case 'S19_137_AF'
                BN = {'E19-380_0012','E19-380_0013', 'E19-380_0032'};    %'E19-380_0018', 'E19-380_0019',
            case 'S19_139_JRb'
                BN = {'E19-495_0005','E19-495_0006','E19-495_0007','E19-495_0008'};
            case 'S19_142_EA'
                BN = {'E19-786_0003','E19-786_0004','E19-786_0006','E19-786_0007'};
            case 'S19_140_AL'
                BN = {'E19-647_0002','E19-647_0004','E19-647_0005','E19-647_0007'}
            case  'S19_134_MJ'
                BN = {'E19-199_0002','E19-199_0003','E19-199_0004','E19-199_0051'}
            otherwise
                
                
                BN = [];
        end
    case 'Memoria_imagine'
        switch sbj
            case 'S17_105_TA'
                BN = {'E17-58_0035'};
        end
        
    case 'SevenHeaven'
        switch sbj
            case 'S17_105_TA'
                BN = {'E17-58_0035'};
            case 'S15_84_KG'
                BN = {'S15_84_KG_05'};
            case 'S15_91_RP'
                BN = {'E15-695-0011'};
            case 'S16_96_LF'
                BN = {'E16-429_0003'};
            case 'S17_106_SD'
                BN = {'E17-107_0026'};
            case 'S12_42_NC'
                BN = {'S12_42_NC'};
            case 'S13_46_JDB'
                BN = {'JDB_06'};
            case 'S13_52_FVV'
                BN = {'FVV_03'};
            case 'S13_55_JJC'
                BN = {'JJC_08'};
            case 'S13_60_DY'
                BN = {'DY_02'};
            case 'S14_65_HN'
                BN = {'S14_65_HN_06'};
            case 'S14_67_RH'
                BN = {'S14_67_RH_21'};
            case 'S14_69_RTa'
                BN = {'S14_69_RT_13'};
            case 'S14_70_AP'
                BN = {'S14_70_AP_07'};
            case 'S14_73_AY'
                BN = {'S14_73_AY_09'};
            case 'S14_76_AA'
                BN = {'S14_76_AA_04'};
            case 'S14_79_MJ'
                BN = {'S14_79_MJ_05'};
            case 'S15_86_CL'
                BN = {'S15_86_CL_10'};
            case 'S15_90_SO'
                BN = {'E15-579_0017'}';
            case 'S16_93_MA'
                BN = {'E16-022_0005'};
            case 'S15_81_RM'
                BN = {'S15_81_RM_11'};
            case 'S15_87_RL'
                BN = {'E15-282_0004'};
            case 'S14_78_RSa'
                BN = {'S14_78_RS_04'};
            case 'S14_78_RSb'
                BN = {'S14_78_RSb_08'};
            case 'S15_83_RR'
                BN = {'S15_83_RR_05'};
            case 'S16_95_JOB'
                BN = {'E16-345_0023'};
        end
        
    case 'Memoria_EBS'
        switch sbj
            case 'S17_104_SW'
                BN = {'E17-32_0039'};
            case 'S15_89b_JQ'
                BN = {'E17-152_0038'};
        end
        
    case 'Number_comparison'
        switch sbj
            case 'S17_69_RTb'
                BN = {'E17-438_0016','E17-438_0017','E17-438_0018','E17-438_0019'};
            case 'S17_107_JQ'
                BN = {'E17-152_0018','E17-152_0020','E17-152_0021','E17-152_0022'};
            case {'S17_116_AA','S17_116'}
                BN = {'E17-789_0017','E17-789_0018','E17-789_0029','E17-789_0030'};
            case 'S18_126_DF'
                BN = {'E18-602_0042','E18-602_0043','E18-602_0044','E18-602_0045'};
            case 'S18_127_AK'
                BN = {'E18-706_0027', 'E18-706_0036', 'E18-706_0039'};
            case 'G18_19'
                BN = {'G019_comparison_01', 'G019_comparison_02'};
            case 'G18_20'
                BN = {'comparison_b2'};
            case 'G18_21'
                BN = {'G021_comparison_01', 'G021_comparison_02', 'G021_comparison_03', 'G021_comparison_04'};
            case 'G18_22'
                BN = {'G022_comparison_01', 'G022_comparison_02', 'G022_comparison_03', 'G022_comparison_04'};
            case 'G18_23'
                BN = {'G023_comparison_01', 'G023_comparison_02', 'G023_comparison_03'};
            case 'G18_24'
                BN = {'G024_comparison_01', 'G024_comparison_02', 'G024_comparison_03'};
            case 'G18_26'
                BN = {'G026_comparison_01', 'G026_comparison_02', 'G026_comparison_03'};
            case 'G18_29'
                BN = {'G029_comparison_01', 'G029_comparison_02', 'G029_comparison_03'};
            case 'G18_30'
                BN = {'G030_comparison_01', 'G030_comparison_02', 'G030_comparison_03'};
            case 'G18_31'
                BN = {'G031_comparison_01', 'G031_comparison_02', 'G031_comparison_03'};
            case 'G19_32'
                BN = {'G032_comparison_01', 'G032_comparison_02', 'G032_comparison_03'};
            case 'G19_33'
                BN = {'G033_comparison_01', 'G033_comparison_02', 'G033_comparison_03'};
                
            case 'S19_137_AF'
                BN = {'E19-380_0045', 'E19-380_0046', 'E19-380_0048', 'E19-380_0049', 'E19-380_0091', 'E19-380_0092', 'E19-380_0093', 'E19-380_0095'};
        end
        
    case 'Calculia_China'
        switch sbj
            case 'G18_19'
                BN = {'G019_calculia_01','G019_calculia_02'}; % 'G019_calculia_03' double check pdio
            case 'G18_20'
                BN = {'calculia_b1','calculia_b2'};
            case 'G18_21'
                BN = {'G021_calculia_01','G021_calculia_02','G021_calculia_03','G021_calculia_04'};
            case 'G18_22'
                BN = {'G022_calculia_01','G022_calculia_02', 'G022_calculia_03', 'G022_calculia_04'};
            case 'G18_23'
                BN = {'G023_calculia_01','G023_calculia_02', 'G023_calculia_03'};
            case 'G18_24'
                BN = {'G024_calculia_01','G024_calculia_02', 'G024_calculia_03'};
            case 'G18_26'
                BN = {'G026_calculia_02', 'G026_calculia_03'};
            case 'G18_29'
                BN = {'G029_Number_calculia_01','G029_Number_calculia_02', 'G029_Number_calculia_03'};
            case 'G18_30'
                BN = {'G030_Number_calculia_01','G030_Number_calculia_02', 'G030_Number_calculia_03'};
            case 'G18_31'
                BN = {'G031_Number_calculia_01','G031_Number_calculia_02', 'G031_Number_calculia_03'};
            case 'G19_32'
                BN = {'G032_Number_calculia_01','G032_Number_calculia_02', 'G032_Number_calculia_03'};
            case 'G19_33'
                BN = {'G033_Number_calculia_01','G033_Number_calculia_02', 'G033_Number_calculia_03'};
            case 'G19_34'
                BN = {'G034_Number_calculia_01','G034_Number_calculia_02', 'G033_Number_calculia_03'};
        end
        
    case 'Calculia_letter'
        switch sbj
            case 'G18_20'
                BN = {'G020_calculia_letter_01'};
            case 'G18_21'
                BN = {'G021_letter_01'};
            case 'G18_22'
                BN = {'G022_letter_01'};
            case 'G18_23'
                BN = {'G023_letter_04'};
            case 'G18_24'
                BN = {'G024_letter_04'};
            case 'G18_26'
                BN = {'G026_letter_01'};
            case 'G18_29'
                BN = {'G029_letter_calculia_01'};
            case 'G18_30'
                BN = {'G030_Letter_calculia_01'};
            case 'G18_31'
                BN = {'G031_letter_calculia_01'};
            case 'G19_32'
                BN = {'G032_calculia_letter_01'};
            case 'G19_33'
                BN = {'G033_letter_calculia_01'};
        end
        
    case 'EglyDriver'
        switch sbj
            case 'S18_132_MDC'
                BN = {'E18-975_0036', 'E18-975_0037', 'E18-975_0039'};
                
            case 'S19_134_MJ'
                BN = {'E19-199_0036', 'E19-199_0037', 'E19-199_0038', 'E19-199_0039'};
                
            case 'S19_136_AG'
                BN = {'E19-320_0015', 'E19-320_0019', 'E19-320_0020', 'E19-320_0022', 'E19-320_0023'};
                
            case  'S19_137_AF'
                BN = {'E19-380_0021', 'E19-380_0023', 'E19-380_0024', 'E19-380_0025'};
        end
        
    case 'EglyDriver_stim'
        switch sbj
            case 'S19_139_JRb'
                BN = {'E19-495_0010','E19-495_0011','E19-495_0012'};
            case  'S19_142_EA'
                % BN = {'E19-786_0090','E19-786_0091','E19-786_0092','E19-786_0093'};
                BN = {'E19-786_0090','E19-786_0091','E19-786_0093'}; %TEMPORARY
        end
    case 'race_encoding_simple'
        switch sbj
            case 'C17_21'
                BN = {'S17_021_Race_Block_1_3'};
            case 'C18_29'
                BN = {'RACE_1'};
            case 'S19_145_PC'
                BN = {'E20-194_0036'};
            case 'C18_37'
                BN = {'RACE_1'};
            case 'C18_49'
                BN = {'RACE_1'};
            case 'C19_62'
                BN = {'RACE_1'} ;
        end
    case 'race_recall'
        switch sbj
            case 'C18_37'
                BN = {'RACE_3'};
                BN = {'RACE_3'} 
            case 'C18_29'
                BN = {'RACE_3'} ;
            case 'C19_62'
                BN = {'RACE_3'} ;
    otherwise
        
        BN = nan;
end

if ~exist('BN')
    BN = nan;
else
end

end

