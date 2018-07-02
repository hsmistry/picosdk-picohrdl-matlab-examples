function [volts, vMax] = picohrdladc2volts(values, range, maxValue)
% PICOHRDLADC2VOLTS Converts ADC values to volts for PicoLog
% High-Resolution Data Loggers and also provides the maximum voltage for
% the range selected.
%
% values - raw ADC value(s).
% range - the enHRDLRange enumeration corresponding to the voltage range
% in use.
% maxValue - maximum ADC count for the channel.
%
% Copyright © 2018 Pico Technology Ltd. See LICENSE file for terms.

    % Validate input parameters.
    validateattributes(values, {'numeric'}, {'real', 'finite', 'nonnan'});
    validateattributes(range, {'numeric'}, {'scalar', 'nonnegative', 'integer'});
    validateattributes(maxValue, {'numeric'}, {'scalar', 'integer'});
    
    vMax = 2.5 / pow2(range);
    % Convert raw data.
    volts = (double(values) / double(maxAdc)) * vMax;

end