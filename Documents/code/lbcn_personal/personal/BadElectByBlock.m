
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
                BN = {'S14_64_SP_12','S14_64_SP_13','S14_64_SP_15'};
                %                 BN = {'S14_64_SP_39','S14_64_SP_40'};
            case 'S14_78_RS'
                BN = {'S14_78_RS_08','S14_78_RS_09','S14_78_RS_10','S14_78_RS_11','S14_78_RS_13','S14_78_RS_15','S14_78_RS_16','S14_78_RS_17'};
            case 'S14_66_CZ'
                BN = {'S14_66_CZ_26','S14_66_CZ_27','S14_66_CZ_29','S14_66_CZ_30','S14_66_CZ_37','S14_66_CZ_38','S14_66_CZ_39','S14_66_CZ_40'};
            case 'S14_80_KB'
                BN = {'S14_80_KB_20','S14_80_KB_22','S14_80_KB_24','S14_80_KB_25','S14_80_KB_26','S14_80_KB_27','S14_80_KB_28','S14_80_KB_29'};
            case 'S15_83_RR'
                BN = {'S15_83_RR_12','S15_83_RR_14','S15_83_RR_16','S15_83_RR_17','S15_83_RR_18','S15_83_RR_20','S15_83_RR_23','S15_83_RR_24'};
            case 'S15_91_RP'
                BN = {'E15_695_0017','E15_695_0018'};
            case 'S15_92_MR'
                BN = {'E15-770_0013','E15-770_0014','E15-770_0019','E15-770_0021','E15-770_0022'};
            case 'S16_94_DR'
                BN = {'E16-168_0020','E16-168_0021','E16-168_0022','E16-168_0023','E16-168_0039'};
            case 'S17_105_TA'
                BN = {'E17-58_0012','E17-58_0013','E17-58_0014'};
            case 'S15_89b_JQ'
                BN = {'E17-152_0025','E17-152_0026','E17-152_0027','E17-152_0028','E17-152_0029','E17-152_0030'};
            otherwise
                BN = [];
        end
        
    case 'Calculia_production'
        switch sbj
            case 'S18_124'
                BN = {'E18-309_0021','E18-309_0022','E18-309_0023','E18-309_0024'};
            case 'S18_126'
                BN = {'E18-602_0010', 'E18-602_0011', 'E18-602_0012'};
            case 'S18_127'
                BN = {'E18-706_0022', 'E18-706_0025', 'E18-706_0026'};
        end
        
    case 'Context'
        switch sbj
            case 'S12_41_KS'
                BN = {'KS_25','KS_26','KS_27','KS_28','KS_29'};
            case 'S12_45_LR'
                BN = {'LR_32','LR_33'};
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
            case 'S17_116'
                %                 BN = {'E17-789_0009','E17-789_0010','E17-789_0019','E17-789_0020','E17-789_0021','E17-789_0026','E17-789_0028'};
                BN = {'E17-789_0009','E17-789_0019','E17-789_0020','E17-789_0021','E17-789_0026','E17-789_0028'};
            case 'S17_118'
                BN = {'E17-910_0009','E17-910_0010','E17-910_0011','E17-910_0012','E17-910_0028','E17-910_0034','E17-910_0053'};
            case 'S18_119'
                BN = {'E18-40_0008','E18-40_0009','E18-40_0010','E18-40_0011','E18-40_0014','E18-40_0015','E18-40_0016','E18-40_0035'};
            case 'S18_123'
                BN = {'E18-274_0001','E18-274_0013','E18-274_0014'};
            case 'S18_124'
                BN = {'E18-309_0009','E18-309_0010','E18-309_0012','E18-309_0013','E18-309_0015','E18-309_0034','E18-309_0035','E18-309_0037'};
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
                switch BN
                    case 
                        
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
                BN = {'DY_06','DY_07'};
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
            case 'S14_69_RT'
                BN = {'S14_69_RT_02'};
            case 'S14_69b_RT'
                BN = {'E17-438_0008','E17-438_0009','E17-438_0010'};
            case 'S14_73_AY'
                BN = {'S14_73_AY_04','S14_73_AY_05'};
            case 'S14_74_OD'
                BN = {'S14_74_OD_02','S14_74_OD_03'};
            case 'S14_76_AA'
                BN = {'S14_76_AA_02','S14_76_AA_03','S14_76_AA_21','S14_76_AA_22'};
            case 'S14_78_RS'
                BN = {'S14_78_RS_02','S14_78_RS_03'};
            case 'S14_78_RSb'
                BN = {'S14_78_RSb_06','S14_78_RSb_07'};
            case 'S14_80_KB'
                BN = {'S14_80_KB_03','S14_80_KB_06'};
            case 'S14_80b_KB'
                BN = {'E17-669_0008'};
            case 'S15_81_RM'
                BN = {'S15_81_RM_03','S15_81_RM_04'};
            case 'S15_82_JB'
                BN = {'S15_82_JB_06','S15_82_JB_07'};
            case 'S15_83_RR'
                BN = {'S15_83_RR_03','S15_83_RR_08'};
            case 'S15_86_KG'
                BN = {'S15_86_KG_02','S15_86_KG_04'};
            case 'S15_87_RL'
                BN = {'E15-282_0005','E15-282_0010'};
            case 'S15_89_JQ'
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
            case 'S17_115'
                BN = {'E17-681_0001','E17-681_0002'};
            case 'S17_116'
                BN = {'E17-789_0003','E17-789_0004'};
            case 'S17_117'
                BN = {'E17-823_0004','E17-823_0005'};
            case 'S17_118_TW'
                BN = {'E17-910_0005','E17-910_0006'};
            case 'S18_119_AG'
                BN = {'E18-40_0005','E18-40_0006'};
            case 'S18_120'
                BN = {'E18-65_0005'};
            case 'S18_122'
                BN = {'E18-226_0005','E18-226_0006'};
            case 'S18_124_JR2'
                BN = {'E18-309_0004','E18-309_0005'};%,
            case 'S18_125'
                BN = {'E18-542_0007','E18-542_0008'};
            case 'S18_126'
                BN = {'E18-602_0017','E18-602_0019'};
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
                BN = {'AC0210_07','AC0210_08'};
            case 'S10_18_JBXa'
                BN = {'JBX1210-01','JBX1210-02'};
            case 'S11_23_MD'
                BN = {'MD0311-01','MD0311-05'};
            case 'S11_20_RHb'
                BN = {'RHb0211-01'};
            case 'S11_26_SRa'
                BN = {'SR-03','SR-10'};
            case 'S11_26_SRb'
                BN = {'SRb-06','SRb-17'};
            case 'S11_28_LS'
                BN = {'LS0911-08'};
            case 'S11_29_RB'
                BN = {'RB0911-02','RB0911-20'};
                %                 BN = {'RB0911-20'};
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
            case 'S15_83_RR'
                BN = {'S15_83_RR_26'};
            case 'S16_95_JOB'
                BN = {'E16-345_0026'};
            otherwise
                BN = [];
        end
    case 'AllCateg'
        switch sbj
            case 'S11_29_RB'
                BN = {'RB0911-17'};
            case 'S12_32_JTa'
                BN = {'JT0112-27'};
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
    case 'ReadNumWord'
        switch sbj
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
                BN = {'S14_64_SP_07','S14_64_SP_08'};
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
            otherwise
                BN = [];
        end
    case 'VTCLoc'
        switch sbj
            case 'S14_64_SP'
                BN = {'S14_64_SP_06'};
            case 'S14_66_CZ'
                BN = {'S14_66_CZ_03'};
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
            otherwise
                BN = [];
        end
    case 'Memoria'
        switch sbj
            case 'S14_69b_RT'
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
            case {'S17_107_JQ','S15_89b_JQ'}
                BN = {'E17-152_0015','E17-152_0016','E17-152_0017','E17-152_0023'};
            case 'S17_107_PR'
                BN = {'E17-237_0013','E17-237_0014','E17-237_0015','E17-237_0016'};
            case 'S17_109_NM'
                BN = {'E17-356_0026','E17-356_0028'};
            case 'S17_110_SC'
                BN = {'E17-394_0012','E17-394_0013','E17-394_0014','E17-394_0015'};
            case 'S17_112_EA'
                BN = {'E17-450_0010','E17-450_0011','E17-450_0012','E17-450_0013'};
            case 'S17_114'
                BN = {'E17-526_0020','E17-526_0021','E17-526_0022'};
            case 'S17_115'
                BN = {'E17-681_0006','E17-681_0007','E17-681_0008','E17-681_0009'};
            case 'S17_116'
                BN = {'E17-789_0011','E17-789_0012','E17-789_0014','E17-789_0015','E17-789_0016'};
            case 'S17_117'
                BN = {'E17-823_0009','E17-823_0010','E17-823_0011','E17-823_0012'};
            case 'S17_118_TW'
                BN = {'E17-910_0015','E17-910_0016','E17-910_0017','E17-910_0018'};
            case 'S18_119'
                BN = {'E18-40_0019','E18-40_0020','E18-40_0021','E18-40_0022'};
            case 'S18_120'
                BN = {'E18-65_0006','E18-65_0007','E18-65_0008','E18-65_0009','E18-65_0010'};
            case 'S18_123'
                BN = {'E18-274_0009','E18-274_0010','E18-274_0011'};
            case 'S18_124_JR2'
                BN = {'E18-309_0017','E18-309_0018','E18-309_0019','E18-309_0020'};
            case 'S18_125'
                BN = {'E18-542_0013','E18-542_0014'};
            case 'S18_126'
                BN = {'E18-602_0003','E18-602_0004','E18-602_0005','E18-602_0006'};
            case 'S18_127'
                BN = {'E18-706_0003','E18-706_0004', 'E18-706_0007','E18-706_0008','E18-706_0011','E18-706_0013'};
            case 'S18_128'
                BN = {'E18-739_0002','E18-739_0003', 'E18-739_0005','E18-739_0006'};
            case 'S18_129'
                BN = {'E18-767_0004', 'E18-767_0016', 'E18-767_0018', 'E18-767_0019'};
            otherwise
                BN = [];
        end
    case 'Memoria_imagine'
        switch sbj
            case 'S17_105_TA'
                BN = {'E17-58_0035'};
        end
        
    case '7Heaven'
        switch sbj
            case 'S17_105_TA'
                BN = {'E17-58_0035'};
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
            case 'S14_69b_RT'
                BN = {'E17-438_0016','E17-438_0017','E17-438_0018','E17-438_0019'};
            case 'S17_107_JQ'
                BN = {'E17-152_0018','E17-152_0020','E17-152_0021','E17-152_0022'};
            case 'S17_116'
                BN = {'E17-789_0017','E17-789_0018','E17-789_0029','E17-789_0030'};
            case 'S18_126'
                BN = {'E18-602_0042','E18-602_0043','E18-602_0044','E18-602_0045'};
            case 'S18_127'
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
                BN = {'G023_calculia_04'};
        end
        
    otherwise
        BN = [];
end

