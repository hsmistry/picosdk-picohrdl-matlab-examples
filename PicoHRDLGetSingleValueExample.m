%% PicoHRDL Driver MATLAB Example
% This script demonstrates how to call the API functions for the picohrdl
% driver from MATLAB.

%% Clear console and close figures

clc;
close all;

%% Load Configuration Information into Base Workspace

PicoHRDLConfig;

%% Load the library

loadlibrary('picohrdl.dll', @picohrdlMFile);
%libfunctionsview('picohrdl'); % Display library functions

%% Open a connection

handle = calllib('picohrdl', 'HRDLOpenUnit');

if (handle >= 1)
    
    disp(handle);
    
elseif (handle == 0)
   
    error('PicoHRDLExample:NoUnitFound', 'No device found.');
    
else
    
    error('PicoHRDLExample:FailedToOpen', 'Failed to open device.');
    
end

%% Display Unit Information

infoString = blanks(100);

for i = 0:7
    
    [status, infoString1] = calllib('picohrdl', 'HRDLGetUnitInfo', handle, infoString, length(infoString), i);
    disp(infoString1);
    
end

%% Set Mains Noise Rejection to 50Hz

[status] = calllib('picohrdl', 'HRDLSetMains', handle, 0);


%% Get minimum and maximum ADC counts available for the device

minAdcPtr = libpointer('int32Ptr', 0);
maxAdcPtr = libpointer('int32Ptr', 0) ;
channel = picoHRDLEnuminfo.enHRDLInputs.HRDL_ANALOG_IN_CHANNEL_2;

[status] = calllib('picohrdl', 'HRDLGetMinMaxAdcCounts', handle, minAdcPtr, maxAdcPtr, channel);

minAdc = minAdcPtr.Value;
maxAdc = double(maxAdcPtr.Value);

%% Get Single Value

range = picoHRDLEnuminfo.enHRDLRange.HRDL_1250_MV;
conversionTime = picoHRDLEnuminfo.enHRDLConversionTime.HRDL_100MS;
singleEnded = 1;
overflowPtr = libpointer('int16Ptr', 0);
valuePtr = libpointer('int32Ptr', 0);

readings = zeros(10, 1);

for i = 1:length(readings)

    [status] = calllib('picohrdl', 'HRDLGetSingleValue', handle, channel, range, conversionTime, singleEnded, overflowPtr, valuePtr);

    overflow = overflowPtr.Value;
    value = double(valuePtr.Value); % Raw ADC Count

    % Convert value to millivolts
    vMax = 2500 / pow2(range);
    convertedValue = (value / maxAdc) * vMax;
    
    readings(i, 1) = convertedValue;

    pause(0.1); % 100 ms to 
    
end

%% Plot the data

figure;
plot(readings);
title('Voltage vs. Time Plot');
ylim([0 vMax]);
xlabel('Reading');
ylabel('Voltage (mV)');
legend('Channel 2')
grid on;

%% Close the connection

closeStatus = calllib('picohrdl', 'HRDLCloseUnit', handle);

%% Unload the library

unloadlibrary('picohrdl');