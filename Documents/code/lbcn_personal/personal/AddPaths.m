function AddPaths(user)

if strcmp(user, 'Pedro_iMAC')
    comp_root = sprintf('/Users/pinheirochagas/Pedro/Stanford/code/lbcn_preproc/'); % location of analysis_ECOG folder
    addpath(genpath('/Users/pinheirochagas/Pedro/Stanford/code/iELVis/'))
elseif strcmp(user,'Pedro_NeuroSpin4T')
    comp_root = sprintf('/Users/pinheirochagas/Pedro/Stanford/code/lbcn_preproc/'); % location of analysis_ECOG folder
elseif strcmp(user,'Amy_iMAC')
    comp_root = sprintf('/Users/amydaitch/Dropbox/Code/MATLAB/lbcn_preproc'); 
    addpath(genpath('/Users/amydaitch/Dropbox/Code/MATLAB/iELVis/'))
    addpath(genpath('/Applications/MATLAB_R2016b.app/toolbox/images/'))
elseif strcmp(user,'Ying_iMAC')
    comp_root = sprintf('/Users/yingfang/Documents/toolbox/lbcn_preproc/'); % location of analysis_ECOG folder
elseif strcmp(user,'Clara_iMAC')
    comp_root = sprintf('/Users/csava/Documents/code/lbcn_preproc/'); % location of analysis_ECOG folder
    addpath(genpath('/Users/csava/Documents/code/iELVis/'))
end

addpath(genpath(comp_root))

end

