function trackers = config_tracker()
% config trackers to be evaluated (for RGBNIR)


trackers = { 
    struct('name', 'MAFNet_DiMP', 'publish', '1111')...
    struct('name', 'MAFNet_RT', 'publish', '1111')...  
};

end