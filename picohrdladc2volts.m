function volts = picohrdladc2volts(values, range, maxValue)
%PL1000ADC2MV Converts milliVolt value to ADC count for PicoLog 1000 series
%   values - raw ADC value(s).
%   range - the enHRDLRange enumeration corresponding to the voltage range
%   in use.
%   maxValue - maximum ADC count for the channel.
%
% Copyright © 2018 Pico Technology Ltd. See LICENSE file for terms.

    % Validate input parameters.
    validateattributes(values, {'numeric'}, {'real', 'finite', 'nonnegative', 'nonnan'});
    validateattributes(maxValue, {'numeric'}, {'scalar', 'integer', 'positive'});
    
    vMax = 2.5 / pow2(range);
    % Convert raw data.
    volts = (double(values) / double(maxAdc)) * vMax;

end