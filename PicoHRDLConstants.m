%% PicoHRDLConstants 
%
% The PicoHRDLConstants class defines a number of constant values,
% including those defined in the HRDL.h header file for use with examples
% for the PicoLog High-Resolution Data Loggers.
%
% Copyright: © 2018 Pico Technology Ltd. See LICENSE file for terms.

classdef PicoHRDLConstants 
    
    properties (Constant)
        
        HRDL_MAX_UNITS = 20;
        
        MODEL_ADC_20 = '20';
        MODEL_ADC_24 = '24';
        
        TRUE = 1;
        FALSE = 0;
        
        % Mains rejection
        MAINS_50_HZ = 0;
        MAINS_60_HZ = 1;
        
        % Define the number of channels
        ADC_20_DIFFERENTIAL_CHANNELS = 4;
        ADC_20_SINGLE_ENDED_CHANNELS = 8;
        
        ADC_24_DIFFERENTIAL_CHANNELS = 8;
        ADC_24_SINGLE_ENDED_CHANNELS = 16;
    end
    
end